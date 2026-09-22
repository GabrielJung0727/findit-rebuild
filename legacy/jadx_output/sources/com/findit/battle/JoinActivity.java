package com.findit.battle;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.findit.battle.Objects;
import com.findit.battle.finals.LOG;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JoinActivity extends Activity {
    private static final String AUTOLOGIN_OFF = "off";
    private static final String AUTOLOGIN_ON = "on";
    public static final String FACEBOOKID_PASSWORD = "facebook";
    private static final String JSON_NAME_COUNT = "count";
    private static final String JSON_NAME_IMAGES = "images";
    private static final String JSON_NAME_RESULT = "result";
    private static final String JSON_VALUE_RESULT_ALREADYID = "910";
    private static final String JSON_VALUE_RESULT_OVERLAPID = "901";
    private static final String JSON_VALUE_RESULT_PARAMETERERROR = "999";
    private static final String JSON_VALUE_RESULT_PASS = "000";
    public static final String KEY_DISPLAYHEIGHT = "displayheight";
    public static final String KEY_DISPLAYWIDTH = "displaywidth";
    public static final String KEY_USERID = "userid";
    private static final String PARAMETER_CHARATER = "userCharacter";
    private static final String PARAMETER_DEVICE = "userDevice";
    private static final String PARAMETER_ID = "userId";
    private static final String PARAMETER_NICKNAME = "userNick";
    private static final String PARAMETER_PASSWORD = "userPass";
    private static final String SERVER_DOMAIN = "http://14.63.220.39/";
    private static final String SERVER_FILE_JOIN = "app/member/join.json";
    private ImageView mAutoLoginImageView;
    private int mButtonClickSize;
    private float mCharacterBgWidth;
    private int mCharacterNum;
    private ImageView[] mCharacterOutlineImageViews;
    private int mCharacterTotalNum;
    private int mCharacterWidth;
    private HorizontalScrollView mCharactersScrollView;
    private CommonDialog mCommonDlg;
    private ConnectNetwork mConnectNetwork;
    private DBAdapter mDbhelper;
    private EditText mEmailEditText;
    private String mFacebookUserId;
    private EditText mIdentifyPasswordEditText;
    private EditText mNicknameEditText;
    private EditText mPasswordEditText;
    private boolean mRun;
    public Handler mJoinResultHandler = new Handler() { // from class: com.findit.battle.JoinActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            String email;
            String password;
            String tag;
            LOG.verbose(">> handleMessage()");
            JoinActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (!value) {
                JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkerror_join);
                return;
            }
            JSONObject jsonobject = JoinActivity.this.mConnectNetwork.getJSONObject();
            try {
                String result = jsonobject.getString("result");
                if (result == null) {
                    JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[0]");
                    return;
                }
                LOG.error("mJoinResultHandler result: " + result);
                if (result.equals("000")) {
                    if (JoinActivity.this.mFacebookUserId != null) {
                        email = JoinActivity.this.mFacebookUserId;
                        password = JoinActivity.FACEBOOKID_PASSWORD;
                    } else {
                        EditText edittext = (EditText) JoinActivity.this.findViewById(R.id.EmailEditText);
                        email = edittext.getText().toString();
                        EditText edittext2 = (EditText) JoinActivity.this.findViewById(R.id.PasswordEditText);
                        password = edittext2.getText().toString();
                    }
                    if (email != null && password != null && (tag = JoinActivity.this.mAutoLoginImageView.getTag().toString()) != null) {
                        JoinActivity.this.mDbhelper.updateSettingLogin(0L, email, password, tag.equals(JoinActivity.AUTOLOGIN_ON));
                        LOG.error("autologin: " + tag.equals(JoinActivity.AUTOLOGIN_ON));
                        EditText edittext3 = (EditText) JoinActivity.this.findViewById(R.id.NicknameEditText);
                        String name = edittext3.getText().toString();
                        JoinActivity.this.saveCharacter(name, JoinActivity.this.mCharacterNum);
                    }
                    JoinActivity.this.finish();
                    JoinActivity.this.overridePendingTransition(R.anim.move_lock, R.anim.move_up);
                    return;
                }
                if (result.equals(JoinActivity.JSON_VALUE_RESULT_ALREADYID)) {
                    JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_alreadyid);
                } else if (result.equals(JoinActivity.JSON_VALUE_RESULT_PARAMETERERROR)) {
                    JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[2]");
                }
            } catch (JSONException e) {
                JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[1]");
            }
        }
    };
    public Handler mCheckIdResultHandler = new Handler() { // from class: com.findit.battle.JoinActivity.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            LOG.verbose(">> handleMessage()");
            JoinActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (!value) {
                JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkerror_join);
                return;
            }
            JSONObject jsonobject = JoinActivity.this.mConnectNetwork.getJSONObject();
            try {
                String result = jsonobject.getString("result");
                if (result == null) {
                    JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[0]");
                } else {
                    LOG.error("result: " + result);
                    if (result.equals("000")) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_useableid);
                    } else if (result.equals(JoinActivity.JSON_VALUE_RESULT_OVERLAPID)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_alreadyid);
                    } else if (result.equals(JoinActivity.JSON_VALUE_RESULT_PARAMETERERROR)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[2]");
                    }
                }
            } catch (JSONException e) {
                JoinActivity.this.mCommonDlg.showNoticeDlg(JoinActivity.this, R.string.notice_msg_networkerror_join, "[1]");
            }
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.findit.battle.JoinActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LOG.verbose(">> onReceive()");
            LOG.error("onReceive");
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LOG.verbose(">> onCreate()");
        requestWindowFeature(1);
        setContentView(R.layout.join);
        setVolumeControlStream(3);
        this.mCommonDlg = new CommonDialog(this);
        this.mEmailEditText = (EditText) findViewById(R.id.EmailEditText);
        this.mPasswordEditText = (EditText) findViewById(R.id.PasswordEditText);
        this.mIdentifyPasswordEditText = (EditText) findViewById(R.id.IdentifyPasswordEditText);
        this.mNicknameEditText = (EditText) findViewById(R.id.NicknameEditText);
        this.mAutoLoginImageView = (ImageView) findViewById(R.id.AutoLoginCheckImageView);
        this.mButtonClickSize = (int) getResources().getDimension(R.dimen.buttonclick_size);
        Button button = (Button) findViewById(R.id.JoinButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.JoinActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                String nickname = JoinActivity.this.mNicknameEditText.getText().toString();
                if (JoinActivity.this.mFacebookUserId == null) {
                    String email = JoinActivity.this.mEmailEditText.getText().toString();
                    String password = JoinActivity.this.mPasswordEditText.getText().toString();
                    String identifypassword = JoinActivity.this.mIdentifyPasswordEditText.getText().toString();
                    if (email == null || (email != null && email.length() < 1)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_notid);
                        return;
                    }
                    if (password == null || (password != null && password.length() < 1)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_notpasswd);
                        return;
                    }
                    if (password.length() < 4 || password.length() > 12) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_rewirtepasswd);
                        return;
                    }
                    if (!password.equals(identifypassword)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_nomatchpasswd);
                        return;
                    }
                    int index = email.indexOf("@");
                    if (index == -1 || (index > -1 && email.substring(index).indexOf(".") == -1)) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_noemailtype);
                        return;
                    }
                    int length = nickname.getBytes().length;
                    if (length <= 0 || length >= 25) {
                        JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_nicknamelength);
                        return;
                    } else {
                        JoinActivity.this.join(email, password, JoinActivity.this.mCharacterNum, nickname);
                        return;
                    }
                }
                int length2 = nickname.getBytes().length;
                if (length2 <= 0 || length2 >= 25) {
                    JoinActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_nicknamelength);
                } else {
                    JoinActivity.this.join(JoinActivity.this.mFacebookUserId, JoinActivity.FACEBOOKID_PASSWORD, JoinActivity.this.mCharacterNum, nickname);
                }
            }
        });
        button.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.JoinActivity.5
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                int size = JoinActivity.this.mButtonClickSize;
                switch (event.getAction()) {
                    case 0:
                        JoinActivity.this.setMargin(v, size, 0, size, 0);
                        return false;
                    case 1:
                        JoinActivity.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                    case 2:
                    default:
                        return false;
                    case 3:
                        JoinActivity.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                }
            }
        });
        this.mFacebookUserId = null;
        Bundle extra = getIntent().getExtras();
        if (extra != null) {
            String userid = extra.getString(KEY_USERID);
            if (userid != null) {
                this.mFacebookUserId = userid;
                this.mEmailEditText.setEnabled(false);
                this.mPasswordEditText.setEnabled(false);
                this.mIdentifyPasswordEditText.setEnabled(false);
            }
            int[] id = Objects.mCharacterDatas[0].mJoinImgIds;
            String[] path = Objects.mCharacterDatas[2].mJoinImgPaths;
            if (id != null && path != null) {
                setCharacterHorizontalListView(id, path, Objects.mCharacterDatas[2].mTotalnum, extra.getInt("displaywidth"), extra.getInt("displayheight"));
            }
        }
        this.mCharacterNum = 0;
        ImageView imageview = (ImageView) findViewById(R.id.ArrowImageView);
        imageview.startAnimation(AnimationUtils.loadAnimation(this, R.anim.repeat_move_updown));
        LinearLayout layout = (LinearLayout) findViewById(R.id.AutoLoginLayout);
        layout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.JoinActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                String tag = JoinActivity.this.mAutoLoginImageView.getTag().toString();
                if (tag != null) {
                    boolean autologin = !tag.equals(JoinActivity.AUTOLOGIN_ON);
                    JoinActivity.this.mAutoLoginImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
                    JoinActivity.this.mAutoLoginImageView.setTag(autologin ? JoinActivity.AUTOLOGIN_ON : JoinActivity.AUTOLOGIN_OFF);
                }
            }
        });
        this.mAutoLoginImageView.setTag(AUTOLOGIN_ON);
        this.mConnectNetwork = new ConnectNetwork(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        LOG.verbose(">> onResume()");
        this.mRun = true;
        DBAdapter dbhelper = new DBAdapter(this);
        dbhelper.open();
        this.mDbhelper = dbhelper;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LOG.verbose(">> onPause()");
        this.mRun = false;
        if (this.mDbhelper != null) {
            this.mDbhelper.close();
            this.mDbhelper = null;
        }
    }

    private void setCharacterHorizontalListView(int[] id, String[] path, int pathtotalnum, int displaywidth, int displayheight) {
        LOG.verbose(">> setCharacterHorizontalListView()");
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        params.gravity = 17;
        float widthrate = displaywidth / 1280.0f;
        float heightrate = displayheight / 800.0f;
        int width = (int) (200.0f * widthrate);
        int height = (int) (310.0f * heightrate);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.CharactersLayout);
        ViewGroup.LayoutParams imgparams = new RelativeLayout.LayoutParams(width, height);
        this.mCharacterWidth = width;
        this.mCharacterBgWidth = (int) (720.0f * widthrate);
        this.mCharacterOutlineImageViews = new ImageView[id.length + pathtotalnum];
        this.mCharacterTotalNum = 0;
        LinearLayout.LayoutParams emptyparams = new LinearLayout.LayoutParams(width * 2, height);
        linearLayout.addView(new LinearLayout(this), emptyparams);
        int length = id.length;
        for (int i = 0; i < length; i++) {
            RelativeLayout sublayout = new RelativeLayout(this);
            ImageView imageview = new ImageView(this);
            imageview.setImageResource(R.drawable.join_charac_outline);
            imageview.setVisibility(4);
            sublayout.addView(imageview, imgparams);
            this.mCharacterOutlineImageViews[this.mCharacterTotalNum] = imageview;
            ImageView imageview2 = new ImageView(this);
            imageview2.setImageResource(id[i]);
            sublayout.addView(imageview2, imgparams);
            sublayout.setTag(new StringBuilder().append(i).toString());
            sublayout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.JoinActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    RelativeLayout layout = (RelativeLayout) v;
                    JoinActivity.this.setCharacterLoction(Integer.parseInt(layout.getTag().toString()));
                }
            });
            linearLayout.addView(sublayout, params);
            this.mCharacterTotalNum++;
        }
        for (int i2 = 0; i2 < pathtotalnum; i2++) {
            RelativeLayout sublayout2 = new RelativeLayout(this);
            ImageView imageview3 = new ImageView(this);
            imageview3.setImageResource(R.drawable.join_charac_outline);
            imageview3.setVisibility(4);
            sublayout2.addView(imageview3, imgparams);
            this.mCharacterOutlineImageViews[this.mCharacterTotalNum] = imageview3;
            ImageView imageview4 = new ImageView(this);
            imageview4.setImageDrawable(Drawable.createFromPath(path[i2]));
            sublayout2.addView(imageview4, imgparams);
            sublayout2.setTag(new StringBuilder().append(i2 + length).toString());
            sublayout2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.JoinActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    RelativeLayout layout = (RelativeLayout) v;
                    JoinActivity.this.setCharacterLoction(Integer.parseInt(layout.getTag().toString()));
                }
            });
            linearLayout.addView(sublayout2, params);
            this.mCharacterTotalNum++;
        }
        linearLayout.addView(new LinearLayout(this), emptyparams);
        HorizontalScrollView horizontalscrollview = (HorizontalScrollView) findViewById(R.id.CharactersHorizontalScrollView);
        horizontalscrollview.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.JoinActivity.9
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 1) {
                    ScrollThread thread = JoinActivity.this.new ScrollThread();
                    thread.start();
                    return false;
                }
                return false;
            }
        });
        this.mCharactersScrollView = horizontalscrollview;
        setCharacterLoction(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCharacter(String name, int num) {
        LOG.verbose(">> saveCharacter()");
        int[] intvalues = {0, num, 0};
        String[] strvalues = new String[2];
        strvalues[0] = name;
        this.mDbhelper.updateCharacters(0L, intvalues, strvalues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCharacterLoction(int num) {
        LOG.verbose(">> setCharacterLoction()");
        int x = (int) ((this.mCharacterWidth * num) + ((this.mCharacterBgWidth / 2.0f) - this.mCharacterWidth));
        LOG.error("setCharacterLoction x: " + x);
        this.mCharacterOutlineImageViews[num].post(new ActionRunnable(0, num));
        this.mCharactersScrollView.post(new ActionRunnable(1, x));
        this.mCharacterNum = num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void join(String id, String password, int charater, String nickname) {
        LOG.verbose(">> join()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        if (!connectnetwork.isConnecting()) {
            connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_JOIN);
            connectnetwork.clearParameter();
            connectnetwork.setParameter(PARAMETER_ID, id);
            connectnetwork.setParameter(PARAMETER_PASSWORD, password);
            connectnetwork.setParameter(PARAMETER_CHARATER, new StringBuilder().append(charater).toString());
            connectnetwork.setParameter(PARAMETER_DEVICE, Objects.Animation.TYPE_ALPHA);
            connectnetwork.setParameter(PARAMETER_NICKNAME, nickname);
            LOG.error("id:" + id + ", password: " + password + ", charater: " + charater + "nickname: " + nickname);
            this.mCommonDlg.showProgressDlg();
            connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, this.mJoinResultHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMargin(View v, int left, int top, int right, int bottom) {
        LOG.verbose(">> setMargin()");
        try {
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) v.getLayoutParams();
            params.leftMargin += left;
            params.topMargin += top;
            params.rightMargin += right;
            params.bottomMargin += bottom;
            v.setLayoutParams(params);
        } catch (Exception e) {
            RelativeLayout.LayoutParams params2 = (RelativeLayout.LayoutParams) v.getLayoutParams();
            params2.leftMargin += left;
            params2.topMargin += top;
            params2.rightMargin += right;
            params2.bottomMargin += bottom;
            v.setLayoutParams(params2);
        }
    }

    public class ActionRunnable implements Runnable {
        public static final int ACTION_CHARACTERLOCTION = 1;
        public static final int ACTION_CHARACTEROUTLINE = 0;
        private int mAction;
        private int mX;

        public ActionRunnable(int action, int x) {
            LOG.verbose(">> ActionRunnable()");
            this.mAction = action;
            this.mX = x;
        }

        @Override // java.lang.Runnable
        public void run() {
            LOG.verbose(">> run()");
            switch (this.mAction) {
                case 0:
                    int num = this.mX;
                    int length = JoinActivity.this.mCharacterTotalNum;
                    for (int i = 0; i < length; i++) {
                        ImageView lmageview = JoinActivity.this.mCharacterOutlineImageViews[i];
                        if (i == num) {
                            lmageview.setVisibility(0);
                        } else {
                            lmageview.setVisibility(4);
                        }
                    }
                    break;
                case 1:
                    JoinActivity.this.mCharactersScrollView.smoothScrollTo(this.mX, 0);
                    break;
            }
        }
    }

    class ScrollThread extends Thread {
        ScrollThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LOG.verbose(">> run()");
            int x = -1000;
            while (JoinActivity.this.mRun) {
                int nowx = JoinActivity.this.mCharactersScrollView.getScrollX();
                LOG.error("ScrollThread x:" + x + ", nowx: " + nowx);
                if (x > -1000 && x - nowx == 0) {
                    int num = (nowx - (JoinActivity.this.mCharacterWidth / 2)) / JoinActivity.this.mCharacterWidth;
                    if (num >= 0) {
                        if (num > JoinActivity.this.mCharacterTotalNum - 1) {
                            num = JoinActivity.this.mCharacterTotalNum - 1;
                        }
                    } else {
                        num = 0;
                    }
                    LOG.error("nowx / mCharacterWidth:" + num);
                    JoinActivity.this.setCharacterLoction(num);
                    return;
                }
                x = nowx;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        LOG.verbose(">> onKeyUp()");
        if (keyCode != 4) {
            return super.onKeyUp(keyCode, event);
        }
        finish();
        overridePendingTransition(R.anim.move_lock, R.anim.move_up);
        return true;
    }
}
