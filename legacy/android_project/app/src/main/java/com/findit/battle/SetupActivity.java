package com.findit.battle;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.findit.battle.finals.LOG;

/* JADX INFO: loaded from: classes.dex */
public class SetupActivity extends Activity {
    public static final String KEY_AUTOLOGIN = "autologin";
    public static final String KEY_FACEBOOKAUTOLOGIN = "facebookautologin";
    public static final String KEY_SOUNDON = "soundon";
    private static final String OFF = "off";
    private static final String ON = "on";
    private ImageView mAutoLoginImageView;
    private int mButtonClickSize;
    private CommonDialog mCommonDialog;
    private DBAdapter mDbhelper;
    private ImageView mSoundonImageView;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LOG.verbose(">> onCreate()");
        requestWindowFeature(1);
        setContentView(R.layout.setup);
        getWindow().setLayout(FindItApplication.getDisplayScreenWidth(), FindItApplication.getDisplayScreenHeight());
        setVolumeControlStream(3);
        this.mCommonDialog = new CommonDialog(this);
        this.mAutoLoginImageView = (ImageView) findViewById(R.id.AutoLoginCheckImageView);
        this.mSoundonImageView = (ImageView) findViewById(R.id.SoundonCheckImageView);
        this.mButtonClickSize = (int) getResources().getDimension(R.dimen.buttonclick_size);
        LinearLayout layout = (LinearLayout) findViewById(R.id.AutoLoginLayout);
        layout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.SetupActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick()");
                String tag = SetupActivity.this.mAutoLoginImageView.getTag().toString();
                if (tag != null) {
                    boolean autologin = !tag.equals(SetupActivity.ON);
                    SetupActivity.this.mAutoLoginImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
                    SetupActivity.this.mAutoLoginImageView.setTag(autologin ? SetupActivity.ON : SetupActivity.OFF);
                }
            }
        });
        LinearLayout layout2 = (LinearLayout) findViewById(R.id.SoundonLayout);
        layout2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.SetupActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                String tag = SetupActivity.this.mSoundonImageView.getTag().toString();
                if (tag != null) {
                    boolean autologin = !tag.equals(SetupActivity.ON);
                    SetupActivity.this.mSoundonImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
                    SetupActivity.this.mSoundonImageView.setTag(autologin ? SetupActivity.ON : SetupActivity.OFF);
                }
            }
        });
        Button button = (Button) findViewById(R.id.SaveButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.SetupActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick()");
                SetupActivity.this.mCommonDialog.showLoadingDlg();
                SetupActivity.this.saveState();
                SetupActivity.this.finish();
                SetupActivity.this.overridePendingTransition(R.anim.move_lock, R.anim.move_up);
            }
        });
        button.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.SetupActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                return SetupActivity.this.touchButtonAction(v, event);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean touchButtonAction(View v, MotionEvent event) {
        LOG.verbose(">> touchButtonAction()");
        int size = this.mButtonClickSize;
        switch (event.getAction()) {
            case 0:
                setMargin(v, size, 0, size, 0);
                return false;
            case 1:
                setMargin(v, -size, 0, -size, 0);
                return false;
            case 2:
            default:
                return false;
            case 3:
                setMargin(v, -size, 0, -size, 0);
                return false;
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        DBAdapter dbhelper = new DBAdapter(this);
        dbhelper.open();
        this.mDbhelper = dbhelper;
        loadState(0L);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LOG.verbose(">> onPause()");
        if (this.mDbhelper != null) {
            this.mDbhelper.close();
            this.mDbhelper = null;
        }
        this.mCommonDialog.cancelLoadingDlg();
    }

    private void loadState(long rowid) {
        int i = R.drawable.login_check_on;
        Cursor c = this.mDbhelper.fetchSetup(rowid);
        if (c != null) {
            if (c.getCount() != 0) {
                boolean autologin = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_AUTOLOGIN)) == 1;
                boolean soundon = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_SOUNDON)) == 1;
                this.mAutoLoginImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
                this.mAutoLoginImageView.setTag(autologin ? ON : OFF);
                ImageView imageView = this.mSoundonImageView;
                if (!soundon) {
                    i = R.drawable.login_check_off;
                }
                imageView.setBackgroundResource(i);
                this.mSoundonImageView.setTag(soundon ? ON : OFF);
            }
            c.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveState() {
        LOG.verbose(">> saveState()");
        String atag = this.mAutoLoginImageView.getTag().toString();
        String stag = this.mSoundonImageView.getTag().toString();
        if (atag != null && stag != null) {
            this.mDbhelper.updateSetting(0L, atag.equals(ON), stag.equals(ON));
        }
    }

    private void setMargin(View v, int left, int top, int right, int bottom) {
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
