package com.feelingk.iap;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.net.InAppError;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class PwdActivity extends Activity {
    InputStream btn_pad_sel;
    int buttonHeight;
    EditText et1;
    EditText et2;
    EditText et3;
    Boolean honeyCombFlag;
    InputStream isdelete;
    InputStream iset1;
    Drawable nor;
    Drawable sel;
    String TAG = "PwdActivity";
    private String RES_VERT_FILE_PATH = "/res/";
    private String decryptPwd = null;
    EditText et4 = null;
    TextView pwdText = null;
    Button delete = null;
    int numCheck = 0;
    String inputNum = GameView.CHARACTER_AI;
    Boolean hvga = false;
    int buttonWidth = 0;
    InputStream btn_pad_nor = null;
    Drawable iset = null;
    StateListDrawable oneDrawables = new StateListDrawable();
    StateListDrawable twoDrawables = new StateListDrawable();
    StateListDrawable threeDrawables = new StateListDrawable();
    StateListDrawable fourDrawables = new StateListDrawable();
    StateListDrawable fiveDrawables = new StateListDrawable();
    StateListDrawable sixDrawables = new StateListDrawable();
    StateListDrawable sevenDrawables = new StateListDrawable();
    StateListDrawable eightDrawables = new StateListDrawable();
    StateListDrawable nineDrawables = new StateListDrawable();
    StateListDrawable noneDrawables = new StateListDrawable();
    StateListDrawable zeroDrawables = new StateListDrawable();
    StateListDrawable deleteDrawables = new StateListDrawable();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        this.decryptPwd = intent.getExtras().getString("pwd").toString();
        this.btn_pad_sel = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "btn_pad_sel.png");
        this.btn_pad_nor = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "btn_pad_nor.png");
        this.sel = Drawable.createFromStream(this.btn_pad_sel, "btn_pad_sel");
        this.nor = Drawable.createFromStream(this.btn_pad_nor, "btn_pad_nor");
        this.iset1 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw_dot.png");
        this.iset = Drawable.createFromStream(this.iset1, "inputbox_pw_dot");
        try {
            this.btn_pad_sel.close();
            this.btn_pad_nor.close();
            this.iset1.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.btn_pad_sel = null;
        this.btn_pad_nor = null;
        this.iset1 = null;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int deviceWidth = displayMetrics.widthPixels;
        int deviceHeight = displayMetrics.heightPixels;
        this.buttonWidth = deviceWidth / 4;
        this.buttonHeight = deviceHeight / 4;
        if ((deviceWidth == 320 && deviceHeight == 480) || (deviceWidth == 480 && deviceHeight == 320)) {
            this.hvga = true;
        }
        if (deviceWidth > deviceHeight) {
            this.honeyCombFlag = true;
        } else {
            this.honeyCombFlag = false;
        }
        WindowManager wm = (WindowManager) getSystemService("window");
        Display disp = wm.getDefaultDisplay();
        int rotation = disp.getOrientation();
        CommonF.LOGGER.i(this.TAG, "rotation : " + rotation);
        switch (rotation) {
            case 0:
                CommonF.LOGGER.i(this.TAG, "Portrait : 0");
                if (this.honeyCombFlag.booleanValue()) {
                    viewLandscape();
                } else {
                    viewPortrait();
                }
                break;
            case 1:
                CommonF.LOGGER.i(this.TAG, "Landscape : 90");
                if (!this.honeyCombFlag.booleanValue()) {
                    viewPortrait();
                } else {
                    viewLandscape();
                }
                break;
            case 2:
                CommonF.LOGGER.i(this.TAG, "Portrait : 180");
                if (this.honeyCombFlag.booleanValue()) {
                    viewLandscape();
                } else {
                    viewPortrait();
                }
                break;
            case 3:
                CommonF.LOGGER.i(this.TAG, "Landscape : 270");
                if (!this.honeyCombFlag.booleanValue()) {
                    viewPortrait();
                } else {
                    viewLandscape();
                }
                break;
        }
    }

    public void viewLandscape() {
        LinearLayout.LayoutParams inputBoxParams;
        LinearLayout.LayoutParams inputBoxParams2;
        CommonF.LOGGER.i(this.TAG, "viewLandscape");
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams leftLLParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        linearLayout2.setBackgroundColor(Color.parseColor("#3C3C3C"));
        linearLayout2.setLayoutParams(leftLLParams);
        linearLayout2.setGravity(17);
        linearLayout.addView(linearLayout2);
        ImageView iv = new ImageView(this);
        LinearLayout.LayoutParams ivParams = new LinearLayout.LayoutParams(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 40);
        ivParams.setMargins(0, 25, 0, 20);
        iv.setLayoutParams(ivParams);
        InputStream is = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "logo_pw.png");
        iv.setImageDrawable(Drawable.createFromStream(is, "none"));
        try {
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        linearLayout2.addView(iv);
        this.pwdText = new TextView(this);
        this.pwdText.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        this.pwdText.setGravity(17);
        this.pwdText.setTextSize(1, 15.0f);
        this.pwdText.setTextColor(Color.parseColor("#ffffff"));
        this.pwdText.setText(CommonString.getString(CommonString.Index.T_STORE_INPUT_PASSWORD));
        linearLayout2.addView(this.pwdText);
        LinearLayout line = new LinearLayout(this);
        LinearLayout.LayoutParams lineParams = new LinearLayout.LayoutParams(-1, -2);
        lineParams.setMargins(0, 15, 0, 20);
        line.setLayoutParams(lineParams);
        InputStream is2 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "bg_line.png");
        line.setBackgroundDrawable(Drawable.createFromStream(is2, "none"));
        try {
            is2.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        linearLayout2.addView(line);
        LinearLayout pwd = new LinearLayout(this);
        pwd.setOrientation(0);
        LinearLayout.LayoutParams pwdParams = new LinearLayout.LayoutParams(-1, -2);
        pwdParams.setMargins(5, 0, 5, 0);
        pwd.setGravity(17);
        pwd.setLayoutParams(pwdParams);
        linearLayout2.addView(pwd);
        if (this.hvga.booleanValue()) {
            inputBoxParams = new LinearLayout.LayoutParams(50, 40);
            inputBoxParams2 = new LinearLayout.LayoutParams(50, 40);
            inputBoxParams2.setMargins(15, 0, 0, 0);
        } else {
            inputBoxParams = new LinearLayout.LayoutParams(55, 55);
            inputBoxParams2 = new LinearLayout.LayoutParams(55, 55);
            inputBoxParams2.setMargins(15, 0, 0, 0);
        }
        inputBoxParams2.setMargins(10, 0, 0, 0);
        LinearLayout inputBox1 = new LinearLayout(this);
        inputBox1.setFocusable(true);
        inputBox1.setFocusableInTouchMode(true);
        inputBox1.setGravity(17);
        InputStream is3 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox1.setBackgroundDrawable(Drawable.createFromStream(is3, "none"));
        try {
            is3.close();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        inputBox1.setLayoutParams(inputBoxParams);
        pwd.addView(inputBox1);
        this.et1 = new EditText(this);
        this.et1.setImeOptions(268435456);
        this.et1.setGravity(17);
        this.et1.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et1.setBackgroundDrawable(null);
        inputBox1.addView(this.et1);
        LinearLayout inputBox2 = new LinearLayout(this);
        inputBox2.setFocusable(true);
        inputBox2.setFocusableInTouchMode(true);
        inputBox2.setGravity(17);
        InputStream is4 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox2.setBackgroundDrawable(Drawable.createFromStream(is4, "none"));
        try {
            is4.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        inputBox2.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox2);
        this.et2 = new EditText(this);
        this.et2.setImeOptions(268435456);
        this.et2.setGravity(17);
        this.et2.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et2.setBackgroundDrawable(null);
        inputBox2.addView(this.et2);
        LinearLayout inputBox3 = new LinearLayout(this);
        inputBox3.setFocusable(true);
        inputBox3.setFocusableInTouchMode(true);
        inputBox3.setGravity(17);
        InputStream is5 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox3.setBackgroundDrawable(Drawable.createFromStream(is5, "none"));
        try {
            is5.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        inputBox3.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox3);
        this.et3 = new EditText(this);
        this.et3.setImeOptions(268435456);
        this.et3.setGravity(17);
        this.et3.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et3.setBackgroundDrawable(null);
        inputBox3.addView(this.et3);
        LinearLayout inputBox4 = new LinearLayout(this);
        inputBox4.setFocusable(true);
        inputBox4.setFocusableInTouchMode(true);
        inputBox4.setGravity(17);
        InputStream is6 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox4.setBackgroundDrawable(Drawable.createFromStream(is6, "none"));
        try {
            is6.close();
        } catch (IOException e6) {
            e6.printStackTrace();
        }
        inputBox4.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox4);
        this.et4 = new EditText(this);
        this.et4.setImeOptions(268435456);
        this.et4.setGravity(17);
        this.et4.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et4.setBackgroundDrawable(null);
        inputBox4.addView(this.et4);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        LinearLayout.LayoutParams rightLLParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        linearLayout3.setBackgroundColor(Color.parseColor("#212121"));
        rightLLParams.setMargins(2, 0, 2, 0);
        linearLayout3.setLayoutParams(rightLLParams);
        linearLayout3.setGravity(17);
        linearLayout.addView(linearLayout3);
        this.oneDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.oneDrawables.addState(new int[0], this.nor);
        this.twoDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.twoDrawables.addState(new int[0], this.nor);
        this.threeDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.threeDrawables.addState(new int[0], this.nor);
        this.fourDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.fourDrawables.addState(new int[0], this.nor);
        this.fiveDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.fiveDrawables.addState(new int[0], this.nor);
        this.sixDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.sixDrawables.addState(new int[0], this.nor);
        this.sevenDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.sevenDrawables.addState(new int[0], this.nor);
        this.eightDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.eightDrawables.addState(new int[0], this.nor);
        this.nineDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.nineDrawables.addState(new int[0], this.nor);
        this.noneDrawables.addState(new int[0], this.nor);
        this.zeroDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.zeroDrawables.addState(new int[0], this.nor);
        this.deleteDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.deleteDrawables.addState(new int[0], this.nor);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(1);
        LinearLayout.LayoutParams keyPadParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout4.setGravity(17);
        linearLayout4.setBackgroundColor(Color.parseColor("#212121"));
        linearLayout4.setLayoutParams(keyPadParams);
        linearLayout3.addView(linearLayout4);
        LinearLayout buttonRow1 = new LinearLayout(this);
        buttonRow1.setOrientation(0);
        LinearLayout.LayoutParams buttonRowParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        buttonRowParams.topMargin = 5;
        buttonRow1.setGravity(17);
        buttonRow1.setLayoutParams(buttonRowParams);
        linearLayout4.addView(buttonRow1);
        LinearLayout.LayoutParams numTopParams = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0f);
        numTopParams.topMargin = 1;
        LinearLayout.LayoutParams numParams = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0f);
        numParams.topMargin = 1;
        Button one = new Button(this);
        one.setBackgroundDrawable(this.oneDrawables);
        one.setGravity(17);
        one.setText(InAppError.FAILED);
        one.setTextSize(1, 30.0f);
        one.setTextColor(Color.parseColor("#ffffff"));
        one.setLayoutParams(numTopParams);
        buttonRow1.addView(one);
        Button two = new Button(this);
        two.setBackgroundDrawable(this.twoDrawables);
        two.setGravity(17);
        two.setText("2");
        two.setTextSize(1, 30.0f);
        two.setTextColor(Color.parseColor("#ffffff"));
        two.setLayoutParams(numTopParams);
        buttonRow1.addView(two);
        Button three = new Button(this);
        three.setBackgroundDrawable(this.threeDrawables);
        three.setGravity(17);
        three.setText("3");
        three.setTextSize(1, 30.0f);
        three.setTextColor(Color.parseColor("#ffffff"));
        three.setLayoutParams(numTopParams);
        buttonRow1.addView(three);
        LinearLayout buttonRow2 = new LinearLayout(this);
        buttonRow2.setOrientation(0);
        buttonRow2.setGravity(17);
        buttonRow2.setLayoutParams(buttonRowParams);
        linearLayout4.addView(buttonRow2);
        Button four = new Button(this);
        four.setBackgroundDrawable(this.fourDrawables);
        four.setGravity(17);
        four.setText("4");
        four.setTextSize(1, 30.0f);
        four.setTextColor(Color.parseColor("#ffffff"));
        four.setLayoutParams(numParams);
        buttonRow2.addView(four);
        Button five = new Button(this);
        five.setBackgroundDrawable(this.fiveDrawables);
        five.setGravity(17);
        five.setText("5");
        five.setTextSize(1, 30.0f);
        five.setTextColor(Color.parseColor("#ffffff"));
        five.setLayoutParams(numParams);
        buttonRow2.addView(five);
        Button six = new Button(this);
        six.setBackgroundDrawable(this.sixDrawables);
        six.setGravity(17);
        six.setText("6");
        six.setTextSize(1, 30.0f);
        six.setTextColor(Color.parseColor("#ffffff"));
        six.setLayoutParams(numParams);
        buttonRow2.addView(six);
        LinearLayout buttonRow3 = new LinearLayout(this);
        buttonRow3.setOrientation(0);
        buttonRow3.setGravity(17);
        buttonRow3.setLayoutParams(buttonRowParams);
        linearLayout4.addView(buttonRow3);
        Button seven = new Button(this);
        seven.setBackgroundDrawable(this.sevenDrawables);
        seven.setGravity(17);
        seven.setText("7");
        seven.setTextSize(1, 30.0f);
        seven.setTextColor(Color.parseColor("#ffffff"));
        seven.setLayoutParams(numParams);
        buttonRow3.addView(seven);
        Button eight = new Button(this);
        eight.setBackgroundDrawable(this.eightDrawables);
        eight.setGravity(17);
        eight.setText("8");
        eight.setTextSize(1, 30.0f);
        eight.setTextColor(Color.parseColor("#ffffff"));
        eight.setLayoutParams(numParams);
        buttonRow3.addView(eight);
        Button nine = new Button(this);
        nine.setBackgroundDrawable(this.nineDrawables);
        nine.setGravity(17);
        nine.setText("9");
        nine.setTextSize(1, 30.0f);
        nine.setTextColor(Color.parseColor("#ffffff"));
        nine.setLayoutParams(numParams);
        buttonRow3.addView(nine);
        LinearLayout buttonRow4 = new LinearLayout(this);
        buttonRow4.setOrientation(0);
        buttonRow4.setGravity(17);
        buttonRow4.setLayoutParams(buttonRowParams);
        linearLayout4.addView(buttonRow4);
        Button none = new Button(this);
        none.setBackgroundDrawable(this.noneDrawables);
        none.setLayoutParams(numParams);
        buttonRow4.addView(none);
        Button zero = new Button(this);
        zero.setBackgroundDrawable(this.zeroDrawables);
        zero.setGravity(17);
        zero.setText(InAppError.SUCCESS);
        zero.setTextSize(1, 30.0f);
        zero.setTextColor(Color.parseColor("#ffffff"));
        zero.setLayoutParams(numParams);
        buttonRow4.addView(zero);
        this.delete = new Button(this);
        this.delete.setBackgroundDrawable(this.deleteDrawables);
        this.delete.setGravity(17);
        this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
        this.delete.setTextSize(1, 20.0f);
        this.delete.setTextColor(Color.parseColor("#ffffff"));
        this.delete.setLayoutParams(numParams);
        buttonRow4.addView(this.delete);
        setContentView(linearLayout);
        one.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + InAppError.FAILED;
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        two.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "2";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        three.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "3";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        four.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "4";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        five.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "5";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        six.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "6";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        seven.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "7";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        eight.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "8";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        nine.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "9";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        zero.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + InAppError.SUCCESS;
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        this.delete.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck == 1) {
                    PwdActivity.this.delete.setBackgroundDrawable(null);
                    PwdActivity.this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                }
                if (PwdActivity.this.numCheck > 0) {
                    PwdActivity.this.inputNum = PwdActivity.this.inputNum.substring(0, PwdActivity.this.numCheck - 1);
                    if (PwdActivity.this.numCheck == 1) {
                        PwdActivity.this.et1.setBackgroundDrawable(null);
                        PwdActivity.this.delete.setBackgroundDrawable(PwdActivity.this.deleteDrawables);
                        PwdActivity.this.delete.setCompoundDrawables(null, null, null, null);
                    }
                    if (PwdActivity.this.numCheck == 2) {
                        PwdActivity.this.et2.setBackgroundDrawable(null);
                    }
                    if (PwdActivity.this.numCheck == 3) {
                        PwdActivity.this.et3.setBackgroundDrawable(null);
                    }
                    if (PwdActivity.this.numCheck == 4) {
                        PwdActivity.this.et4.setBackgroundDrawable(null);
                    }
                }
                if (PwdActivity.this.numCheck == 0) {
                    PwdActivity.this.finish();
                }
                PwdActivity pwdActivity = PwdActivity.this;
                pwdActivity.numCheck--;
            }
        });
    }

    public void viewPortrait() {
        LinearLayout.LayoutParams inputBoxParams;
        LinearLayout.LayoutParams inputBoxParams2;
        CommonF.LOGGER.i(this.TAG, "viewPortrait");
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.parseColor("#3C3C3C"));
        linearLayout.setGravity(17);
        LinearLayout linearLayout2 = new LinearLayout(this);
        LinearLayout.LayoutParams topParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        linearLayout2.setLayoutParams(topParams);
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2);
        ImageView iv = new ImageView(this);
        LinearLayout.LayoutParams ivParams = new LinearLayout.LayoutParams(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 40);
        ivParams.setMargins(0, 25, 0, 20);
        ivParams.gravity = 17;
        iv.setLayoutParams(ivParams);
        InputStream is = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "logo_pw.png");
        iv.setImageDrawable(Drawable.createFromStream(is, "none"));
        try {
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        linearLayout2.addView(iv);
        this.pwdText = new TextView(this);
        this.pwdText.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        this.pwdText.setGravity(17);
        this.pwdText.setTextSize(1, 15.0f);
        this.pwdText.setTextColor(Color.parseColor("#ffffff"));
        this.pwdText.setText(CommonString.getString(CommonString.Index.T_STORE_INPUT_PASSWORD));
        linearLayout2.addView(this.pwdText);
        LinearLayout line = new LinearLayout(this);
        LinearLayout.LayoutParams lineParams = new LinearLayout.LayoutParams(-1, -2);
        lineParams.setMargins(0, 15, 0, 20);
        line.setLayoutParams(lineParams);
        InputStream is2 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "bg_line.png");
        line.setBackgroundDrawable(Drawable.createFromStream(is2, "none"));
        try {
            is2.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        linearLayout2.addView(line);
        LinearLayout pwd = new LinearLayout(this);
        pwd.setOrientation(0);
        LinearLayout.LayoutParams pwdParams = new LinearLayout.LayoutParams(-1, -2);
        pwdParams.setMargins(0, 0, 0, 15);
        pwd.setGravity(17);
        pwd.setLayoutParams(pwdParams);
        linearLayout2.addView(pwd);
        if (this.hvga.booleanValue()) {
            inputBoxParams = new LinearLayout.LayoutParams(50, 40);
            inputBoxParams2 = new LinearLayout.LayoutParams(50, 40);
            inputBoxParams2.setMargins(15, 0, 0, 0);
        } else {
            inputBoxParams = new LinearLayout.LayoutParams(60, 55);
            inputBoxParams2 = new LinearLayout.LayoutParams(60, 55);
            inputBoxParams2.setMargins(15, 0, 0, 0);
        }
        LinearLayout inputBox1 = new LinearLayout(this);
        inputBox1.setFocusable(true);
        inputBox1.setFocusableInTouchMode(true);
        inputBox1.setGravity(17);
        InputStream is3 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox1.setBackgroundDrawable(Drawable.createFromStream(is3, "none"));
        try {
            is3.close();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        inputBox1.setLayoutParams(inputBoxParams);
        pwd.addView(inputBox1);
        this.et1 = new EditText(this);
        this.et1.setImeOptions(268435456);
        this.et1.setGravity(17);
        this.et1.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et1.setBackgroundDrawable(null);
        inputBox1.addView(this.et1);
        LinearLayout inputBox2 = new LinearLayout(this);
        inputBox2.setFocusable(true);
        inputBox2.setFocusableInTouchMode(true);
        inputBox2.setGravity(17);
        InputStream is4 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox2.setBackgroundDrawable(Drawable.createFromStream(is4, "none"));
        try {
            is4.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        inputBox2.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox2);
        this.et2 = new EditText(this);
        this.et2.setImeOptions(268435456);
        this.et2.setGravity(17);
        this.et2.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et2.setBackgroundDrawable(null);
        inputBox2.addView(this.et2);
        LinearLayout inputBox3 = new LinearLayout(this);
        inputBox3.setFocusable(true);
        inputBox3.setFocusableInTouchMode(true);
        inputBox3.setGravity(17);
        InputStream is5 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox3.setBackgroundDrawable(Drawable.createFromStream(is5, "none"));
        try {
            is5.close();
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        inputBox3.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox3);
        this.et3 = new EditText(this);
        this.et3.setImeOptions(268435456);
        this.et3.setGravity(17);
        this.et3.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et3.setBackgroundDrawable(null);
        inputBox3.addView(this.et3);
        LinearLayout inputBox4 = new LinearLayout(this);
        inputBox4.setFocusable(true);
        inputBox4.setFocusableInTouchMode(true);
        inputBox4.setGravity(17);
        InputStream is6 = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "inputbox_pw.png");
        inputBox4.setBackgroundDrawable(Drawable.createFromStream(is6, "none"));
        try {
            is6.close();
        } catch (IOException e6) {
            e6.printStackTrace();
        }
        inputBox4.setLayoutParams(inputBoxParams2);
        pwd.addView(inputBox4);
        this.et4 = new EditText(this);
        this.et4.setImeOptions(268435456);
        this.et4.setGravity(17);
        this.et4.setLayoutParams(new ViewGroup.LayoutParams(20, 20));
        this.et4.setBackgroundDrawable(null);
        inputBox4.addView(this.et4);
        this.oneDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.oneDrawables.addState(new int[0], this.nor);
        this.twoDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.twoDrawables.addState(new int[0], this.nor);
        this.threeDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.threeDrawables.addState(new int[0], this.nor);
        this.fourDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.fourDrawables.addState(new int[0], this.nor);
        this.fiveDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.fiveDrawables.addState(new int[0], this.nor);
        this.sixDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.sixDrawables.addState(new int[0], this.nor);
        this.sevenDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.sevenDrawables.addState(new int[0], this.nor);
        this.eightDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.eightDrawables.addState(new int[0], this.nor);
        this.nineDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.nineDrawables.addState(new int[0], this.nor);
        this.noneDrawables.addState(new int[0], this.nor);
        this.zeroDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.zeroDrawables.addState(new int[0], this.nor);
        this.deleteDrawables.addState(new int[]{R.attr.state_pressed}, this.sel);
        this.deleteDrawables.addState(new int[0], this.nor);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        LinearLayout.LayoutParams keyPadParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        linearLayout3.setGravity(17);
        linearLayout3.setBackgroundColor(Color.parseColor("#212121"));
        linearLayout3.setLayoutParams(keyPadParams);
        linearLayout.addView(linearLayout3);
        LinearLayout buttonRow1 = new LinearLayout(this);
        buttonRow1.setOrientation(0);
        LinearLayout.LayoutParams buttonRowParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        buttonRowParams.topMargin = 5;
        buttonRow1.setGravity(17);
        buttonRow1.setLayoutParams(buttonRowParams);
        linearLayout3.addView(buttonRow1);
        LinearLayout.LayoutParams numTopParams = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0f);
        numTopParams.topMargin = 1;
        LinearLayout.LayoutParams numParams = new LinearLayout.LayoutParams(0, this.buttonWidth - 20, 1.0f);
        numParams.topMargin = 1;
        Button one = new Button(this);
        one.setBackgroundDrawable(this.oneDrawables);
        one.setGravity(17);
        one.setText(InAppError.FAILED);
        one.setTextSize(1, 30.0f);
        one.setTextColor(Color.parseColor("#ffffff"));
        one.setLayoutParams(numTopParams);
        buttonRow1.addView(one);
        Button two = new Button(this);
        two.setBackgroundDrawable(this.twoDrawables);
        two.setGravity(17);
        two.setText("2");
        two.setTextSize(1, 30.0f);
        two.setTextColor(Color.parseColor("#ffffff"));
        two.setLayoutParams(numTopParams);
        buttonRow1.addView(two);
        Button three = new Button(this);
        three.setBackgroundDrawable(this.threeDrawables);
        three.setGravity(17);
        three.setText("3");
        three.setTextSize(1, 30.0f);
        three.setTextColor(Color.parseColor("#ffffff"));
        three.setLayoutParams(numTopParams);
        buttonRow1.addView(three);
        LinearLayout buttonRow2 = new LinearLayout(this);
        buttonRow2.setOrientation(0);
        buttonRow2.setGravity(17);
        buttonRow2.setLayoutParams(buttonRowParams);
        linearLayout3.addView(buttonRow2);
        Button four = new Button(this);
        four.setBackgroundDrawable(this.fourDrawables);
        four.setGravity(17);
        four.setText("4");
        four.setTextSize(1, 30.0f);
        four.setTextColor(Color.parseColor("#ffffff"));
        four.setLayoutParams(numParams);
        buttonRow2.addView(four);
        Button five = new Button(this);
        five.setBackgroundDrawable(this.fiveDrawables);
        five.setGravity(17);
        five.setText("5");
        five.setTextSize(1, 30.0f);
        five.setTextColor(Color.parseColor("#ffffff"));
        five.setLayoutParams(numParams);
        buttonRow2.addView(five);
        Button six = new Button(this);
        six.setBackgroundDrawable(this.sixDrawables);
        six.setGravity(17);
        six.setText("6");
        six.setTextSize(1, 30.0f);
        six.setTextColor(Color.parseColor("#ffffff"));
        six.setLayoutParams(numParams);
        buttonRow2.addView(six);
        LinearLayout buttonRow3 = new LinearLayout(this);
        buttonRow3.setOrientation(0);
        buttonRow3.setGravity(17);
        buttonRow3.setLayoutParams(buttonRowParams);
        linearLayout3.addView(buttonRow3);
        Button seven = new Button(this);
        seven.setBackgroundDrawable(this.sevenDrawables);
        seven.setGravity(17);
        seven.setText("7");
        seven.setTextSize(1, 30.0f);
        seven.setTextColor(Color.parseColor("#ffffff"));
        seven.setLayoutParams(numParams);
        buttonRow3.addView(seven);
        Button eight = new Button(this);
        eight.setBackgroundDrawable(this.eightDrawables);
        eight.setGravity(17);
        eight.setText("8");
        eight.setTextSize(1, 30.0f);
        eight.setTextColor(Color.parseColor("#ffffff"));
        eight.setLayoutParams(numParams);
        buttonRow3.addView(eight);
        Button nine = new Button(this);
        nine.setBackgroundDrawable(this.nineDrawables);
        nine.setGravity(17);
        nine.setText("9");
        nine.setTextSize(1, 30.0f);
        nine.setTextColor(Color.parseColor("#ffffff"));
        nine.setLayoutParams(numParams);
        buttonRow3.addView(nine);
        LinearLayout buttonRow4 = new LinearLayout(this);
        buttonRow4.setOrientation(0);
        buttonRow4.setGravity(17);
        buttonRow4.setLayoutParams(buttonRowParams);
        linearLayout3.addView(buttonRow4);
        Button none = new Button(this);
        none.setBackgroundDrawable(this.noneDrawables);
        none.setLayoutParams(numParams);
        buttonRow4.addView(none);
        Button zero = new Button(this);
        zero.setBackgroundDrawable(this.zeroDrawables);
        zero.setGravity(17);
        zero.setText(InAppError.SUCCESS);
        zero.setTextSize(1, 30.0f);
        zero.setTextColor(Color.parseColor("#ffffff"));
        zero.setLayoutParams(numParams);
        buttonRow4.addView(zero);
        this.delete = new Button(this);
        this.delete.setBackgroundDrawable(this.deleteDrawables);
        this.delete.setGravity(17);
        this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
        this.delete.setTextSize(1, 20.0f);
        this.delete.setTextColor(Color.parseColor("#ffffff"));
        this.delete.setLayoutParams(numParams);
        buttonRow4.addView(this.delete);
        setContentView(linearLayout);
        one.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + InAppError.FAILED;
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        two.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "2";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        three.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "3";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        four.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "4";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        five.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "5";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        six.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "6";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        seven.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "7";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        eight.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "8";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        nine.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + "9";
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        zero.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck < 4) {
                    PwdActivity.this.numCheck++;
                    PwdActivity.this.checkDot();
                    PwdActivity pwdActivity = PwdActivity.this;
                    pwdActivity.inputNum = String.valueOf(pwdActivity.inputNum) + InAppError.SUCCESS;
                }
                if (PwdActivity.this.inputNum.length() == 4) {
                    PwdActivity.this.checkInputNum();
                }
            }
        });
        this.delete.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.PwdActivity.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (PwdActivity.this.numCheck == 1) {
                    PwdActivity.this.delete.setBackgroundDrawable(null);
                    PwdActivity.this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
                }
                if (PwdActivity.this.numCheck > 0) {
                    PwdActivity.this.inputNum = PwdActivity.this.inputNum.substring(0, PwdActivity.this.numCheck - 1);
                    if (PwdActivity.this.numCheck == 1) {
                        PwdActivity.this.et1.setBackgroundDrawable(null);
                        PwdActivity.this.delete.setBackgroundDrawable(PwdActivity.this.deleteDrawables);
                        PwdActivity.this.delete.setCompoundDrawables(null, null, null, null);
                    }
                    if (PwdActivity.this.numCheck == 2) {
                        PwdActivity.this.et2.setBackgroundDrawable(null);
                    }
                    if (PwdActivity.this.numCheck == 3) {
                        PwdActivity.this.et3.setBackgroundDrawable(null);
                    }
                    if (PwdActivity.this.numCheck == 4) {
                        PwdActivity.this.et4.setBackgroundDrawable(null);
                    }
                }
                if (PwdActivity.this.numCheck == 0) {
                    PwdActivity.this.finish();
                }
                PwdActivity pwdActivity = PwdActivity.this;
                pwdActivity.numCheck--;
            }
        });
    }

    public void checkDot() {
        if (this.numCheck != 0) {
            this.delete.setText(GameView.CHARACTER_AI);
            InputStream back = getClass().getResourceAsStream(String.valueOf(this.RES_VERT_FILE_PATH) + "keypad_back.png");
            Drawable icon = Drawable.createFromStream(back, "none");
            try {
                back.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            icon.setBounds(30, 2, icon.getIntrinsicWidth() + 15, icon.getIntrinsicHeight() - 7);
            this.delete.setCompoundDrawables(icon, null, null, null);
        }
        if (this.numCheck == 1) {
            this.et1.setBackgroundDrawable(this.iset);
            return;
        }
        if (this.numCheck == 2) {
            this.et2.setBackgroundDrawable(this.iset);
        } else if (this.numCheck == 3) {
            this.et3.setBackgroundDrawable(this.iset);
        } else if (this.numCheck == 4) {
            this.et4.setBackgroundDrawable(this.iset);
        }
    }

    public void checkInputNum() {
        CommonF.LOGGER.e(this.TAG, "checkInputNum 들어옴");
        if (this.decryptPwd.equals(this.inputNum)) {
            CommonF.LOGGER.e(this.TAG, "비밀번호 일치");
            if (this.inputNum.equals(this.decryptPwd)) {
                Intent intent2 = new Intent(this, (Class<?>) IAPActivity.class);
                intent2.putExtra("result", this.decryptPwd);
                setResult(-1, intent2);
            }
            finish();
            return;
        }
        CommonF.LOGGER.e(this.TAG, "패스워드 에러");
        this.pwdText.setText(CommonString.getString(CommonString.Index.RETRY_ENTER_PASSWORD));
        this.numCheck = 0;
        this.inputNum = GameView.CHARACTER_AI;
        this.et1.setBackgroundDrawable(null);
        this.et2.setBackgroundDrawable(null);
        this.et3.setBackgroundDrawable(null);
        this.et4.setBackgroundDrawable(null);
        this.delete.setCompoundDrawables(null, null, null, null);
        this.delete.setBackgroundDrawable(this.deleteDrawables);
        this.delete.setText(CommonString.getString(CommonString.Index.CANCEL));
    }
}
