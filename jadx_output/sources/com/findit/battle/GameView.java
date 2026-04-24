package com.findit.battle;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.findit.battle.Items;
import com.findit.battle.Objects;
import com.findit.battle.finals.LOG;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.net.InAppError;
import com.sec.android.iap.sample.helper.SamsungIapHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GameView extends SurfaceView implements SurfaceHolder.Callback {
    public static final int ATTACK_BASE = 0;
    public static final String CHARACTER_AI = "";
    public static final int COIN_BASE = 10;
    public static final int DEFENSE_BASE = 0;
    public static final int LEVEL_BASE = 1;
    public static final int LOGIN_GUEST = 2;
    public static final int LOGIN_MEMBER = 1;
    public static final int LOGOUT = 0;
    public static final int NOTFINDRECT_DIM_TIME = 20;
    public static final int POINT_BASE = 2;
    public static final long SCORE_BASE = 0;
    public static final int SCREENMODE_BATTLEROOM = 3;
    public static final int SCREENMODE_GAME = 4;
    public static final int SCREENMODE_MAINMENU = 1;
    public static final int SCREENMODE_OPENING = 0;
    public static final int SCREENMODE_RESULT = 5;
    public static final int SCREENMODE_WAITINGROOM = 2;
    public static final int SOUND_DONG = 6;
    public static final int SOUND_LOSE = 8;
    public static final int SOUND_O = 0;
    public static final int SOUND_READY = 2;
    public static final int SOUND_SHOPPAGE = 4;
    public static final int SOUND_TOUCH = 3;
    public static final int SOUND_USEITEM = 9;
    private static final float SOUND_VOLUME = 0.5f;
    public static final int SOUND_WIN = 7;
    public static final int SOUND_WIND = 5;
    public static final int SOUND_X = 1;
    public static final int VIBRATOR_TIME_NOTFINDRECT = 200;
    protected static MediaPlayer mMediaPlayer;
    public static int mScreenMode;
    protected static SoundPool mSoundpool = null;
    public int mAttack;
    public boolean mAutoLogin;
    private Timer mBattleRoomAndGameRoomTimer;
    private boolean mBattleRoomAndGameRoomTimerInit;
    private Bitmap mBgBmp;
    private BitmapDrawable mBgPng;
    public long mCoin;
    private Context mContext;
    protected DBAdapter mDbhelper;
    public int mDefense;
    public float mDrawrate;
    public String mEmail;
    private GameActivity mGameActivity;
    protected GameThread mGameThread;
    public float mHeightRate;
    public int mLevel;
    public int[] mLevelScoreTable;
    public int mLogin;
    public String mNickName;
    protected Objects mObjects;
    public String mPassword;
    public int mPoint;
    private boolean mRestore;
    public String mRoomName;
    public long mScore;
    public BattleRoom mScreenBattleRoom;
    public GameRoom mScreenGameRoom;
    private MainMenu mScreenMainMenu;
    private Opening mScreenOpening;
    public Result mScreenResult;
    public WaitingRoom mScreenWaitingRoom;
    protected SparseIntArray mSoundPoolMap;
    public boolean mSoundon;
    public float mSpeedRate;
    private SurfaceHolder mSurfaceholder;
    private Vibrator mVibrator;
    public float mWidthRate;
    public boolean mWork;

    public GameView(Context context) {
        super(context);
        this.mSoundPoolMap = null;
        this.mRestore = false;
        LOG.verbose(">> GameView() construct");
        getSurfaceHolder();
        loadSoundAndVibrator(context);
        initMemberValue(context);
    }

    public GameView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSoundPoolMap = null;
        this.mRestore = false;
        LOG.verbose(">> GameView() construct");
        getSurfaceHolder();
        loadSoundAndVibrator(context);
        initMemberValue(context);
    }

    private void getSurfaceHolder() {
        LOG.verbose(">> getSurfaceHolderAndStartThread()");
        this.mSurfaceholder = getHolder();
        this.mSurfaceholder.addCallback(this);
    }

    private void loadSoundAndVibrator(Context context) {
        LOG.verbose(">> loadSoundAndVibrator()");
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
        if (mMediaPlayer == null) {
            mMediaPlayer = MediaPlayer.create(context, R.raw.gaming);
        }
        mMediaPlayer.setVolume(SOUND_VOLUME, SOUND_VOLUME);
        mMediaPlayer.setLooping(true);
        if (mSoundpool == null) {
            mSoundpool = new SoundPool(10, 3, Objects.FINDIMAGE_TOTALNUM);
        }
        if (this.mSoundPoolMap == null) {
            this.mSoundPoolMap = new SparseIntArray();
            this.mSoundPoolMap.put(0, mSoundpool.load(context, R.raw.o, 1));
            this.mSoundPoolMap.put(1, mSoundpool.load(context, R.raw.x, 1));
            this.mSoundPoolMap.put(2, mSoundpool.load(context, R.raw.ready, 1));
            this.mSoundPoolMap.put(3, mSoundpool.load(context, R.raw.touch, 1));
            this.mSoundPoolMap.put(4, mSoundpool.load(context, R.raw.shoppage, 1));
            this.mSoundPoolMap.put(5, mSoundpool.load(context, R.raw.wind, 1));
            this.mSoundPoolMap.put(6, mSoundpool.load(context, R.raw.dong, 1));
            this.mSoundPoolMap.put(7, mSoundpool.load(context, R.raw.win, 1));
            this.mSoundPoolMap.put(8, mSoundpool.load(context, R.raw.lose, 1));
            this.mSoundPoolMap.put(9, mSoundpool.load(context, R.raw.useitem, 1));
        }
    }

    private void destroySoundResorce() {
        LOG.verbose(">> destroySoundResorce()");
        if (mMediaPlayer != null) {
            stopBackgroundMusic();
            mMediaPlayer.stop();
            mMediaPlayer.release();
            mMediaPlayer = null;
        }
        if (this.mSoundPoolMap != null) {
            this.mSoundPoolMap.clear();
            this.mSoundPoolMap = null;
        }
        if (mSoundpool != null) {
            mSoundpool.release();
            mSoundpool = null;
        }
    }

    private void initMemberValue(Context context) {
        LOG.verbose(">> initMemberValue()");
        this.mLevelScoreTable = getResources().getIntArray(R.array.level_score);
        this.mContext = context;
        this.mGameActivity = (GameActivity) context;
        this.mWork = true;
        this.mLogin = 0;
        this.mLevel = 1;
        this.mScore = 0L;
        this.mCoin = 10L;
        this.mPoint = 2;
        this.mSoundon = true;
        setScreenMode(0);
        this.mSpeedRate = 1.0f;
        this.mRoomName = null;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        LOG.verbose(">> surfaceCreated()");
        if (this.mGameThread == null) {
            doStartGameView();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder arg0, int arg1, int arg2, int arg3) {
        LOG.verbose(">> surfaceChanged()");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        LOG.verbose(">> surfaceDestroyed()");
    }

    public void onResume() {
        LOG.verbose(">> onResume()");
        if (this.mGameThread == null) {
            readSettingValueFromDB();
        }
        if (this.mGameThread != null && !this.mGameThread.mResume) {
            LOG.info("++ onResume() start GameThread");
            this.mGameThread.mResume = true;
            startGameThread();
        }
        startBackgroundMusic();
    }

    public void onPause() {
        LOG.verbose(">> onPause()");
        stopBackgroundMusic();
        if (this.mGameThread == null) {
            return;
        }
        this.mGameThread.mResume = false;
        this.mWork = false;
    }

    private void readSettingValueFromDB() {
        LOG.verbose(">> readSettingValueFromDB()");
        if (this.mDbhelper == null) {
            LOG.info("-- readSettingValueFromDB() mDbhelper is null");
            return;
        }
        Cursor c = this.mDbhelper.fetchSetup(0L);
        if (c.getCount() > 0) {
            this.mAutoLogin = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_AUTOLOGIN)) == 1;
            this.mSoundon = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_SOUNDON)) == 1;
        }
    }

    private void doStartGameView() {
        LOG.verbose(">> doStartGameView()");
        startGameView();
        this.mRestore = false;
        LOG.info("++ doStartGameView() start GameThread");
        startGameThread();
    }

    private void startGameView() {
        LOG.verbose(">> startGameView()");
        Context context = this.mContext;
        int displaywidth = getWidth();
        int displayheight = getHeight();
        if (displaywidth < displayheight) {
            displaywidth = displayheight;
            displayheight = displaywidth;
        }
        float drawrate = (displaywidth + displayheight) / 800.0f;
        this.mDrawrate = drawrate;
        this.mWidthRate = displaywidth / 1280.0f;
        this.mHeightRate = displayheight / 800.0f;
        createGameObjects(context, displaywidth, displayheight, drawrate);
        createGameScreens(context, displaywidth, displayheight);
        if (this.mRestore) {
            LOG.verbose("++ startGameView() restore");
            loadState(0L, true);
            this.mObjects.loadChracters(this.mDbhelper);
        }
        this.mObjects.loadCharactersImage(this.mContext);
        LOG.info("ScreenMode: " + getScreenMode());
        switch (getScreenMode()) {
            case 0:
                loadBgImage(context, displaywidth, displayheight, R.drawable.intro, true);
                break;
            case 1:
                loadBgImage(context, displaywidth, displayheight, R.drawable.main_bg, false);
                this.mScreenMainMenu.loadImage(context);
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                this.mScreenMainMenu.mTime = -1;
                this.mScreenMainMenu.mAlpha = -1;
                this.mScreenMainMenu.setBackboard(false);
                if (this.mLogin == 1) {
                    this.mGameActivity.connectServer(0);
                } else {
                    enterBattleRoom(CHARACTER_AI, 2);
                }
                break;
        }
    }

    private void createGameScreens(Context context, int displaywidth, int displayheight) {
        LOG.verbose(">> createGameScreens()");
        if (this.mScreenOpening == null) {
            this.mScreenOpening = new Opening();
        }
        if (this.mScreenMainMenu == null) {
            this.mScreenMainMenu = new MainMenu();
        }
        if (this.mScreenWaitingRoom == null) {
            this.mScreenWaitingRoom = new WaitingRoom(context, this, displaywidth, displayheight);
        }
        if (this.mScreenBattleRoom == null) {
            this.mScreenBattleRoom = new BattleRoom(displaywidth, displayheight);
        }
        if (this.mScreenGameRoom == null) {
            this.mScreenGameRoom = new GameRoom(context, displaywidth, displayheight);
        }
        if (this.mScreenResult == null) {
            this.mScreenResult = new Result(context, displaywidth, displayheight);
        }
    }

    private void createGameObjects(Context context, int displaywidth, int displayheight, float drawrate) {
        LOG.verbose(">> createGameObjects()");
        if (this.mObjects == null) {
            this.mObjects = new Objects(context, displaywidth, displayheight, drawrate);
            loadGameObject(true);
        }
    }

    public void loadGameObject(boolean bRunningGame) {
        LOG.verbose(">> loadGameObject() bRunningGame: " + bRunningGame);
        if (this.mContext == null) {
            LOG.info("-- loadGameObject() mContext is null");
        } else if (this.mDbhelper == null) {
            LOG.info("-- loadGameObject() mDbhelper is null");
        } else {
            this.mObjects.createFindImages(this.mContext, this.mDbhelper, bRunningGame);
        }
    }

    public boolean isRunningGame() {
        LOG.verbose(">> isRunningGame()");
        if (this.mGameThread == null || !this.mGameThread.isAlive()) {
            return false;
        }
        LOG.verbose("-- isRunningGame() " + this.mGameThread.mRun);
        return this.mGameThread.mRun;
    }

    private void startGameThread() {
        LOG.verbose(">> startGameThread()");
        if (this.mGameThread != null) {
            LOG.info("-- startGameThread() mGameThread is working aleady");
        } else {
            if (this.mSurfaceholder == null) {
                LOG.info("-- startGameThread() mSurfaceholder is null");
                return;
            }
            this.mWork = true;
            this.mGameThread = new GameThread(this.mSurfaceholder);
            this.mGameThread.start();
        }
    }

    public int randomNumber(int start, int end) {
        LOG.verbose(">> randomNumber()");
        Random random = new Random();
        if (start > end) {
            return 0;
        }
        if (start != end) {
            int result = (Math.abs(random.nextInt()) % ((end - start) + 1)) + start;
            return result;
        }
        return start;
    }

    public ArrayList<String> getSubTexts(String text, String devider) {
        LOG.verbose(">> getSubTexts()");
        ArrayList<String> subtexts = new ArrayList<>();
        int length = text.length();
        int startindex = 0;
        while (true) {
            if (startindex >= length) {
                break;
            }
            int index = text.indexOf(devider, startindex);
            if (index < 0) {
                String subtext = text.substring(startindex);
                subtexts.add(subtext);
                break;
            }
            String subtext2 = text.substring(startindex, index);
            subtexts.add(subtext2);
            startindex = index + 1;
            if (startindex == length) {
                subtexts.add(CHARACTER_AI);
            }
        }
        return subtexts;
    }

    public String getLengthText(int length) {
        LOG.verbose(">> getLengthText()");
        if (length < 10) {
            return GameActivity.ANSWER_PASS + length;
        }
        if (length < 100) {
            return SamsungIapHelper.ITEM_TYPE_CONSUMABLE + length;
        }
        if (length < 1000) {
            return InAppError.SUCCESS + length;
        }
        return new StringBuilder().append(length).toString();
    }

    public void recycleResources() {
        LOG.verbose(">> recycleResources()");
        if (this.mBgPng != null) {
            this.mBgPng.getBitmap().recycle();
            this.mBgPng = null;
        }
        if (this.mBgBmp != null) {
            this.mBgBmp.recycle();
            this.mBgBmp = null;
        }
        if (this.mObjects != null) {
            this.mObjects.recycleResources();
        }
        if (this.mScreenMainMenu != null) {
            this.mScreenMainMenu.recycleImageInButton();
        }
        if (this.mScreenBattleRoom != null) {
            this.mScreenBattleRoom.recycleImageInBattleRoom();
        }
        if (this.mScreenGameRoom != null) {
            this.mScreenGameRoom.recycleImageInGameRoom();
        }
        if (this.mScreenResult != null) {
            this.mScreenResult.recycleImageInResultWindow();
        }
    }

    public void onDestroy() {
        LOG.verbose(">> onDestroy()");
        loadState(0L, false);
        saveState(0L);
        recycleResources();
        destroySoundResorce();
        if (this.mGameActivity != null && this.mGameActivity.isFinishing() && this.mScreenWaitingRoom != null) {
            this.mScreenWaitingRoom.exit();
        }
    }

    public void saveState(long rowid) {
        LOG.verbose(">> saveState()");
        this.mRestore = true;
        if (this.mObjects == null) {
            LOG.info("-- saveState() mObjects is null 스킬, 아이템, 케릭터 정보가 없다. ");
            return;
        }
        int[] intvalues = new int[6];
        long[] longvalues = new long[2];
        String[] strvalues = {CHARACTER_AI, CHARACTER_AI};
        if (getScreenMode() == 3 || getScreenMode() == 4 || getScreenMode() == 5) {
            setScreenMode(2);
        }
        intvalues[0] = getScreenMode();
        intvalues[1] = this.mLogin;
        intvalues[2] = this.mLevel;
        intvalues[3] = this.mPoint;
        intvalues[4] = this.mAttack;
        intvalues[5] = this.mDefense;
        longvalues[0] = this.mScore;
        longvalues[1] = this.mCoin;
        Objects objects = this.mObjects;
        strvalues[0] = String.valueOf(strvalues[0]) + (char) 1;
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (objects.mSkills.mSetSkillActiveIndexTable[0] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (objects.mSkills.mSetSkillActiveIndexTable[1] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (objects.mSkills.mSetSkillActiveIndexTable[2] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (objects.mSkills.mSetSkillActiveIndexTable[3] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) objects.mSkills.mSkillTotalnum);
        for (int i = 0; i < objects.mSkills.mSkillTotalnum; i++) {
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) objects.mSkills.mSkill[i].mNum);
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) objects.mSkills.mSkill[i].mSetNum);
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) (objects.mSkills.mSkill[i].mBuy ? 1 : 0));
        }
        strvalues[1] = String.valueOf(strvalues[1]) + (char) 1;
        for (int i2 = 0; i2 < 6; i2++) {
            int totalnum = objects.mItems.mTypeItem[i2].mSubItemTotalnum;
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) totalnum);
            for (int j = 0; j < totalnum; j++) {
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mType);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mSubType);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mSlotnum);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mNum);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mPower);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mPrice);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mTypeItem[i2].mSubItem[j].mMoney);
            }
        }
        strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItemTotalnum);
        for (int i3 = 0; i3 < objects.mItems.mItemTotalnum; i3++) {
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItem[i3].mType);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItem[i3].mSubType);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItem[i3].mSlotnum);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) (objects.mItems.mItem[i3].mSet ? 1 : 0));
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItem[i3].mNum);
            if (objects.mItems.mItem[i3].mSeqs == null) {
                strvalues[1] = String.valueOf(strvalues[1]) + (char) 0;
            } else {
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) objects.mItems.mItem[i3].mSeqs.length());
                strvalues[1] = String.valueOf(strvalues[1]) + objects.mItems.mItem[i3].mSeqs;
            }
        }
        this.mDbhelper.updateState(rowid, intvalues, longvalues, strvalues);
        this.mObjects.saveChracters(this.mDbhelper, this.mNickName);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void loadState(long j, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        LOG.verbose(">> loadState()");
        Cursor cursorFetchState = this.mDbhelper.fetchState(j);
        if (cursorFetchState != null) {
            if (cursorFetchState.getCount() != 0) {
                if (z) {
                    setScreenMode(cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_SCREENMODE)));
                    this.mLogin = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_LOGIN));
                    startBackgroundMusic();
                }
                this.mLevel = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_LOGIN));
                if (this.mLevel < 1) {
                    this.mLevel = 1;
                }
                this.mPoint = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_POINT));
                this.mScore = cursorFetchState.getLong(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_SCORE));
                this.mCoin = cursorFetchState.getLong(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_COIN));
                this.mAttack = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_ATTACK));
                this.mDefense = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_DEFENSE));
                String string = cursorFetchState.getString(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_SKILLS));
                if (string != null && string.length() > 0) {
                    char[] cArr = new char[string.length()];
                    char[] charArray = string.toCharArray();
                    int i14 = 0 + 1;
                    int i15 = i14 + 1;
                    this.mObjects.mSkills.mSetSkillActiveIndexTable[0] = charArray[i14] == 1;
                    int i16 = i15 + 1;
                    this.mObjects.mSkills.mSetSkillActiveIndexTable[1] = charArray[i15] == 1;
                    int i17 = i16 + 1;
                    this.mObjects.mSkills.mSetSkillActiveIndexTable[2] = charArray[i16] == 1;
                    int i18 = i17 + 1;
                    this.mObjects.mSkills.mSetSkillActiveIndexTable[3] = charArray[i17] == 1;
                    int i19 = i18 + 1;
                    char c = charArray[i18];
                    for (int i20 = 0; i20 < c; i20++) {
                        Objects.Skills.Skill skill = this.mObjects.mSkills.mSkill[i20];
                        if (charArray[i19] > 32767) {
                            i10 = i19 + 1;
                            i11 = charArray[i19] - 0;
                        } else {
                            i10 = i19 + 1;
                            i11 = charArray[i19];
                        }
                        skill.mNum = i11;
                        Objects.Skills.Skill skill2 = this.mObjects.mSkills.mSkill[i20];
                        if (charArray[i10] > 32767) {
                            int i21 = charArray[i10] - 0;
                            i12 = i10 + 1;
                            i13 = i21;
                        } else {
                            char c2 = charArray[i10];
                            i12 = i10 + 1;
                            i13 = c2;
                        }
                        skill2.mSetNum = i13;
                        i19 = i12 + 1;
                        this.mObjects.mSkills.mSkill[i20].mBuy = charArray[i12] == 1;
                    }
                }
                String string2 = cursorFetchState.getString(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_ITEMS));
                if (string2 != null && string2.length() > 0) {
                    char[] cArr2 = new char[string2.length()];
                    char[] charArray2 = string2.toCharArray();
                    int i22 = 0 + 1;
                    int i23 = 0;
                    while (true) {
                        i = i22;
                        if (i23 >= 6) {
                            break;
                        }
                        i22 = i + 1;
                        for (int i24 = 0; i24 < charArray2[i]; i24++) {
                            i22 = i22 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
                        }
                        i23++;
                    }
                    this.mObjects.mItems.mItemTotalnum = 0;
                    char c3 = charArray2[i];
                    int i25 = 0;
                    int i26 = i + 1;
                    while (i25 < c3) {
                        if (charArray2[i26] > 32767) {
                            i2 = i26 + 1;
                            i3 = charArray2[i26] - 0;
                        } else {
                            i2 = i26 + 1;
                            i3 = charArray2[i26];
                        }
                        if (charArray2[i2] > 32767) {
                            int i27 = charArray2[i2] - 0;
                            i4 = i2 + 1;
                            i5 = i27;
                        } else {
                            char c4 = charArray2[i2];
                            i4 = i2 + 1;
                            i5 = c4;
                        }
                        this.mObjects.mItems.createItem(i3, i5);
                        Items.Item item = this.mObjects.mItems.mItem[i25];
                        if (charArray2[i4] > 32767) {
                            int i28 = charArray2[i4] - 0;
                            i6 = i4 + 1;
                            i7 = i28;
                        } else {
                            char c5 = charArray2[i4];
                            i6 = i4 + 1;
                            i7 = c5;
                        }
                        item.mSlotnum = i7;
                        int i29 = i6 + 1;
                        this.mObjects.mItems.mItem[i25].mSet = charArray2[i6] == 1;
                        Items.Item item2 = this.mObjects.mItems.mItem[i25];
                        if (charArray2[i29] > 32767) {
                            i8 = i29 + 1;
                            i9 = charArray2[i29] - 0;
                        } else {
                            i8 = i29 + 1;
                            i9 = charArray2[i29];
                        }
                        item2.mNum = i9;
                        int i30 = i8 + 1;
                        char c6 = charArray2[i8];
                        if (c6 == 0) {
                            this.mObjects.mItems.mItem[i25].mSeqs = null;
                        } else {
                            this.mObjects.mItems.mItem[i25].mSeqs = CHARACTER_AI;
                            int i31 = 0;
                            while (i31 < c6) {
                                Items.Item item3 = this.mObjects.mItems.mItem[i25];
                                item3.mSeqs = String.valueOf(item3.mSeqs) + charArray2[i30];
                                i31++;
                                i30++;
                            }
                        }
                        i25++;
                        i26 = i30;
                    }
                    this.mObjects.mItems.setSetTable();
                }
            }
            cursorFetchState.close();
        }
    }

    public void loadBgImage(Context context, int displaywidth, int displayheight, int id, boolean bmp) {
        LOG.verbose(">> loadBgImage()");
        if (displaywidth < displayheight) {
            displaywidth = displayheight;
            displayheight = displaywidth;
        }
        if (this.mBgPng != null) {
            this.mBgPng.getBitmap().recycle();
            this.mBgPng = null;
        }
        if (this.mBgBmp != null) {
            this.mBgBmp.recycle();
            this.mBgBmp = null;
        }
        System.gc();
        if (bmp) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPurgeable = true;
                Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), id, options);
                this.mBgBmp = Bitmap.createScaledBitmap(bitmap, displaywidth, displayheight, true);
                bitmap.recycle();
                return;
            } catch (OutOfMemoryError e) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = 2;
                options2.inPurgeable = true;
                Bitmap bitmap2 = BitmapFactory.decodeResource(context.getResources(), id, options2);
                this.mBgBmp = Bitmap.createScaledBitmap(bitmap2, displaywidth, displayheight, true);
                bitmap2.recycle();
                return;
            }
        }
        InputStream is = null;
        try {
            is = context.getResources().openRawResource(id);
            BitmapDrawable img = new BitmapDrawable(context.getResources(), is);
            img.setBounds(0, 0, displaywidth, displayheight);
            this.mBgPng = img;
        } catch (OutOfMemoryError e2) {
            Toast.makeText(this.mGameActivity, "게임을 다시 실행해 주세요", 0).show();
            this.mGameActivity.finish();
        }
        if (is != null) {
            try {
                is.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
    }

    public boolean saveImages(String datas) {
        LOG.verbose(">> saveImages()");
        try {
            JSONObject jsonobject = new JSONObject(datas);
            long imgid = jsonobject.getLong(GameActivity.JSON_NAME_IMAGES_IMGID);
            this.mDbhelper.createImages(imgid, datas);
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    public long getListImageNum() {
        LOG.verbose(">> getListImageNum()");
        int index = this.mObjects.mImagesTotalnum - 1;
        if (index <= -1 || index >= this.mObjects.mImages.length) {
            return 1L;
        }
        return this.mObjects.mImages[index].mImgNum;
    }

    public void startBackgroundMusic() {
        LOG.verbose(">> startBackgroundMusic()");
        if (this.mSoundon) {
            if (getScreenMode() == 3 || getScreenMode() == 4 || getScreenMode() == 5) {
                if ((this.mGameThread == null || this.mGameThread.mResume) && mMediaPlayer != null && !mMediaPlayer.isPlaying()) {
                    mMediaPlayer.start();
                }
            }
        }
    }

    public void stopBackgroundMusic() {
        LOG.verbose(">> stopBackgroundMusic()");
        if (this.mSoundon) {
            if ((this.mGameThread == null || this.mGameThread.mResume) && mMediaPlayer != null && mMediaPlayer.isPlaying()) {
                mMediaPlayer.pause();
            }
        }
    }

    public void playSound(int id) {
        LOG.verbose(">> playSound()");
        if (this.mSoundon && this.mGameThread != null && this.mGameThread.mResume && mSoundpool != null && this.mSoundPoolMap != null) {
            mSoundpool.play(this.mSoundPoolMap.get(id), SOUND_VOLUME, SOUND_VOLUME, 1, 0, 1.0f);
        }
    }

    class Rate {
        public int[] mTable;

        public Rate() {
            LOG.verbose(">> Rate()");
            this.mTable = new int[100];
        }

        public void set(int[] rate) {
            LOG.verbose(">> set()");
            int value = 0;
            int end = 0;
            for (int i = 0; i < rate.length && end < 100; i++) {
                if (rate[i] > 0) {
                    end = value + rate[i];
                    if (end > 100) {
                        end = 100;
                    }
                    Arrays.fill(this.mTable, value, end, i);
                    value += rate[i];
                }
            }
        }
    }

    public void enterMainMenu(int time) {
        LOG.verbose(">> enterMainMenu() time: " + time);
        Context context = this.mContext;
        if (getScreenMode() != 1 || this.mBgPng == null || this.mBgPng.getBitmap().isRecycled()) {
            loadBgImage(context, getWidth(), getHeight(), R.drawable.main_bg, false);
            this.mScreenMainMenu.loadImage(context);
            setScreenMode(1);
        }
        this.mObjects.mMainMenuButtons.setImageNum(0);
        this.mObjects.mMainMenuButtons.setAlpha(-1);
        this.mScreenMainMenu.mTime = time;
        if (time < 0) {
            this.mScreenMainMenu.mPaint.setAlpha(-1);
        }
        this.mGameActivity.mConnectNetwork.closeSocket(true);
        stopBackgroundMusic();
    }

    public void enterBattleRoom(String rightname, int time) {
        LOG.verbose(">> enterBattleRoom()");
        Context context = this.mContext;
        BattleRoom battleroom = this.mScreenBattleRoom;
        this.mObjects.mMainMenuButtons.recycleImageInButton();
        if (getScreenMode() != 3 || this.mBgBmp == null) {
            loadBgImage(context, getWidth(), getHeight(), R.drawable.bg, true);
            battleroom.loadImage(context);
            setScreenMode(3);
        }
        this.mObjects.mSkills.setAlpha(-1);
        battleroom.setSkillSlot();
        this.mObjects.mCharacter[0].mName = this.mEmail;
        battleroom.mSingleTimeCount = -1;
        battleroom.mLeftNamePaint.setAlpha(-1);
        battleroom.mRightNamePaint.setAlpha(-1);
        battleroom.mPaint.setAlpha(-1);
        battleroom.mImgY[0] = battleroom.mStandardY[0];
        battleroom.setSkillWindowY(battleroom.mStandardY[1]);
        battleroom.mLeftReady = false;
        Objects.Character character = this.mObjects.mCharacter[0];
        character.setImgnum(0);
        Rect rect = battleroom.mLeftRect;
        character.setRect(rect.left, rect.top, rect.right, rect.bottom);
        Objects.Character character2 = this.mObjects.mCharacter[1];
        battleroom.mRightReady = false;
        character2.setImgnum(0);
        Rect rect2 = battleroom.mRightRect;
        character2.setRect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        Objects.Character character3 = this.mObjects.mCharacter[2];
        character3.setImgnum(0);
        character3.setRect(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (rightname == null) {
            this.mScreenGameRoom.mRightCharacterIndex = -1;
        } else {
            this.mScreenGameRoom.setRightCharacter(rightname);
        }
        if (time > -2) {
            battleroom.mTime = time;
        }
        startBackgroundMusic();
    }

    public void showWaitingRoom() {
        LOG.verbose(">> showWaitingRoom()");
        this.mRoomName = null;
        this.mScreenWaitingRoom.getUserList(this.mEmail);
        this.mScreenWaitingRoom.mMainDlg.show();
        setScreenMode(2);
        stopBackgroundMusic();
    }

    class Opening {
        public static final int MTIME_OPENING_0 = 0;
        public static final int MTIME_OPENING_1 = 1;
        public static final int MTIME_OPENING_2 = 2;
        public static final int MTIME_OPENING_3 = 3;
        public static final int MTIME_OPENING_4 = 4;
        public int mBgColor;
        private Paint mPaint;
        public int mTime;
        public int mTimeCount;

        public Opening() {
            LOG.verbose(">> Opening()");
            this.mPaint = new Paint();
            this.mBgColor = Color.rgb(174, 222, 228);
            this.mTime = 0;
        }

        public void animate() {
            switch (this.mTime) {
                case 0:
                    this.mPaint.setAlpha(0);
                    this.mTime++;
                    this.mTimeCount = 0;
                    break;
                case 1:
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i > 2.0f / GameView.this.mSpeedRate) {
                        this.mTime++;
                        this.mTimeCount = 0;
                    }
                    break;
                case 2:
                    int alpha = this.mPaint.getAlpha() + ((int) (GameView.this.mSpeedRate * 15.0f));
                    if (alpha < 250) {
                        this.mPaint.setAlpha(alpha);
                    } else {
                        this.mPaint.setAlpha(-1);
                        this.mTime++;
                    }
                    break;
                case 3:
                    int i2 = this.mTimeCount;
                    this.mTimeCount = i2 + 1;
                    if (i2 > 60.0f / GameView.this.mSpeedRate) {
                        this.mTime++;
                        this.mTimeCount = 0;
                    }
                    break;
                case 4:
                    int alpha2 = this.mPaint.getAlpha() - ((int) (GameView.this.mSpeedRate * 15.0f));
                    if (alpha2 > 0) {
                        this.mPaint.setAlpha(alpha2);
                    } else {
                        this.mPaint.setAlpha(0);
                        int i3 = this.mTimeCount;
                        this.mTimeCount = i3 + 1;
                        if (i3 > 0) {
                            GameView.this.loadBgImage(GameView.this.mContext, GameView.this.getWidth(), GameView.this.getHeight(), R.drawable.main_bg, false);
                            GameView.this.mScreenMainMenu.loadImage(GameView.this.mContext);
                            GameView.this.mScreenMainMenu.mTime = 0;
                            GameView.this.setScreenMode(1);
                            this.mTime++;
                            this.mTimeCount = 0;
                        }
                    }
                    break;
            }
        }

        public void doDraw(Canvas canvas) {
            canvas.drawColor(this.mBgColor);
            if (GameView.this.mBgBmp != null) {
                canvas.drawBitmap(GameView.this.mBgBmp, 0.0f, 0.0f, this.mPaint);
            }
        }
    }

    class MainMenu {
        public static final int MTIME_MAINMENU_1 = 1;
        public static final int MTIME_MAINMENU_2 = 2;
        public static final int MTIME_MAINMENU_4 = 4;
        public static final int MTIME_MAINMENU_ANIMATION_APPEAR = 0;
        public static final int MTIME_MAINMENU_ANIMATION_BUTTONS_FADE = 3;
        public static final int MTIME_MAINMENU_RESULT_ACTION = 5;
        private int mAlpha;
        private boolean mBackboard;
        private Paint mPaint;
        public int mResult;
        public int mTime;
        public int mTimeCount;

        public MainMenu() {
            LOG.verbose(">> MainMenu()");
            this.mPaint = new Paint();
            this.mPaint.setAlpha(0);
            this.mAlpha = 0;
            GameView.this.mObjects.mMainMenuButtons.setAlpha(0);
            setBackboard(true);
        }

        public void loadImage(Context context) {
            LOG.verbose(">> loadImage()");
            GameView.this.mObjects.mMainMenuButtons.loadImage(context);
        }

        public void recycleImageInButton() {
            LOG.verbose(">> recycleImageInButton()");
            GameView.this.mObjects.mMainMenuButtons.recycleImageInButton();
        }

        public void animate() {
            switch (this.mTime) {
                case 0:
                    this.mPaint.setAlpha(0);
                    this.mAlpha = 0;
                    GameView.this.mObjects.mMainMenuButtons.setAlpha(0);
                    setBackboard(true);
                    this.mTime++;
                    this.mTimeCount = 0;
                    break;
                case 1:
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i > 4.0f / GameView.this.mSpeedRate) {
                        this.mTime++;
                        this.mTimeCount = 0;
                    }
                    break;
                case 2:
                    int alpha = this.mPaint.getAlpha() + ((int) (GameView.this.mSpeedRate * 15.0f));
                    int alpha2 = this.mAlpha + ((int) (GameView.this.mSpeedRate * 15.0f));
                    if (alpha2 < 250) {
                        this.mPaint.setAlpha(alpha2);
                        this.mAlpha = alpha2;
                        GameView.this.mObjects.mMainMenuButtons.setAlpha(alpha2);
                    } else {
                        this.mPaint.setAlpha(-1);
                        this.mAlpha = -1;
                        GameView.this.mObjects.mMainMenuButtons.setAlpha(-1);
                        if (GameView.this.mLogin == 0) {
                            if ((GameView.this.mAutoLogin && GameView.this.mEmail != null && GameView.this.mPassword != null) || (GameView.this.mPassword != null && GameView.this.mPassword.equals(JoinActivity.FACEBOOKID_PASSWORD))) {
                                ActionRunnable action = GameView.this.new ActionRunnable(2);
                                GameView.this.post(action);
                            } else {
                                ActionRunnable action2 = GameView.this.new ActionRunnable(GameView.this.mGameActivity.mLoginDlg);
                                GameView.this.post(action2);
                            }
                        } else if (GameView.this.mLogin == 1 && GameView.this.mEmail == null && GameView.this.mPassword == null) {
                            GameView.this.mLogin = 0;
                            ActionRunnable action3 = GameView.this.new ActionRunnable(GameView.this.mGameActivity.mLoginDlg);
                            GameView.this.post(action3);
                        }
                        setBackboard(false);
                        this.mTime = -1;
                    }
                    break;
                case 3:
                    GameView.this.mObjects.mMainMenuButtons.setAlpha(245);
                    this.mTime++;
                    break;
                case 4:
                    int alpha3 = GameView.this.mObjects.mMainMenuButtons.mButton[0].mPaint.getAlpha() - ((int) (GameView.this.mSpeedRate * 15.0f));
                    if (alpha3 > 0) {
                        GameView.this.mObjects.mMainMenuButtons.setAlpha(alpha3);
                    } else {
                        GameView.this.mObjects.mMainMenuButtons.setAlpha(-1);
                        this.mTime++;
                    }
                    break;
                case 5:
                    resultAction();
                    this.mTime = -1;
                    break;
            }
        }

        public void resultAction() {
            LOG.verbose(">> resultAction()");
            switch (this.mResult) {
                case 0:
                    if (GameView.this.mLogin == 1) {
                        ActionRunnable action = GameView.this.new ActionRunnable(4, new int[1], null);
                        GameView.this.post(action);
                    } else {
                        GameView.this.enterBattleRoom(GameView.CHARACTER_AI, 2);
                    }
                    break;
                case 1:
                    gotoInventoryGoogle();
                    break;
                case 2:
                    Bundle bundle = new Bundle();
                    bundle.putString("url", RankActivity.SERVER_URL_RANK + GameView.this.mEmail);
                    GameView.this.mGameActivity.movePage(RankActivity.class, bundle);
                    break;
                case 3:
                    GameView.this.mGameActivity.movePage(SetupActivity.class);
                    break;
                case 4:
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("url", NoticeActivity.SERVER_URL_NOTICE);
                    GameView.this.mGameActivity.movePage(NoticeActivity.class, bundle2);
                    break;
                case 5:
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("url", NoticeActivity.SERVER_URL_FACEBOOK);
                    GameView.this.mGameActivity.movePage(NoticeActivity.class, bundle3);
                    break;
            }
        }

        public void doDraw(Canvas canvas) {
            if (isBackboard()) {
                canvas.drawColor(GameView.this.mScreenOpening.mBgColor);
            }
            if (GameView.this.mBgPng != null) {
                GameView.this.mBgPng.setAlpha(this.mAlpha);
                GameView.this.mBgPng.draw(canvas);
                GameView.this.mObjects.mMainMenuButtons.doDraw(canvas);
            }
        }

        public boolean isBackboard() {
            return this.mBackboard;
        }

        public void setBackboard(boolean bBackboard) {
            LOG.verbose(">> setBackboard()");
            this.mBackboard = bBackboard;
            if (!bBackboard) {
            }
        }

        private void gotoInventoryOlleh() {
            Objects.Character character = GameView.this.mObjects.mCharacter[0];
            Objects.CharacterData characterdata = Objects.mCharacterDatas[character.mBodyType];
            Bundle bundle = new Bundle();
            bundle.putInt("displaywidth", GameView.this.getWidth());
            bundle.putInt("displayheight", GameView.this.getHeight());
            bundle.putInt("login", GameView.this.mLogin);
            bundle.putInt("level", GameView.this.mLevel);
            bundle.putLong("score", GameView.this.mScore);
            bundle.putInt("point", GameView.this.mPoint);
            if (character.mBodyType < 2) {
                bundle.putInt("bodyimgid", characterdata.mBodyImgIds[character.mBodyNum]);
                bundle.putInt("actionimgid", characterdata.mNormalActionImgIds[character.mBodyNum]);
                bundle.putInt("faceimgid", GameView.this.mObjects.mBodyFaceImgIds[character.mFaceImgnum]);
                bundle.putString("bodyimgpath", null);
                bundle.putString("actionimgpath", null);
                bundle.putString("faceimgpath", null);
            } else {
                bundle.putInt("bodyimgid", 0);
                bundle.putInt("actionimgid", 0);
                bundle.putInt("faceimgid", 0);
                bundle.putString("bodyimgpath", characterdata.mBodyImgPaths[character.mBodyNum]);
                bundle.putString("actionimgpath", characterdata.mNormalActionImgPaths[character.mBodyNum]);
                bundle.putString("faceimgpath", GameView.this.mObjects.mBodyFaceImgPaths[character.mFaceImgnum]);
            }
            bundle.putBoolean("soundon", GameView.this.mSoundon);
            GameView.this.mGameActivity.movePage(InventoryActivity_Olleh.class, 0, bundle);
        }

        private void gotoInventoryGoogle() {
            Objects.Character character = GameView.this.mObjects.mCharacter[0];
            Objects.CharacterData characterdata = Objects.mCharacterDatas[character.mBodyType];
            Bundle bundle = new Bundle();
            bundle.putInt("displaywidth", GameView.this.getWidth());
            bundle.putInt("displayheight", GameView.this.getHeight());
            bundle.putInt("login", GameView.this.mLogin);
            bundle.putInt("level", GameView.this.mLevel);
            bundle.putLong("score", GameView.this.mScore);
            bundle.putInt("point", GameView.this.mPoint);
            if (character.mBodyType < 2) {
                bundle.putInt("bodyimgid", characterdata.mBodyImgIds[character.mBodyNum]);
                bundle.putInt("actionimgid", characterdata.mNormalActionImgIds[character.mBodyNum]);
                bundle.putInt("faceimgid", GameView.this.mObjects.mBodyFaceImgIds[character.mFaceImgnum]);
                bundle.putString("bodyimgpath", null);
                bundle.putString("actionimgpath", null);
                bundle.putString("faceimgpath", null);
            } else {
                bundle.putInt("bodyimgid", 0);
                bundle.putInt("actionimgid", 0);
                bundle.putInt("faceimgid", 0);
                bundle.putString("bodyimgpath", characterdata.mBodyImgPaths[character.mBodyNum]);
                bundle.putString("actionimgpath", characterdata.mNormalActionImgPaths[character.mBodyNum]);
                bundle.putString("faceimgpath", GameView.this.mObjects.mBodyFaceImgPaths[character.mFaceImgnum]);
            }
            bundle.putBoolean("soundon", GameView.this.mSoundon);
            GameView.this.mGameActivity.movePage(InventoryActivity_Google.class, 0, bundle);
        }

        private void gotoInventoryT() {
            Objects.Character character = GameView.this.mObjects.mCharacter[0];
            Objects.CharacterData characterdata = Objects.mCharacterDatas[character.mBodyType];
            Bundle bundle = new Bundle();
            bundle.putInt("displaywidth", GameView.this.getWidth());
            bundle.putInt("displayheight", GameView.this.getHeight());
            bundle.putInt("login", GameView.this.mLogin);
            bundle.putInt("level", GameView.this.mLevel);
            bundle.putLong("score", GameView.this.mScore);
            bundle.putInt("point", GameView.this.mPoint);
            if (character.mBodyType < 2) {
                bundle.putInt("bodyimgid", characterdata.mBodyImgIds[character.mBodyNum]);
                bundle.putInt("actionimgid", characterdata.mNormalActionImgIds[character.mBodyNum]);
                bundle.putInt("faceimgid", GameView.this.mObjects.mBodyFaceImgIds[character.mFaceImgnum]);
                bundle.putString("bodyimgpath", null);
                bundle.putString("actionimgpath", null);
                bundle.putString("faceimgpath", null);
            } else {
                bundle.putInt("bodyimgid", 0);
                bundle.putInt("actionimgid", 0);
                bundle.putInt("faceimgid", 0);
                bundle.putString("bodyimgpath", characterdata.mBodyImgPaths[character.mBodyNum]);
                bundle.putString("actionimgpath", characterdata.mNormalActionImgPaths[character.mBodyNum]);
                bundle.putString("faceimgpath", GameView.this.mObjects.mBodyFaceImgPaths[character.mFaceImgnum]);
            }
            bundle.putBoolean("soundon", GameView.this.mSoundon);
            GameView.this.mGameActivity.movePage(InventoryActivity_T.class, 0, bundle);
        }
    }

    class BattleRoom {
        public static final int ANIM_NOT_NULL = -2;
        private static final int IMAGETOTALNUM = 2;
        public static final int IMAGE_SKILLWINDOW = 1;
        public static final int IMAGE_TITLE = 0;
        public static final int INACTIVE_ALPHA = 150;
        public static final int MTIME_BATTLEROOM_1 = 1;
        public static final int MTIME_BATTLEROOM_3 = 3;
        public static final int MTIME_BATTLEROOM_5 = 5;
        public static final int MTIME_BATTLEROOM_ANIM_ENTER_MAINMENU = 6;
        public static final int MTIME_BATTLEROOM_ANIM_START_APPEAR = 2;
        public static final int MTIME_BATTLEROOM_ANIM_START_APPEAR_RIGHTUSER = 4;
        public static final int MTIME_BATTLEROOM_ANIM_START_FADE = 0;
        public static final int SINGLETIME = 100;
        private static final int SKILLSETWINDOW_TOTALNUM = 5;
        public static final int SKILLWINDOW_TOTALNUM = 8;
        private boolean mAleadyRightUserReady = false;
        public boolean mExit;
        public String mFriendName;
        public boolean mGameStart;
        private Bitmap[] mImgBmp;
        public int[] mImgHeight;
        public int[] mImgWidth;
        public int[] mImgX;
        public int[] mImgY;
        private Paint mLeftNamePaint;
        public int mLeftNameX;
        public boolean mLeftReady;
        private Rect mLeftRect;
        public int mLeftRightNameY;
        private Paint mPaint;
        private Paint mRightNamePaint;
        public int mRightNameX;
        public boolean mRightReady;
        private Rect mRightRect;
        public int mSingleTimeCount;
        public int mSkillIndex;
        public int mSkillSetSlotY;
        public int mSkillSlotSize;
        public int mSkillSlotX;
        public int mSkillSlotY;
        public int[] mStandardX;
        public int[] mStandardY;
        public int mTime;
        public int mTimeCount;

        public BattleRoom(int displaywidth, int displayheight) {
            LOG.verbose(">> BattleRoom()");
            this.mImgBmp = new Bitmap[2];
            this.mImgX = new int[2];
            this.mImgY = new int[2];
            this.mImgWidth = new int[2];
            this.mImgHeight = new int[2];
            this.mStandardX = new int[2];
            this.mStandardY = new int[2];
            this.mPaint = new Paint();
            this.mTime = -1;
            this.mTimeCount = 0;
            this.mSkillIndex = -1;
            this.mSingleTimeCount = -1;
            this.mLeftReady = false;
            this.mRightReady = false;
            this.mGameStart = true;
            this.mExit = false;
            float widthrate = GameView.this.mWidthRate;
            float heightrate = GameView.this.mHeightRate;
            int space = (int) (21.0f * widthrate);
            this.mImgWidth[0] = (int) (689.0f * widthrate);
            this.mImgHeight[0] = (int) (100.0f * heightrate);
            this.mImgX[0] = (int) (30.0f * widthrate);
            this.mImgY[0] = space;
            this.mStandardY[0] = space;
            int y = (int) (500.0f * heightrate);
            this.mImgWidth[1] = displaywidth;
            this.mImgHeight[1] = (int) (300.0f * heightrate);
            this.mImgX[1] = 0;
            this.mImgY[1] = y;
            this.mStandardY[1] = y;
            int x = (int) (187.0f * widthrate);
            this.mSkillSlotX = x;
            this.mSkillSetSlotY = (int) (49.0f * heightrate);
            this.mSkillSlotY = (int) (178.0f * heightrate);
            this.mSkillSlotSize = (int) (112.0f * widthrate);
            int y2 = y + this.mSkillSlotY;
            GameView.this.mObjects.mSkills.mSkill[0].setSlot(0, x, y2, false, -1);
            GameView.this.mObjects.mSkills.mSkill[1].setSlot(1, x, y2, false, -1);
            int width = (int) (360.0f * widthrate);
            int height = (int) (500.0f * heightrate);
            int left = (int) (83.0f * widthrate);
            int right = left + width;
            int top = (int) (160.0f * heightrate);
            int bottom = top + height;
            int widhthalf = width / 2;
            this.mLeftNameX = left + widhthalf;
            this.mLeftRightNameY = ((int) (40.0f * heightrate)) + top;
            GameView.this.mObjects.mCharacter[0].setRect(left, top, right, bottom);
            this.mLeftRect = new Rect(left, top, right, bottom);
            int left2 = (int) (837.0f * widthrate);
            int right2 = left2 + width;
            this.mRightNameX = left2 + widhthalf;
            GameView.this.mObjects.mCharacter[2].setRect(left2, top, right2, bottom);
            GameView.this.mObjects.mCharacter[1].setRect(left2, top, right2, bottom);
            this.mRightRect = new Rect(left2, top, right2, bottom);
            float textsize = 15.0f * GameView.this.mDrawrate;
            this.mLeftNamePaint = new Paint();
            this.mLeftNamePaint.setTextAlign(Paint.Align.CENTER);
            this.mLeftNamePaint.setColor(-1);
            this.mLeftNamePaint.setTextSize(textsize);
            this.mRightNamePaint = new Paint();
            this.mRightNamePaint.setTextAlign(Paint.Align.CENTER);
            this.mRightNamePaint.setColor(-1);
            this.mRightNamePaint.setTextSize(textsize);
        }

        public void loadImage(Context context) {
            LOG.verbose(">> loadImage()");
            Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.title_battle);
            this.mImgBmp[0] = Bitmap.createScaledBitmap(bitmap, this.mImgWidth[0], this.mImgHeight[0], true);
            bitmap.recycle();
            int width = this.mImgWidth[1];
            int height = this.mImgHeight[1];
            Bitmap bitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmap2);
            InputStream is = context.getResources().openRawResource(R.drawable.bat_skill_bg);
            BitmapDrawable img = new BitmapDrawable(context.getResources(), is);
            img.setBounds(0, 0, width, height);
            img.draw(canvas);
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            int size = this.mSkillSlotSize;
            int left = this.mSkillSlotX;
            int top = this.mSkillSetSlotY;
            int bottom = top + size;
            int[] imgid = {R.drawable.slot_skilldeck_1, R.drawable.slot_skilldeck_2, R.drawable.slot_skilldeck_3, R.drawable.slot_skilldeck_4, R.drawable.slot_skilldeck_5};
            for (int i = 0; i < 5; i++) {
                InputStream is2 = context.getResources().openRawResource(imgid[i]);
                img = new BitmapDrawable(context.getResources(), is2);
                int right = left + size;
                img.setBounds(left, top, right, bottom);
                if (!GameView.this.mObjects.mSkills.mSetSkillActiveIndexTable[i]) {
                    img.setAlpha(INACTIVE_ALPHA);
                    img.draw(canvas);
                    if (is2 != null) {
                        try {
                            is2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    img.getBitmap().recycle();
                    InputStream is3 = context.getResources().openRawResource(R.drawable.lock);
                    img = new BitmapDrawable(context.getResources(), is3);
                    int locksize = size / 3;
                    int space = locksize / 6;
                    int lockright = right - space;
                    int lockbottom = bottom - space;
                    img.setBounds(lockright - locksize, lockbottom - ((int) (locksize * 1.16f)), lockright, lockbottom);
                    img.draw(canvas);
                    if (is3 != null) {
                        try {
                            is3.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    img.getBitmap().recycle();
                } else {
                    img.draw(canvas);
                    if (is2 != null) {
                        try {
                            is2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    img.getBitmap().recycle();
                }
                left += size;
            }
            int left2 = this.mSkillSlotX;
            int top2 = this.mSkillSlotY;
            int bottom2 = top2 + size;
            for (int i2 = 0; i2 < 8; i2++) {
                InputStream is4 = context.getResources().openRawResource(R.drawable.slot_n);
                img = new BitmapDrawable(context.getResources(), is4);
                img.setBounds(left2, top2, left2 + size, bottom2);
                img.draw(canvas);
                if (is4 != null) {
                    try {
                        is4.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                img.getBitmap().recycle();
                left2 += size;
            }
            img.getBitmap().recycle();
            this.mImgBmp[1] = bitmap2;
            GameView.this.mObjects.mBattleRoomButtons.loadImage(context);
            this.mPaint.setAlpha(-1);
            GameView.this.mObjects.mBattleRoomButtons.setAlpha(-1);
        }

        public void recycleImageInBattleRoom() {
            LOG.verbose(">> recycleImageInBattleRoom()");
            int length = this.mImgBmp.length;
            for (int i = 0; i < length; i++) {
                if (this.mImgBmp[i] != null) {
                    this.mImgBmp[i].recycle();
                    this.mImgBmp[i] = null;
                }
            }
            GameView.this.mObjects.mBattleRoomButtons.recycleImageInButton();
        }

        public void exitRoom() {
            LOG.verbose(">> exitRoom()");
            if (GameView.this.getScreenMode() != 4 || GameView.this.mScreenGameRoom.mRightCharacterIndex != 1) {
                ConnectNetwork connectnetwork = GameView.this.mGameActivity.mConnectNetwork;
                if (connectnetwork.isConnectSocket()) {
                    if (GameView.this.getScreenMode() == 4) {
                        GameView.this.mScreenGameRoom.exitGameRoom();
                    }
                    this.mExit = true;
                    String name = GameView.this.mEmail;
                    int index = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                    if (index == 1) {
                        name = GameView.this.mObjects.mCharacter[GameView.this.mScreenGameRoom.mRightCharacterIndex].mName;
                    }
                    String sendmsg = "|102|" + GameView.this.mRoomName + "|" + name;
                    String length = GameView.this.getLengthText(sendmsg.length());
                    GameView.this.mGameActivity.mCommonDlg.showProgressDlg();
                    new doSendSocketMsgTask(GameView.this, null).execute(String.valueOf(length) + sendmsg);
                } else {
                    this.mGameStart = false;
                    if (GameView.this.getScreenMode() == 5) {
                        GameView.this.mScreenResult.mTime = 15;
                        LOG.info("exitRoom ---> Main Menu");
                        GameView.this.mScreenResult.recycleImageInResultWindow();
                    } else {
                        this.mTime = 6;
                    }
                    boolean bInGameRoom = false;
                    if (GameView.this.getScreenMode() == 4) {
                        bInGameRoom = true;
                    }
                    GameView.this.setScreenMode(1);
                    LOG.info("exitRoom ---> Main Menu");
                    GameView.this.enterMainMenu(-1);
                    if (bInGameRoom) {
                        GameView.this.mScreenGameRoom.exitGameRoom();
                    }
                }
                GameView.this.mScreenBattleRoom.recycleImageInBattleRoom();
                return;
            }
            LOG.info("-- exitRoom() CHARACTER_RIGHTUSER");
        }

        public void ready() {
            LOG.verbose(">> ready()");
            if (this.mLeftReady) {
                GameView.this.playSound(3);
                return;
            }
            int index = GameView.this.mScreenGameRoom.mRightCharacterIndex;
            if (index == 1) {
                if (!GameView.this.mGameActivity.mConnectNetwork.isConnectSocket()) {
                    Toast.makeText(GameView.this.mContext, "Network disconnected, try again...", 0).show();
                    exitRoom();
                    return;
                } else {
                    String sendmsg = "|104|" + GameView.this.mObjects.mCharacter[index].mName;
                    String length = GameView.this.getLengthText(sendmsg.length());
                    GameView.this.mGameActivity.mCommonDlg.showProgressDlg();
                    new doSendSocketMsgTask(GameView.this, null).execute(String.valueOf(length) + sendmsg);
                }
            } else if (index == 2) {
                this.mLeftReady = true;
                GameView.this.mObjects.mCharacter[0].setImgnum(1);
            } else {
                Toast.makeText(GameView.this.mContext, "Wait...", 0).show();
            }
            GameView.this.playSound(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSkillSlot() {
            LOG.verbose(">> setSkillSlot()");
            Objects.Skills skills = GameView.this.mObjects.mSkills;
            int x = this.mImgX[1] + this.mSkillSlotX;
            for (int i = 0; i < skills.mSkillTotalnum; i++) {
                if (skills.mSkill[i].mSetNum > -1) {
                    skills.mSkill[i].setSlot(x, this.mImgY[1] + this.mSkillSetSlotY, -1, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                } else {
                    skills.mSkill[i].setSlot(x, this.mImgY[1] + this.mSkillSlotY, -1, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                }
            }
            Items item = GameView.this.mObjects.mItems;
            int index = item.getSetIndex(2);
            if (index > -1 && item.mItem[index].mNum > 0) {
                if (item.mItem[index] != null && skills.mSkill[item.mItem[index].mPower] != null) {
                    skills.mBerrySkill.set(skills.mSkill[item.mItem[index].mPower]);
                    skills.mBerrySkill.mSetNum = 4;
                    skills.mBerrySkill.mNum = -1;
                    skills.mBerrySkill.mBuy = true;
                    skills.mBerrySkill.setSlot(x, this.mImgY[1] + this.mSkillSetSlotY, -1, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                }
            } else {
                skills.mBerrySkill.mSetNum = -1;
            }
            GameView.this.mObjects.mSkills.initiateShowData();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSkillWindowY(int y) {
            LOG.verbose(">> setSkillWindowY()");
            this.mImgY[1] = y;
            GameView.this.mObjects.mSkills.setY(this.mSkillSetSlotY + y, this.mSkillSlotY + y);
        }

        public void animate() {
            switch (this.mTime) {
                case 0:
                    setSkillSlot();
                    this.mImgY[0] = this.mStandardY[0];
                    setSkillWindowY(this.mStandardY[1]);
                    this.mPaint.setAlpha(245);
                    GameView.this.mObjects.mBattleRoomButtons.setAlpha(245);
                    GameView.this.mObjects.mSkills.setAlpha(245);
                    GameView.this.mObjects.setCharactersImgnum(1);
                    this.mLeftNamePaint.setAlpha(245);
                    GameView.this.mObjects.mCharacter[0].setAlpha(245);
                    int index = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                    if (index > -1) {
                        this.mRightNamePaint.setAlpha(245);
                        GameView.this.mObjects.mCharacter[index].setAlpha(245);
                    }
                    this.mSingleTimeCount = -1;
                    this.mTime++;
                    this.mTimeCount = 0;
                    break;
                case 1:
                    float f = GameView.this.mDrawrate;
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    int speed = (int) (f * i * GameView.this.mSpeedRate);
                    int[] iArr = this.mImgY;
                    iArr[0] = iArr[0] - speed;
                    setSkillWindowY(this.mImgY[1] + (speed * 2));
                    int alpha = GameView.this.mObjects.mBattleRoomButtons.mButton[0].mPaint.getAlpha() - ((int) (10.0f * GameView.this.mSpeedRate));
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (alpha > 0) {
                        this.mPaint.setAlpha(alpha);
                        GameView.this.mObjects.mBattleRoomButtons.setAlpha(alpha);
                        GameView.this.mObjects.mSkills.setAlpha(alpha);
                        this.mLeftNamePaint.setAlpha(alpha);
                        GameView.this.mObjects.mCharacter[0].setAlpha(alpha);
                        int index2 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                        if (index2 > -1) {
                            this.mRightNamePaint.setAlpha(alpha);
                            GameView.this.mObjects.mCharacter[index2].setAlpha(alpha);
                        }
                    } else {
                        this.mPaint.setAlpha(0);
                        GameView.this.mObjects.mBattleRoomButtons.setAlpha(0);
                        GameView.this.mObjects.mSkills.setAlpha(0);
                        this.mLeftNamePaint.setAlpha(0);
                        GameView.this.mObjects.mCharacter[0].setAlpha(0);
                        int index3 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                        if (index3 > -1) {
                            this.mRightNamePaint.setAlpha(0);
                            GameView.this.mObjects.mCharacter[index3].setAlpha(0);
                        }
                        if (!this.mGameStart) {
                            GameView.this.enterMainMenu(0);
                        } else {
                            GameView.this.setScreenMode(4);
                        }
                        GameView.this.mScreenGameRoom.loadImage(GameView.this.mContext);
                        GameView.this.mScreenGameRoom.mTime = 0;
                        this.mTime = -1;
                        this.mTimeCount = 0;
                    }
                    break;
                case 2:
                    setSkillSlot();
                    this.mImgY[0] = -this.mImgHeight[0];
                    setSkillWindowY(GameView.this.getHeight() + this.mImgHeight[1]);
                    this.mPaint.setAlpha(0);
                    GameView.this.mObjects.mBattleRoomButtons.setAlpha(0);
                    GameView.this.mObjects.mSkills.setAlpha(0);
                    GameView.this.mObjects.setCharactersImgnum(0);
                    this.mLeftNamePaint.setAlpha(0);
                    GameView.this.mObjects.mCharacter[0].setAlpha(0);
                    Rect rect = this.mLeftRect;
                    GameView.this.mObjects.mCharacter[0].setRect(rect.left, rect.top, rect.right, rect.bottom);
                    int index4 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                    if (index4 > -1) {
                        this.mRightNamePaint.setAlpha(0);
                        GameView.this.mObjects.mCharacter[index4].setAlpha(0);
                        Rect rect2 = this.mRightRect;
                        GameView.this.mObjects.mCharacter[index4].setRect(rect2.left, rect2.top, rect2.right, rect2.bottom);
                    }
                    this.mLeftReady = false;
                    this.mRightReady = false;
                    this.mTime++;
                    this.mTimeCount = 0;
                    break;
                case 3:
                    LOG.debug("MTIME_BATTLEROOM_3");
                    boolean end = true;
                    float f2 = 10.0f * GameView.this.mDrawrate;
                    int i2 = this.mTimeCount;
                    this.mTimeCount = i2 + 1;
                    int speed2 = (int) ((f2 - i2) * GameView.this.mSpeedRate);
                    if (speed2 < GameView.this.mDrawrate) {
                        speed2 = (int) GameView.this.mDrawrate;
                    }
                    int[] iArr2 = this.mImgY;
                    iArr2[0] = iArr2[0] + speed2;
                    setSkillWindowY(this.mImgY[1] - (speed2 * 2));
                    if (this.mImgY[0] > this.mStandardY[0]) {
                        this.mImgY[0] = this.mStandardY[0];
                    } else {
                        end = false;
                    }
                    if (this.mImgY[1] < this.mStandardY[1]) {
                        setSkillWindowY(this.mStandardY[1]);
                    } else {
                        end = false;
                    }
                    int alpha2 = GameView.this.mObjects.mBattleRoomButtons.mButton[0].mPaint.getAlpha() + ((int) (10.0f * GameView.this.mSpeedRate));
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (alpha2 < 250) {
                        this.mPaint.setAlpha(alpha2);
                        GameView.this.mObjects.mBattleRoomButtons.setAlpha(alpha2);
                        GameView.this.mObjects.mSkills.setAlpha(alpha2);
                        this.mLeftNamePaint.setAlpha(alpha2);
                        GameView.this.mObjects.mCharacter[0].setAlpha(alpha2);
                        int index5 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                        if (index5 > -1) {
                            this.mRightNamePaint.setAlpha(alpha2);
                            GameView.this.mObjects.mCharacter[index5].setAlpha(alpha2);
                        }
                        end = false;
                    }
                    if (end) {
                        this.mPaint.setAlpha(-1);
                        GameView.this.mObjects.mBattleRoomButtons.setAlpha(-1);
                        GameView.this.mObjects.mSkills.setAlpha(-1);
                        this.mLeftNamePaint.setAlpha(-1);
                        GameView.this.mObjects.mCharacter[0].setAlpha(-1);
                        int index6 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                        if (index6 > -1) {
                            this.mRightNamePaint.setAlpha(-1);
                            GameView.this.mObjects.mCharacter[index6].setAlpha(-1);
                            if (index6 == 2 || isAleadyRightUserReady()) {
                                setAleadyRightUserReady(false);
                                if (!this.mRightReady) {
                                    this.mRightReady = true;
                                    GameView.this.mObjects.mCharacter[GameView.this.mScreenGameRoom.mRightCharacterIndex].setImgnum(1);
                                    GameView.this.playSound(2);
                                }
                            }
                        } else {
                            GameView.this.mScreenGameRoom.mRightCharacterIndex = -1;
                            if (GameView.this.mGameActivity.mConnectNetwork.isConnectSocket()) {
                                this.mSingleTimeCount = 0;
                                this.mTime++;
                                this.mTimeCount = 0;
                            }
                        }
                        this.mTime = -1;
                        this.mTimeCount = 0;
                    }
                    break;
                case 4:
                    int index7 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                    if (index7 > -1) {
                        this.mRightNamePaint.setAlpha(0);
                        GameView.this.mObjects.mCharacter[index7].setAlpha(0);
                        Rect rect3 = this.mRightRect;
                        GameView.this.mObjects.mCharacter[index7].setRect(rect3.left, rect3.top, rect3.right, rect3.bottom);
                    }
                    this.mTime++;
                    break;
                case 5:
                    LOG.debug("MTIME_BATTLEROOM_5");
                    int index8 = GameView.this.mScreenGameRoom.mRightCharacterIndex;
                    if (index8 > -1) {
                        int alpha3 = GameView.this.mObjects.mCharacter[index8].getAlpha() + ((int) (10.0f * GameView.this.mSpeedRate));
                        if (alpha3 < 250) {
                            this.mRightNamePaint.setAlpha(alpha3);
                            GameView.this.mObjects.mCharacter[index8].setAlpha(alpha3);
                        } else {
                            this.mRightNamePaint.setAlpha(-1);
                            GameView.this.mObjects.mCharacter[index8].setAlpha(-1);
                            if (index8 == 2 && !this.mRightReady) {
                                this.mRightReady = true;
                                GameView.this.mObjects.mCharacter[GameView.this.mScreenGameRoom.mRightCharacterIndex].setImgnum(1);
                                GameView.this.playSound(2);
                            }
                            this.mTime = -1;
                        }
                    } else {
                        this.mTime = -1;
                    }
                    break;
                case 6:
                    GameView.this.enterMainMenu(-1);
                    this.mTime = -1;
                    break;
            }
        }

        public int checkSkillWindow(int windowy, int totalnum, int iconindex) {
            LOG.verbose(">> checkSkillWindow()");
            int windowx = this.mSkillSlotX;
            int windowwidth = this.mSkillSlotSize;
            int windowwidthhalf = windowwidth / 2;
            int windowheighthalf = windowwidth / 2;
            Objects.Skills.Skill skill = GameView.this.mObjects.mSkills.mSkill[iconindex];
            int iconsize = GameView.this.mObjects.mSkills.mIconSize;
            int index = -1;
            float mindistance = 100000.0f;
            for (int i = 0; i < totalnum; i++) {
                int windowleft = windowx + (windowwidth * i);
                Rect rect = skill.mRect[0];
                if (windowleft < rect.right && windowleft + windowwidth > rect.left && windowy < rect.bottom + iconsize && windowy + windowwidth > rect.top) {
                    float distance = GameView.this.mObjects.getDistance(windowleft + windowwidthhalf, windowy + windowheighthalf, rect.centerX(), rect.centerY());
                    if (mindistance > distance) {
                        mindistance = distance;
                        index = i;
                    }
                }
            }
            return index;
        }

        public void doDraw(Canvas canvas) {
            int index;
            Objects objects = GameView.this.mObjects;
            if (GameView.this.mBgBmp != null) {
                canvas.drawBitmap(GameView.this.mBgBmp, 0.0f, 0.0f, (Paint) null);
            }
            if (this.mTime != 2) {
                GameView.this.mObjects.mCharacter[0].doDraw(canvas);
                String name = GameView.this.mObjects.mCharacter[0].mName;
                if (name != null) {
                    canvas.drawText(name, this.mLeftNameX, this.mLeftRightNameY, this.mLeftNamePaint);
                }
                if (this.mTime != 4 && (index = GameView.this.mScreenGameRoom.mRightCharacterIndex) > -1 && index < GameView.this.mObjects.mCharacter.length) {
                    GameView.this.mObjects.mCharacter[index].doDraw(canvas);
                    String name2 = GameView.this.mObjects.mCharacter[index].mName;
                    if (name2 != null) {
                        canvas.drawText(name2, this.mRightNameX, this.mLeftRightNameY, this.mRightNamePaint);
                    }
                }
                for (int i = 0; i < 2; i++) {
                    if (this.mImgBmp[i] != null) {
                        canvas.drawBitmap(this.mImgBmp[i], this.mImgX[i], this.mImgY[i], this.mPaint);
                    }
                }
                objects.mBattleRoomButtons.doDraw(canvas);
                objects.mSkills.doIconDraw(canvas, this.mSkillIndex);
            }
        }

        public void sendInviteMsg(ConnectNetwork connectnetwork, String userid) {
            LOG.verbose(">> sendInviteMsg()");
            String sendmsg = "|107|" + userid + "|" + GameView.this.mRoomName;
            String length = GameView.this.getLengthText(sendmsg.length());
            new doSendSocketMsgTask(GameView.this, null).execute(String.valueOf(length) + sendmsg);
        }

        public ArrayList<String> getUserData(String text, String devider, String friendname) {
            LOG.verbose(">> getUserData()");
            ArrayList<String> list = new ArrayList<>();
            int length = text.length();
            int startindex = 0;
            while (startindex < length) {
                int index = text.indexOf(devider, startindex);
                if (index < 0) {
                    list.add(text.substring(startindex));
                    return list;
                }
                String userid = text.substring(startindex, index);
                startindex = index + 1;
                if (startindex == length) {
                    userid = GameView.CHARACTER_AI;
                }
                if (friendname != null && userid.equals(friendname)) {
                    return null;
                }
                list.add(userid);
            }
            return list;
        }

        public void fillData(String data) {
            LOG.verbose(">> fillData()");
            UserAdapter adapter = new UserAdapter(GameView.this.mContext, R.layout.username_listrow, getUserData(data, ",", null));
            GameView.this.mGameActivity.mUserListView.setAdapter((ListAdapter) adapter);
        }

        class UserAdapter extends ArrayAdapter<String> {
            private int mResource;

            public UserAdapter(Context context, int resource, ArrayList<String> items) {
                super(context, resource, items);
                LOG.verbose(">> UserAdapter()");
                this.mResource = resource;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int position, View convertView, ViewGroup parent) {
                LOG.verbose(">> getView()");
                LinearLayout itemview = new LinearLayout(getContext());
                LayoutInflater vi = (LayoutInflater) getContext().getSystemService("layout_inflater");
                vi.inflate(this.mResource, (ViewGroup) itemview, true);
                String item = getItem(position);
                TextView textview = (TextView) itemview.findViewById(R.id.UserIdTextView);
                textview.setText(item);
                return itemview;
            }
        }

        public boolean isAleadyRightUserReady() {
            return this.mAleadyRightUserReady;
        }

        public void setAleadyRightUserReady(boolean bReady) {
            this.mAleadyRightUserReady = bReady;
        }
    }

    class GameRoom {
        private static final int AIFINDTIME_NULL = 10000;
        private static final int DIMALPHA = 127;
        private static final int END = 1;
        public static final int GAMETIME = 40;
        private static final int IMAGEBMP_TOTALNUM = 3;
        private static final int IMAGENUM_TOTALNUM = 13;
        public static final int IMAGE_BOTTOMPANEL = 2;
        public static final int IMAGE_CHALLENGE = 12;
        public static final int IMAGE_COUNT_NUM1 = 6;
        public static final int IMAGE_COUNT_NUM2 = 7;
        public static final int IMAGE_COUNT_NUM3 = 8;
        public static final int IMAGE_GO = 9;
        public static final int IMAGE_LEFTIMAGE = 0;
        public static final int IMAGE_NUM0 = 0;
        public static final int IMAGE_NUM1 = 1;
        public static final int IMAGE_NUM2 = 2;
        public static final int IMAGE_NUM3 = 3;
        public static final int IMAGE_NUM4 = 4;
        public static final int IMAGE_NUM5 = 5;
        public static final int IMAGE_RIGHTIMAGE = 1;
        public static final int IMAGE_YOULOSE = 11;
        public static final int IMAGE_YOUWIN = 10;
        public static final int MTIME_GAME_0 = 0;
        public static final int MTIME_GAME_1 = 1;
        public static final int MTIME_GAME_10 = 10;
        public static final int MTIME_GAME_13 = 13;
        public static final int MTIME_GAME_14 = 14;
        public static final int MTIME_GAME_15 = 15;
        public static final int MTIME_GAME_16 = 16;
        public static final int MTIME_GAME_17 = 17;
        public static final int MTIME_GAME_18 = 18;
        public static final int MTIME_GAME_2 = 2;
        public static final int MTIME_GAME_3 = 3;
        public static final int MTIME_GAME_4 = 4;
        public static final int MTIME_GAME_5 = 5;
        public static final int MTIME_GAME_6 = 6;
        public static final int MTIME_GAME_7 = 7;
        public static final int MTIME_GAME_8 = 8;
        public static final int MTIME_GAME_9 = 9;
        public static final int MTIME_GAME_PROGRESS = 11;
        public static final int MTIME_GAME_RESULT = 12;
        private static final int NOTICERECT = 0;
        private static final int NOTICERECT_CHALLENGE = 5;
        private static final int NOTICERECT_GO = 2;
        private static final int NOTICERECT_NUM = 1;
        private static final int NOTICERECT_YOULOSE = 4;
        private static final int NOTICERECT_YOUWIN = 3;
        private static final int NOTICE_IMGRECT_NUM = 7;
        private static final int START = 0;
        public boolean mAI;
        public int mAIFindTime;
        private int[] mAISkillIndexs;
        private Rate mAISkillRate;
        public boolean mBaseImg;
        private int[] mBottomPanelY;
        private Rect[] mCharacterRect;
        public int mCharacterSize;
        public int mCombo;
        private Paint mDimPaint;
        public int mDimTime;
        private boolean mExitGameRoom = false;
        public int mGameTime;
        public int mGameTimeCount;
        private Bitmap[] mImgBmp;
        private int[] mImgBmpHeight;
        private int[] mImgBmpWidth;
        public int[] mImgBmpX;
        public int[] mImgBmpY;
        public int mImgIndex;
        private BitmapDrawable[] mImgPng;
        public int mImgRightX;
        public int mImgSpace;
        private int[] mLeftImgX;
        public int mLeftNum;
        public int mLeftPenNum;
        public int mLeftSkilTimeCount;
        public int mLeftSkillNum;
        private int mNoticeAlpha;
        public int mNoticeImgnum;
        private Rect[] mNoticeRect;
        private Rect[] mNumRect;
        public boolean mResultPass;
        public int mRightCharacterIndex;
        private Canvas mRightImgCanvas;
        private int[] mRightImgX;
        public int mRightNum;
        public int mRightPenNum;
        public int mRightSkilTimeCount;
        public int mRightSkillNum;
        private int mSkillIconSize;
        private int mSkillIconSpace;
        private Rate mSkillRate;
        private int mSkillWindowX;
        private int mSkillWindowY;
        public int mTempLeftNum;
        public int mTime;
        public int mTimeCount;

        public GameRoom(Context context, int displaywidth, int displayheight) {
            LOG.verbose(">> GameRoom()");
            this.mImgBmpX = new int[3];
            this.mImgBmpY = new int[3];
            this.mImgBmpWidth = new int[3];
            this.mImgBmpHeight = new int[3];
            createImageInstance();
            this.mRightImgCanvas = new Canvas();
            this.mSkillRate = GameView.this.new Rate();
            this.mAISkillRate = GameView.this.new Rate();
            float widthrate = GameView.this.mWidthRate;
            float heightrate = GameView.this.mHeightRate;
            int[] iArr = this.mImgBmpWidth;
            int i = displaywidth / 2;
            this.mImgBmpWidth[1] = i;
            iArr[0] = i;
            int[] iArr2 = this.mImgBmpHeight;
            int i2 = (int) (718.0f * heightrate);
            this.mImgBmpHeight[1] = i2;
            iArr2[0] = i2;
            this.mImgBmpWidth[2] = displaywidth;
            this.mImgBmpHeight[2] = (int) (112.0f * heightrate);
            this.mImgBmpX[2] = 0;
            this.mImgBmpY[2] = displayheight;
            this.mNumRect = new Rect[2];
            int left = (int) (21.0f * widthrate);
            int top = (int) (588.0f * heightrate);
            int right = (int) (75.0f * widthrate);
            int bottom = this.mImgBmpHeight[2];
            this.mNumRect[0] = new Rect(left, top, right, bottom);
            int left2 = (int) (1111.0f * widthrate);
            int right2 = (int) (1165.0f * widthrate);
            this.mNumRect[1] = new Rect(left2, top, right2, bottom);
            this.mCharacterRect = new Rect[2];
            int left3 = (int) (180.0f * widthrate);
            int top2 = (int) (588.0f * heightrate);
            int right3 = (int) (315.0f * widthrate);
            int bottom2 = this.mImgBmpHeight[2];
            this.mCharacterRect[0] = new Rect(left3, top2, right3, bottom2);
            int left4 = (int) (966.0f * widthrate);
            int right4 = (int) (1101.0f * widthrate);
            this.mCharacterRect[1] = new Rect(left4, top2, right4, bottom2);
            this.mNoticeRect = new Rect[6];
            this.mNoticeRect[0] = new Rect();
            int left5 = (int) (563.0f * widthrate);
            int top3 = (int) (260.0f * heightrate);
            int right5 = (int) (718.0f * widthrate);
            int bottom3 = (int) (442.0f * heightrate);
            this.mNoticeRect[1] = new Rect(left5, top3, right5, bottom3);
            int left6 = (int) (473.0f * widthrate);
            int right6 = (int) (808.0f * widthrate);
            this.mNoticeRect[2] = new Rect(left6, top3, right6, bottom3);
            int left7 = (int) (378.0f * widthrate);
            int right7 = (int) (963.0f * widthrate);
            this.mNoticeRect[3] = new Rect(left7, top3, right7, bottom3);
            int left8 = (int) (303.0f * widthrate);
            int right8 = (int) (978.0f * widthrate);
            this.mNoticeRect[4] = new Rect(left8, top3, right8, bottom3);
            int left9 = (int) (303.0f * widthrate);
            int right9 = (int) (978.0f * widthrate);
            this.mNoticeRect[5] = new Rect(left9, top3, right9, bottom3);
            this.mLeftImgX = new int[2];
            this.mRightImgX = new int[2];
            this.mBottomPanelY = new int[2];
            this.mLeftImgX[0] = -this.mImgBmpWidth[0];
            this.mLeftImgX[1] = 0;
            this.mRightImgX[0] = displaywidth;
            this.mRightImgX[1] = this.mImgBmpWidth[0];
            this.mBottomPanelY[0] = displayheight;
            this.mBottomPanelY[1] = displayheight - this.mImgBmpHeight[2];
            this.mAISkillRate.set(new int[]{60, 5, 5, 5, 5, 5, 5, 5, 5});
            this.mImgSpace = 0;
            this.mImgRightX = displaywidth / 2;
            this.mDimPaint = new Paint();
            this.mDimPaint.setAlpha(127);
            this.mSkillWindowX = (int) (324.0f * widthrate);
            this.mSkillWindowY = (int) (39.0f * heightrate);
            this.mSkillIconSize = (int) (68.0f * widthrate);
            this.mSkillIconSpace = (int) (3.0f * heightrate);
            initMemberValue();
        }

        private void initMemberValue() {
            LOG.verbose(">> initMemberValue()");
            this.mNoticeImgnum = -1;
            this.mLeftSkillNum = -1;
            this.mRightSkillNum = -1;
            this.mLeftSkilTimeCount = -1;
            this.mRightSkilTimeCount = -1;
            this.mLeftPenNum = -1;
            this.mRightPenNum = -1;
            this.mGameTime = -1;
            this.mAI = false;
            this.mResultPass = false;
            this.mDimTime = -1;
            this.mRightCharacterIndex = 1;
        }

        public boolean isExitGameRoom() {
            return this.mExitGameRoom;
        }

        private void setExitGameRoom(boolean bExitGameRoom) {
            LOG.verbose(">> setExitGameRoom()");
            this.mExitGameRoom = bExitGameRoom;
        }

        public void exitGameRoom() {
            LOG.verbose(">> exitGameRoom()");
            setExitGameRoom(true);
            GameView.this.mScreenGameRoom.mTime = -1;
            this.mTime = -1;
            this.mTimeCount = -1;
            recycleImageInGameRoom();
            setExitGameRoom(false);
        }

        public void loadImage(Context context) {
            LOG.verbose(">> loadImage()");
            if (isExitGameRoom()) {
                LOG.info("-- loadImage() exitGameRoom");
                return;
            }
            float widthrate = GameView.this.mWidthRate;
            int imgwidth = this.mImgBmpWidth[1];
            int imgheight = this.mImgBmpHeight[1];
            this.mImgBmp[1] = Bitmap.createBitmap(imgwidth, imgheight, Bitmap.Config.RGB_565);
            this.mRightImgCanvas.setBitmap(this.mImgBmp[1]);
            int bottomwidth = this.mImgBmpWidth[2];
            int bottomheight = this.mImgBmpHeight[2];
            this.mImgBmp[2] = Bitmap.createBitmap(bottomwidth, bottomheight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(this.mImgBmp[2]);
            Drawable img = context.getResources().getDrawable(R.drawable.game_stat_bar);
            img.setBounds(0, 0, bottomwidth, bottomheight);
            img.draw(canvas);
            Drawable img2 = context.getResources().getDrawable(R.drawable.game_stat_text);
            img2.setBounds((int) (75.0f * widthrate), 0, (int) (171.0f * widthrate), bottomheight);
            img2.draw(canvas);
            img2.setBounds((int) (1165.0f * widthrate), 0, (int) (1261.0f * widthrate), bottomheight);
            img2.draw(canvas);
            int size = this.mSkillIconSize;
            int space = this.mSkillIconSpace;
            int left = this.mSkillWindowX + space;
            int top = this.mSkillWindowY;
            int bottom = top + size;
            Drawable img3 = context.getResources().getDrawable(R.drawable.game_skill_n);
            int length = GameView.this.mObjects.mSkills.mSetSkillActiveIndexTable.length;
            for (int i = 0; i < length; i++) {
                int right = left + size;
                img3.setBounds(left, top, right, bottom);
                img3.draw(canvas);
                left = right + space;
            }
            this.mImgPng[0] = getBitmapDrawable(context, R.drawable.game_stat_num_0);
            this.mImgPng[1] = getBitmapDrawable(context, R.drawable.game_stat_num_1);
            this.mImgPng[2] = getBitmapDrawable(context, R.drawable.game_stat_num_2);
            this.mImgPng[3] = getBitmapDrawable(context, R.drawable.game_stat_num_3);
            this.mImgPng[4] = getBitmapDrawable(context, R.drawable.game_stat_num_4);
            this.mImgPng[5] = getBitmapDrawable(context, R.drawable.game_stat_num_5);
            this.mImgPng[6] = getBitmapDrawable(context, R.drawable.game_count_num_1);
            this.mImgPng[7] = getBitmapDrawable(context, R.drawable.game_count_num_2);
            this.mImgPng[8] = getBitmapDrawable(context, R.drawable.game_count_num_3);
            this.mImgPng[9] = getBitmapDrawable(context, R.drawable.game_count_go);
            this.mImgPng[10] = getBitmapDrawable(context, R.drawable.game_result_win);
            this.mImgPng[11] = getBitmapDrawable(context, R.drawable.game_result_lose);
            this.mImgPng[12] = getBitmapDrawable(context, R.drawable.game_result_chall);
        }

        private BitmapDrawable getBitmapDrawable(Context oCon, int nResId) {
            LOG.verbose(">> BitmapDrawable()");
            Resources oResources = oCon.getResources();
            return new BitmapDrawable(oResources, oResources.openRawResource(nResId));
        }

        public void loadFindedImage(Context context, int imgnum, boolean baseimg) {
            Bitmap bitmap;
            Bitmap bitmap2;
            LOG.verbose(">> loadFindedImage()");
            if (isExitGameRoom()) {
                LOG.info("-- loadFindedImage() exitGameRoom");
                return;
            }
            int width = this.mImgBmpWidth[1];
            int height = this.mImgBmpHeight[1];
            Objects.FindImage image = baseimg ? GameView.this.mObjects.mBaseImages[imgnum] : GameView.this.mObjects.mImages[imgnum];
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            if (image.mImgPath == null) {
                bitmap = BitmapFactory.decodeResource(context.getResources(), image.mImgId, options);
            } else {
                bitmap = BitmapFactory.decodeFile(image.mImgPath, options);
            }
            if (bitmap == null) {
                image = GameView.this.mObjects.mBaseImages[GameView.this.randomNumber(0, GameView.this.mObjects.mBaseImagesTotalnum - 1)];
                bitmap = BitmapFactory.decodeResource(context.getResources(), image.mImgId, options);
            }
            if (bitmap != null) {
                this.mImgBmp[0] = Bitmap.createScaledBitmap(bitmap, width, height, true);
                bitmap.recycle();
                this.mRightImgCanvas.drawBitmap(this.mImgBmp[0], 0.0f, 0.0f, (Paint) null);
            }
            image.initiateRect();
            int[] indexs = new int[image.mFindRectTotalnum];
            int i = 0;
            while (i < 5) {
                int index = GameView.this.randomNumber(0, image.mFindRectTotalnum - 1);
                if (image.mFindRect[index] != null) {
                    if (image.mFindRect[index].mShow) {
                        i--;
                    } else {
                        image.setRect(index, width, height);
                        if (image.mFindRect[index].mImgPath == null) {
                            bitmap2 = BitmapFactory.decodeResource(context.getResources(), image.mFindRect[index].mImgId, options);
                        } else {
                            bitmap2 = BitmapFactory.decodeFile(image.mFindRect[index].mImgPath, options);
                        }
                        if (bitmap2 != null) {
                            Bitmap bitmap3 = Bitmap.createScaledBitmap(bitmap2, image.mFindRect[index].mRateWidth, image.mFindRect[index].mRateHeight, true);
                            this.mRightImgCanvas.drawBitmap(bitmap3, image.mFindRect[index].mRateX, image.mFindRect[index].mRateY, (Paint) null);
                            bitmap3.recycle();
                        }
                        indexs[i] = index;
                    }
                }
                i++;
            }
            GameView.this.mScreenResult.mAdImgnum = imgnum;
            GameView.this.mScreenResult.mAdBaseimg = baseimg;
        }

        public int getLeftSkillNum() {
            LOG.verbose(">> getLeftSkillNum()");
            return this.mLeftSkillNum < 10000 ? this.mLeftSkillNum : this.mLeftSkillNum - 10000;
        }

        public void loadInventoryData(Context context) {
            LOG.verbose(">> loadInventoryData()");
            Cursor c = GameView.this.mDbhelper.fetchCharacters(0L);
            if (c != null) {
                c.close();
            }
        }

        public void recycleImageInGameRoom() {
            LOG.info(">> recycleImageInGameRoom()");
            int length = this.mImgBmp.length;
            for (int i = 0; i < length; i++) {
                if (this.mImgBmp[i] != null) {
                    LOG.verbose("++ recycleImageInGameRoom() mImgBmp[" + i + "]");
                    this.mImgBmp[i].recycle();
                    this.mImgBmp[i] = null;
                }
            }
            int length2 = this.mImgPng.length;
            for (int i2 = 0; i2 < length2; i2++) {
                if (this.mImgPng[i2] != null && this.mImgPng[i2].getBitmap() != null) {
                    LOG.verbose("++ recycleImageInGameRoom() mImgPng[" + i2 + "]");
                    if (!this.mImgPng[i2].getBitmap().isRecycled()) {
                        this.mImgPng[i2].getBitmap().recycle();
                    }
                    this.mImgPng[i2] = null;
                }
            }
        }

        private void createImageInstance() {
            LOG.verbose(">> createImageInstance()");
            if (this.mImgBmp == null) {
                this.mImgBmp = new Bitmap[3];
            }
            if (this.mImgPng == null) {
                this.mImgPng = new BitmapDrawable[13];
            }
        }

        public void intiateData() {
            LOG.verbose(">> intiateData()");
            if (isExitGameRoom()) {
                LOG.info("-- intiateData() exitGameRoom");
                return;
            }
            Objects objects = GameView.this.mObjects;
            this.mSkillRate.set(new int[]{0, 100});
            objects.mSkills.setAlpha(-1);
            objects.mSkills.clearSetSkillIndexTable();
            if (this.mRightCharacterIndex == 2) {
                this.mAI = true;
                this.mAISkillRate.set(new int[]{60, 5, 5, 5, 5, 5, 5, 5, 5});
                this.mAISkillIndexs = getAISetSkillIndexs(this.mAISkillRate);
                this.mAIFindTime = getAIFindTime();
            } else {
                this.mAI = false;
            }
            this.mLeftNum = 5;
            this.mTempLeftNum = 5;
            this.mRightNum = 5;
            this.mCombo = 0;
            this.mGameTime = -1;
            this.mNoticeImgnum = -1;
            this.mLeftSkillNum = -1;
            this.mRightSkillNum = -1;
            this.mLeftSkilTimeCount = -1;
            this.mRightSkilTimeCount = -1;
            this.mLeftPenNum = -1;
            this.mRightPenNum = -1;
            GameView.this.mScreenBattleRoom.mLeftReady = false;
            GameView.this.mScreenBattleRoom.mRightReady = false;
            GameView.this.mObjects.setCharactersImgnum(3);
            GameView.this.mObjects.mCharacter[0].setAlpha(-1);
            if (this.mRightCharacterIndex > 0) {
                GameView.this.mObjects.mCharacter[this.mRightCharacterIndex].setAlpha(-1);
            }
            setPanelY(this.mBottomPanelY[0]);
            objects.mSkills.initiateData();
        }

        public Objects.FindImage getFindImage() {
            return this.mBaseImg ? GameView.this.mObjects.mBaseImages[this.mImgIndex] : GameView.this.mObjects.mImages[this.mImgIndex];
        }

        public void setRightCharacter(String name) {
            LOG.verbose(">> setRightCharacter()");
            if (name != null && !name.equals(GameView.CHARACTER_AI)) {
                this.mRightCharacterIndex = 1;
                GameView.this.mObjects.mCharacter[1].mName = name;
            } else {
                this.mRightCharacterIndex = 2;
                GameView.this.mScreenBattleRoom.mTime = 4;
            }
            GameView.this.mScreenBattleRoom.mRightReady = false;
            GameView.this.mObjects.mCharacter[this.mRightCharacterIndex].setImgnum(0);
        }

        private void setPanelY(int y) {
            LOG.verbose(">> setPanelY()");
            this.mImgBmpY[2] = y;
            int bottom = y + this.mImgBmpHeight[2];
            this.mNumRect[0].top = y;
            this.mNumRect[0].bottom = bottom;
            this.mNumRect[1].top = y;
            this.mNumRect[1].bottom = bottom;
            Rect rect = this.mCharacterRect[0];
            GameView.this.mObjects.mCharacter[0].setRect(rect.left, y, rect.right, bottom);
            Rect rect2 = this.mCharacterRect[1];
            GameView.this.mObjects.mCharacter[this.mRightCharacterIndex].setRect(rect2.left, y, rect2.right, bottom);
            setSkillIcon(this.mSkillWindowX, y + this.mSkillWindowY, -1, this.mSkillIconSize, this.mSkillIconSpace);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getAIFindTime() {
            LOG.verbose(">> getAIFindTime()");
            return GameView.this.randomNumber(100, 180);
        }

        private int[] getAISetSkillIndexs(Rate rate) {
            LOG.verbose(">> getAISetSkillIndexs()");
            int[] indexs = new int[4];
            int i = 0;
            while (i < 4) {
                int index = rate.mTable[GameView.this.randomNumber(0, 99)] - 1;
                boolean overlap = false;
                for (int j = 0; j < i; j++) {
                    if (indexs[j] == index && indexs[j] != -1) {
                        overlap = true;
                    }
                }
                if (overlap) {
                    i--;
                } else {
                    indexs[i] = index;
                }
                i++;
            }
            return indexs;
        }

        private void setSkillIcon(int windowx, int windowy, int time, int size, int space) {
            LOG.verbose(">> setSkillIcon()");
            Objects.Skills skills = GameView.this.mObjects.mSkills;
            for (int i = 0; i < 4; i++) {
                int index = skills.getSetSkillIndex(i);
                if (index > -1) {
                    skills.mSkill[index].setSlot(windowx, windowy, time, size, space, 0);
                    skills.mSkill[index].setActionIconSlot(skills.mSkill[index].mRect[0]);
                }
            }
            if (skills.mBerrySkill != null && skills.mBerrySkill.mSetNum > -1) {
                skills.mBerrySkill.setSlot(windowx, windowy, time, size, space, 0);
                skills.mBerrySkill.setActionIconSlot(skills.mBerrySkill.mRect[0]);
            }
        }

        public void sendFindData(int skillindex, int penindex) {
            String skill;
            String pen;
            LOG.verbose(">> sendFindData()");
            int index = GameView.this.mScreenGameRoom.mRightCharacterIndex;
            if (index > -1) {
                if (skillindex < 0) {
                    skill = "99";
                } else if (skillindex < 10) {
                    skill = InAppError.SUCCESS + skillindex;
                } else {
                    skill = new StringBuilder().append(skillindex).toString();
                }
                if (penindex < 0) {
                    pen = "99";
                } else if (penindex < 10) {
                    pen = InAppError.SUCCESS + penindex;
                } else {
                    pen = new StringBuilder().append(penindex).toString();
                }
                String sendmsg = "|106|" + GameView.this.mObjects.mCharacter[index].mName + "|" + this.mLeftNum + "," + skill + "," + pen;
                String length = GameView.this.getLengthText(sendmsg.length());
                new doSendSocketMsgTask(GameView.this, null).execute(String.valueOf(length) + sendmsg);
            }
        }

        public void spendItem(int index, int quantity) {
            LOG.verbose(">> spendItem()");
            Items items = GameView.this.mObjects.mItems;
            Items.Item item = items.mItem[index];
            int i = item.mNum - 1;
            item.mNum = i;
            if (i < 1) {
                items.destroyItem(index);
                items.setSetTable();
            }
        }

        public void animate() {
            int index;
            switch (this.mTime) {
                case 0:
                    LOG.info("MTIME_GAME_0 틀린 그림 나오기");
                    int baseimagestotalnum = GameView.this.mObjects.mBaseImagesTotalnum;
                    int imagestotalnum = GameView.this.mObjects.mImagesTotalnum;
                    boolean baseimg = true;
                    if (imagestotalnum <= 0 || GameView.this.randomNumber(0, baseimagestotalnum + imagestotalnum) < baseimagestotalnum) {
                        index = GameView.this.randomNumber(0, baseimagestotalnum - 1);
                    } else {
                        index = GameView.this.randomNumber(0, imagestotalnum - 1);
                        baseimg = false;
                    }
                    loadFindedImage(GameView.this.mContext, index, baseimg);
                    this.mImgIndex = index;
                    this.mBaseImg = baseimg;
                    if (GameView.this.mLogin == 1) {
                        loadInventoryData(GameView.this.mContext);
                    }
                    this.mImgBmpX[0] = this.mLeftImgX[0];
                    this.mImgBmpX[1] = this.mRightImgX[0];
                    this.mImgBmpY[2] = this.mBottomPanelY[0];
                    this.mNoticeImgnum = 8;
                    this.mNoticeAlpha = -1;
                    Rect rect = this.mNoticeRect[1];
                    this.mNoticeRect[0].set(rect.centerX(), rect.top, rect.centerX(), rect.bottom);
                    this.mDimPaint.setAlpha(0);
                    intiateData();
                    this.mTimeCount = 0;
                    this.mTime++;
                    break;
                case 1:
                    LOG.info("MTIME_GAME_1:\t//가운데로 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    this.mTimeCount = this.mTimeCount + 1;
                    int speed = (int) ((30 - r13) * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    if (speed < drawrate) {
                        speed = drawrate;
                    }
                    int[] iArr = this.mImgBmpX;
                    iArr[0] = iArr[0] + speed;
                    int[] iArr2 = this.mImgBmpX;
                    iArr2[1] = iArr2[1] - speed;
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (this.mImgBmpX[0] > this.mLeftImgX[1] && this.mImgBmpX[1] < this.mRightImgX[1]) {
                        this.mImgBmpX[0] = this.mLeftImgX[1];
                        this.mImgBmpX[1] = this.mRightImgX[1];
                        this.mTimeCount = 0;
                        this.mTime++;
                        break;
                    }
                    break;
                case 2:
                    LOG.info("MTIME_GAME_2:\t//바깥쪽으로 살짝 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed2 = (int) (2.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int[] iArr3 = this.mImgBmpX;
                    iArr3[0] = iArr3[0] - speed2;
                    int[] iArr4 = this.mImgBmpX;
                    iArr4[1] = iArr4[1] + speed2;
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i > 5.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 3:
                    LOG.info("MTIME_GAME_3:\t//안쪽으로 살짝 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed3 = (int) (2.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int[] iArr5 = this.mImgBmpX;
                    iArr5[0] = iArr5[0] + speed3;
                    int[] iArr6 = this.mImgBmpX;
                    iArr6[1] = iArr6[1] - speed3;
                    int i2 = this.mTimeCount;
                    this.mTimeCount = i2 + 1;
                    if (i2 > 5.0f / GameView.this.mSpeedRate) {
                        this.mImgBmpX[0] = this.mLeftImgX[1];
                        this.mImgBmpX[1] = this.mRightImgX[1];
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 4:
                    LOG.info("MTIME_GAME_4:\t바닥판넬 나오기 //위로 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    this.mTimeCount = this.mTimeCount + 1;
                    int speed4 = (int) ((8 - r13) * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate2 = (int) GameView.this.mDrawrate;
                    if (speed4 < drawrate2) {
                        speed4 = drawrate2;
                    }
                    setPanelY(this.mImgBmpY[2] - speed4);
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (this.mImgBmpY[2] < this.mBottomPanelY[1]) {
                        setPanelY(this.mBottomPanelY[1]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 5:
                    LOG.info("MTIME_GAME_5:\t//아래쪽으로 살짝 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed5 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    setPanelY(this.mImgBmpY[2] + speed5);
                    int i3 = this.mTimeCount;
                    this.mTimeCount = i3 + 1;
                    if (i3 > 4.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 6:
                    LOG.info("MTIME_GAME_6:\t//위쪽으로 살짝 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed6 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    setPanelY(this.mImgBmpY[2] - speed6);
                    int i4 = this.mTimeCount;
                    this.mTimeCount = i4 + 1;
                    if (i4 > 4.0f / GameView.this.mSpeedRate) {
                        setPanelY(this.mBottomPanelY[1]);
                        this.mNoticeImgnum = 8;
                        this.mNoticeAlpha = -1;
                        Rect rect2 = this.mNoticeRect[1];
                        this.mNoticeRect[0].set(rect2.centerX(), rect2.top, rect2.centerX(), rect2.bottom);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 7:
                    LOG.info("MTIME_GAME_7:\t//카운트 늘리기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed7 = (int) (6.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    this.mNoticeRect[0].left -= speed7;
                    this.mNoticeRect[0].right += speed7;
                    int alpha = this.mDimPaint.getAlpha() + 20;
                    if (alpha < 127) {
                        this.mDimPaint.setAlpha(alpha);
                    } else {
                        this.mDimPaint.setAlpha(127);
                    }
                    if (this.mNoticeRect[0].left < this.mNoticeRect[1].left) {
                        this.mNoticeRect[0].set(this.mNoticeRect[1]);
                        GameView.this.playSound(6);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 8:
                    LOG.info("MTIME_GAME_8:\t//카운트 줄이기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int alpha2 = this.mDimPaint.getAlpha() + 20;
                    if (alpha2 < 127) {
                        this.mDimPaint.setAlpha(alpha2);
                    } else {
                        this.mDimPaint.setAlpha(127);
                    }
                    int i5 = this.mTimeCount;
                    this.mTimeCount = i5 + 1;
                    if (i5 > 30.0f / GameView.this.mSpeedRate) {
                        int speed8 = (int) (6.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                        this.mNoticeRect[0].left += speed8;
                        this.mNoticeRect[0].right -= speed8;
                        if (this.mNoticeRect[0].left > this.mNoticeRect[1].centerX()) {
                            this.mNoticeRect[0].left = this.mNoticeRect[1].centerX();
                            this.mNoticeRect[0].right = this.mNoticeRect[1].centerX();
                            int i6 = this.mNoticeImgnum - 1;
                            this.mNoticeImgnum = i6;
                            if (i6 >= 6) {
                                this.mDimPaint.setAlpha(127);
                                this.mTimeCount = 0;
                                this.mTime = 7;
                            } else {
                                this.mDimPaint.setAlpha(127);
                                this.mNoticeImgnum = 9;
                                this.mNoticeAlpha = -1;
                                this.mTimeCount = 0;
                                this.mTime++;
                            }
                        }
                    }
                    break;
                case 9:
                    LOG.info("MTIME_GAME_9:\t//Go 늘리기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed9 = (int) (10.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    this.mNoticeRect[0].left -= speed9;
                    this.mNoticeRect[0].right += speed9;
                    if (this.mNoticeRect[0].left < this.mNoticeRect[2].left) {
                        this.mNoticeRect[0].set(this.mNoticeRect[2]);
                        GameView.this.playSound(6);
                        this.mNoticeAlpha = 255;
                        this.mTime++;
                    }
                    break;
                case 10:
                    LOG.info("MTIME_GAME_10: //Go 사라지기 mSpeedRate: " + GameView.this.mSpeedRate);
                    float delay = 30.0f / GameView.this.mSpeedRate;
                    if (this.mTimeCount == delay) {
                        GameView.this.playSound(5);
                    }
                    int i7 = this.mTimeCount;
                    this.mTimeCount = i7 + 1;
                    if (i7 > delay) {
                        int speed10 = (int) (10.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                        int speed1 = (int) (speed10 * 1.84f);
                        this.mNoticeRect[0].left -= speed1;
                        this.mNoticeRect[0].top -= speed10;
                        this.mNoticeRect[0].right += speed1;
                        this.mNoticeRect[0].bottom += speed10;
                        int alpha3 = this.mNoticeAlpha - ((int) (30.0f * GameView.this.mSpeedRate));
                        if (alpha3 > 0) {
                            this.mNoticeAlpha = alpha3;
                        } else {
                            this.mNoticeAlpha = 0;
                            this.mNoticeImgnum = -1;
                            this.mGameTime = 0;
                            this.mGameTimeCount = 0;
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                    }
                    break;
                case 11:
                    if (!getFindImage().animation(GameView.this.mSpeedRate, this.mImgSpace, this.mImgRightX)) {
                        int index2 = this.mRightSkillNum;
                        if (index2 > -1 && index2 < GameView.this.mObjects.mSkills.mSkillTotalnum) {
                            GameView.this.mObjects.mSkills.mSkill[index2].animationAction(GameView.this.mSpeedRate);
                        }
                        if (this.mLeftNum < 1 || this.mRightNum < 1 || this.mGameTime >= 40) {
                            Dialog dlg = GameView.this.mGameActivity.mCommonDlg.getProgressDlg();
                            if (this.mTempLeftNum > 0 && this.mRightNum > 0 && this.mGameTime < 40) {
                                if (!dlg.isShowing()) {
                                    ActionRunnable action = GameView.this.new ActionRunnable(dlg);
                                    GameView.this.post(action);
                                }
                            } else {
                                dlg.cancel();
                                this.mDimPaint.setAlpha(0);
                                this.mNoticeImgnum = this.mLeftNum < this.mRightNum ? 10 : 11;
                                if (this.mResultPass) {
                                    this.mNoticeImgnum = 12;
                                }
                                GameView.this.mScreenResult.setGameResultData(5 - this.mLeftNum, 5 - this.mRightNum, 40 - this.mGameTime, this.mCombo);
                                this.mGameTime = -1;
                                this.mTime++;
                            }
                        }
                    }
                    break;
                case 12:
                    LOG.info("MTIME_GAME_RESULT 결과 알림 mSpeedRate: " + GameView.this.mSpeedRate);
                    this.mRightSkillNum = -1;
                    Rect rect3 = this.mNoticeRect[this.mNoticeImgnum - 7];
                    this.mNoticeRect[0].set(rect3.left, rect3.centerY(), rect3.right, rect3.centerY());
                    this.mNoticeAlpha = 250;
                    this.mDimPaint.setAlpha(0);
                    GameView.this.playSound(5);
                    this.mTimeCount = 0;
                    this.mTime++;
                    break;
                case 13:
                    LOG.info("MTIME_GAME_13: //늘리기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed11 = (int) (5.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    this.mNoticeRect[0].top -= speed11;
                    this.mNoticeRect[0].bottom += speed11;
                    int alpha4 = this.mDimPaint.getAlpha() + 20;
                    if (alpha4 < 127) {
                        this.mDimPaint.setAlpha(alpha4);
                    } else {
                        this.mDimPaint.setAlpha(127);
                    }
                    if (this.mNoticeRect[0].top < this.mNoticeRect[this.mNoticeImgnum - 7].top) {
                        this.mNoticeRect[0].set(this.mNoticeRect[this.mNoticeImgnum - 7]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 14:
                    LOG.info("MTIME_GAME_14: //사라지기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int i8 = this.mTimeCount;
                    this.mTimeCount = i8 + 1;
                    if (i8 > 30.0f / GameView.this.mSpeedRate) {
                        int speed12 = (int) (6.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                        this.mNoticeRect[0].left += speed12;
                        this.mNoticeRect[0].top += speed12;
                        this.mNoticeRect[0].right -= speed12;
                        this.mNoticeRect[0].bottom -= speed12;
                        int alpha5 = this.mDimPaint.getAlpha() + 20;
                        if (alpha5 < 127) {
                            this.mDimPaint.setAlpha(alpha5);
                        } else {
                            this.mDimPaint.setAlpha(127);
                        }
                        int alpha6 = this.mNoticeAlpha - ((int) (30.0f * GameView.this.mSpeedRate));
                        if (alpha6 > 0) {
                            this.mNoticeAlpha = alpha6;
                        } else {
                            this.mNoticeAlpha = 0;
                            this.mDimPaint.setAlpha(127);
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                    }
                    break;
                case 15:
                    LOG.info("MTIME_GAME_15: 틀린 그림 사라지기 //안쪽으로 살짝 이동하기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed13 = (int) (2.0f * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int[] iArr7 = this.mImgBmpX;
                    iArr7[0] = iArr7[0] + speed13;
                    int[] iArr8 = this.mImgBmpX;
                    iArr8[1] = iArr8[1] - speed13;
                    getFindImage().moveRect(speed13, -speed13);
                    int alpha7 = this.mDimPaint.getAlpha() - 20;
                    if (alpha7 > 0) {
                        this.mDimPaint.setAlpha(alpha7);
                    } else {
                        this.mDimPaint.setAlpha(0);
                    }
                    int i9 = this.mTimeCount;
                    this.mTimeCount = i9 + 1;
                    if (i9 > 3.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case MTIME_GAME_16 /* 16 */:
                    LOG.info("MTIME_GAME_16: //바깥쪽으로 사라지기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int i10 = this.mTimeCount;
                    this.mTimeCount = i10 + 1;
                    int speed14 = (int) (i10 * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int[] iArr9 = this.mImgBmpX;
                    iArr9[0] = iArr9[0] - speed14;
                    int[] iArr10 = this.mImgBmpX;
                    iArr10[1] = iArr10[1] + speed14;
                    getFindImage().moveRect(-speed14, speed14);
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    int alpha8 = this.mDimPaint.getAlpha() - 20;
                    if (alpha8 > 0) {
                        this.mDimPaint.setAlpha(alpha8);
                    } else {
                        this.mDimPaint.setAlpha(0);
                    }
                    if (this.mImgBmpX[1] > this.mRightImgX[0]) {
                        this.mImgBmpX[0] = this.mLeftImgX[0];
                        this.mImgBmpX[1] = this.mRightImgX[0];
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case MTIME_GAME_17 /* 17 */:
                    LOG.info("MTIME_GAME_17: 바닥판넬 나가기 //위쪽으로 살짝 이동 mSpeedRate: " + GameView.this.mSpeedRate);
                    int speed15 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    setPanelY(this.mImgBmpY[2] - speed15);
                    int alpha9 = this.mDimPaint.getAlpha() - 20;
                    if (alpha9 > 0) {
                        this.mDimPaint.setAlpha(alpha9);
                    } else {
                        this.mDimPaint.setAlpha(0);
                    }
                    int i11 = this.mTimeCount;
                    this.mTimeCount = i11 + 1;
                    if (i11 > 3.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case MTIME_GAME_18 /* 18 */:
                    LOG.info("MTIME_GAME_18: //아래쪽으로 사라지기 mSpeedRate: " + GameView.this.mSpeedRate);
                    int i12 = this.mTimeCount;
                    this.mTimeCount = i12 + 1;
                    int speed16 = (int) (i12 * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    setPanelY(this.mImgBmpY[2] + speed16);
                    int alpha10 = this.mDimPaint.getAlpha() - 20;
                    if (alpha10 > 0) {
                        this.mDimPaint.setAlpha(alpha10);
                    } else {
                        this.mDimPaint.setAlpha(0);
                    }
                    if (this.mImgBmpY[2] > this.mBottomPanelY[0]) {
                        setPanelY(this.mBottomPanelY[0]);
                        recycleImageInGameRoom();
                        this.mAIFindTime = 10000;
                        if (!this.mResultPass) {
                            GameView.this.mScreenResult.loadImage(GameView.this.mContext);
                            GameView.this.mScreenResult.mTime = 0;
                            GameView.this.mScreenResult.mWinLoseImgnum = this.mNoticeImgnum == 10 ? 0 : 1;
                            this.mNoticeImgnum = -1;
                            GameView.this.setScreenMode(5);
                        } else {
                            GameView.this.mScreenBattleRoom.mTime = 2;
                            GameView.this.setScreenMode(3);
                            this.mResultPass = false;
                        }
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
            }
        }

        public void doDraw(Canvas canvas) {
            if (!isExitGameRoom()) {
                if (this.mTime != 11 && GameView.this.mBgBmp != null) {
                    canvas.drawBitmap(GameView.this.mBgBmp, 0.0f, 0.0f, (Paint) null);
                }
                if (this.mTime > 0) {
                    for (int i = 0; i < 3; i++) {
                        if (this.mImgBmp[i] != null) {
                            canvas.drawBitmap(this.mImgBmp[i], this.mImgBmpX[i], this.mImgBmpY[i], (Paint) null);
                        }
                    }
                    int num = this.mLeftNum;
                    if (num > -1 && num <= 5 && this.mImgPng[num] != null) {
                        this.mImgPng[num].setBounds(this.mNumRect[0]);
                        this.mImgPng[num].draw(canvas);
                    }
                    int num2 = this.mRightNum;
                    if (num2 > -1 && num2 <= 5 && this.mImgPng[num2] != null) {
                        this.mImgPng[num2].setBounds(this.mNumRect[1]);
                        this.mImgPng[num2].draw(canvas);
                    }
                    getFindImage().doDraw(canvas, this.mImgSpace, this.mImgRightX);
                    if (this.mDimTime > -1) {
                        canvas.drawRect(0.0f, 0.0f, this.mRightImgX[0], this.mImgBmpHeight[1], this.mDimPaint);
                    }
                    int num3 = this.mNoticeImgnum;
                    if (num3 >= 6 && num3 < 13 && this.mImgPng[num3] != null) {
                        canvas.drawRect(0.0f, 0.0f, this.mRightImgX[0], this.mImgBmpHeight[1], this.mDimPaint);
                        if (this.mImgPng[num3] != null) {
                            this.mImgPng[num3].setBounds(this.mNoticeRect[0]);
                            this.mImgPng[num3].setAlpha(this.mNoticeAlpha);
                            this.mImgPng[num3].draw(canvas);
                        }
                    }
                    GameView.this.mObjects.mCharacter[0].doDraw(canvas);
                    if (!this.mResultPass && this.mRightCharacterIndex > -1) {
                        GameView.this.mObjects.mCharacter[this.mRightCharacterIndex].doDraw(canvas);
                    }
                    GameView.this.mObjects.mSkills.doActionDraw(canvas, this.mLeftSkillNum, this.mRightSkillNum);
                }
            }
        }
    }

    class Result {
        public static final int ADTEXT_SIZE = 25;
        private static final int END = 1;
        private static final int IMAGEBMP_TOTALNUM = 1;
        private static final int IMAGEPNG_TOTALNUM = 2;
        public static final int IMAGE_ADVERTISE = 0;
        public static final int IMAGE_LOSE = 1;
        public static final int IMAGE_WIN = 0;
        public static final int MTIME_APPEAR_IMAGE = 0;
        public static final int MTIME_EXIT_BUTTON = 15;
        public static final int MTIME_FADE_BUTTON = 10;
        public static final int MTIME_FADE_DOWN_SOFT_IMAGE = 14;
        public static final int MTIME_FADE_UP_SOFT_IMAGE = 13;
        public static final int MTIME_MOVE_CENTER_IMAGE = 4;
        public static final int MTIME_MOVE_DOWN_SOFT_IMAGE = 2;
        public static final int MTIME_MOVE_INSIDE_IMAGE = 6;
        public static final int MTIME_MOVE_INSIDE_SOFT_IMAGE = 11;
        public static final int MTIME_MOVE_OUTSIDE_IMAGE = 5;
        public static final int MTIME_MOVE_OUTSIDE_SOFT_IMAGE = 12;
        public static final int MTIME_MOVE_UP_IMAGE = 1;
        public static final int MTIME_MOVE_UP_SOFT_IMAGE = 3;
        public static final int MTIME_RESULT_IMAGE = 7;
        public static final int MTIME_RESULT_SOUND = 8;
        public static final int MTIME_STAND_BY = 9;
        private static final int RECT = 2;
        private static final int START = 0;
        public boolean mAdBaseimg;
        public int mAdImgnum;
        private Canvas mAdvertiseCanvas;
        public int[] mAdvertiseImgY;
        private Rect mCharacterRect;
        public int mCombo;
        public int[] mExitButtonX;
        public int[] mFacebookButtonX;
        public int mFindNum;
        private Bitmap[] mImgBmp;
        public int[] mImgHeight;
        private Drawable[] mImgPng;
        private Paint mImgRectPaint;
        public int[] mImgWidth;
        public int[] mImgX;
        public int[] mImgY;
        public int[] mOnemoreButtonX;
        public int mOtherFindNum;
        public int mRemainTime;
        private Paint mTextPaint;
        public int mTime;
        public int mTimeCount;
        public int mWinLoseAlpha;
        public int mWinLoseImgnum;
        private Rect[] mWinLoseRect;

        public Result(Context context, int displaywidth, int displayheight) {
            LOG.verbose(">> Result()");
            this.mImgBmp = new Bitmap[1];
            this.mImgX = new int[1];
            this.mImgY = new int[1];
            this.mImgWidth = new int[1];
            this.mImgHeight = new int[1];
            this.mImgPng = new Drawable[2];
            this.mImgPng[0] = context.getResources().getDrawable(R.drawable.result_win);
            this.mImgPng[1] = context.getResources().getDrawable(R.drawable.result_lose);
            this.mAdvertiseCanvas = new Canvas();
            this.mWinLoseImgnum = 0;
            this.mTime = -1;
            float widthrate = GameView.this.mWidthRate;
            float heightrate = GameView.this.mHeightRate;
            this.mTextPaint = new Paint();
            this.mTextPaint.setTextSize(25.0f * widthrate);
            this.mTextPaint.setColor(Color.parseColor("#54443b"));
            this.mImgRectPaint = new Paint();
            this.mImgRectPaint.setStyle(Paint.Style.STROKE);
            this.mImgRectPaint.setStrokeWidth(6.0f * widthrate);
            this.mImgRectPaint.setColor(Color.parseColor("#543b0e"));
            this.mImgWidth[0] = (int) (772.0f * widthrate);
            this.mImgHeight[0] = (int) (750.0f * heightrate);
            this.mImgX[0] = (int) (501.0f * widthrate);
            this.mImgY[0] = (int) (23.0f * heightrate);
            this.mCharacterRect = new Rect((int) (83.0f * widthrate), (int) (236.0f * heightrate), (int) (443.0f * widthrate), (int) (736.0f * heightrate));
            this.mAdvertiseImgY = new int[2];
            this.mAdvertiseImgY[0] = displayheight;
            this.mAdvertiseImgY[1] = this.mImgY[0];
            this.mWinLoseRect = new Rect[3];
            this.mWinLoseRect[2] = new Rect();
            int left = (int) (48.0f * widthrate);
            int top = (int) (107.0f * widthrate);
            int right = (int) (478.0f * widthrate);
            int bottom = (int) (210.0f * widthrate);
            this.mWinLoseRect[1] = new Rect(left, top, right, bottom);
            Rect rect = this.mWinLoseRect[1];
            this.mWinLoseRect[0] = new Rect(left - rect.width(), top - rect.height(), rect.width() + right, rect.height() + bottom);
            this.mOnemoreButtonX = new int[2];
            this.mOnemoreButtonX[0] = -((int) (266.0f * widthrate));
            this.mOnemoreButtonX[1] = (int) (15.0f * widthrate);
            this.mExitButtonX = new int[2];
            this.mExitButtonX[0] = displaywidth;
            this.mExitButtonX[1] = (int) (1055.0f * widthrate);
            this.mFacebookButtonX = new int[2];
            this.mFacebookButtonX[0] = -((int) (207.0f * widthrate));
            this.mFacebookButtonX[1] = (int) (18.0f * widthrate);
        }

        public void loadImage(Context context) {
            LOG.verbose(">> loadImage()");
            float widthrate = GameView.this.mWidthRate;
            float heightrate = GameView.this.mHeightRate;
            int advertisewidth = this.mImgWidth[0];
            int advertiseheight = this.mImgHeight[0];
            this.mImgBmp[0] = Bitmap.createBitmap(advertisewidth, advertiseheight, Bitmap.Config.ARGB_8888);
            this.mAdvertiseCanvas.setBitmap(this.mImgBmp[0]);
            int tabbottom = (int) (100.0f * heightrate);
            Drawable img = context.getResources().getDrawable(R.drawable.tab_ad);
            img.setBounds((int) (51.0f * widthrate), 0, (int) (319.0f * widthrate), tabbottom);
            img.draw(this.mAdvertiseCanvas);
            Drawable img2 = context.getResources().getDrawable(R.drawable.popup_0);
            img2.setBounds(0, (int) (95.0f * heightrate), advertisewidth, advertiseheight);
            img2.draw(this.mAdvertiseCanvas);
            int imagewidth = GameView.this.mScreenGameRoom.mImgBmpWidth[0] / 2;
            int imageheight = GameView.this.mScreenGameRoom.mImgBmpHeight[0] / 2;
            int advertisecenterx = (int) (advertisewidth / 2.0f);
            int x = advertisecenterx - (imagewidth / 2);
            int y = tabbottom + ((int) (56.0f * heightrate));
            this.mAdvertiseCanvas.drawRect(x, y, x + imagewidth, y + imageheight, this.mImgRectPaint);
            Objects.FindImage imageGameImage = getFindImage();
            Bitmap bitmapGameImage = null;
            if (imageGameImage.mAdImgPath == null) {
                if (imageGameImage.mAdImgId != -1) {
                    bitmapGameImage = BitmapFactory.decodeResource(context.getResources(), imageGameImage.mAdImgId);
                }
            } else {
                bitmapGameImage = BitmapFactory.decodeFile(imageGameImage.mAdImgPath);
            }
            if (bitmapGameImage == null) {
                if (imageGameImage.mImgPath == null) {
                    bitmapGameImage = BitmapFactory.decodeResource(context.getResources(), imageGameImage.mImgId);
                } else {
                    bitmapGameImage = BitmapFactory.decodeFile(imageGameImage.mImgPath);
                }
            }
            if (bitmapGameImage != null) {
                Bitmap bitmapResizeGameImage = Bitmap.createScaledBitmap(bitmapGameImage, imagewidth, imageheight, true);
                this.mAdvertiseCanvas.drawBitmap(bitmapResizeGameImage, x, y, (Paint) null);
                bitmapGameImage.recycle();
                bitmapResizeGameImage.recycle();
            }
            GameView.this.mObjects.mResultButtons.loadImage(context);
        }

        public void recycleImageInResultWindow() {
            LOG.verbose(">> recycleImageInResultWindow()");
            int length = this.mImgBmp.length;
            for (int i = 0; i < length; i++) {
                if (this.mImgBmp[i] != null) {
                    this.mImgBmp[i].recycle();
                    this.mImgBmp[i] = null;
                }
            }
            this.mAdvertiseCanvas.setBitmap(null);
        }

        public void setPanelsY(int y) {
            LOG.verbose(">> setPanelsY()");
            this.mImgY[0] = y;
            float heightrate = GameView.this.mHeightRate;
            Rect rect = this.mCharacterRect;
            GameView.this.mObjects.mCharacter[0].setRect(rect.left, ((int) (213.0f * heightrate)) + y, rect.right, ((int) (713.0f * heightrate)) + y);
            GameView.this.mObjects.mResultButtons.mButton[2].setY(((int) (216.0f * heightrate)) + y);
            GameView.this.mObjects.mResultButtons.mButton[3].setY(((int) (366.0f * heightrate)) + y);
        }

        public void setGameResultData(int findnum, int otherfindnum, int remaintime, int combo) {
            LOG.verbose(">> setGameResultData()");
            this.mFindNum = findnum;
            this.mOtherFindNum = otherfindnum;
            this.mRemainTime = remaintime;
            this.mCombo = combo;
        }

        private int calculateScore(int type) {
            LOG.verbose(">> calculateScore()");
            return type == 0 ? this.mFindNum * 50 : this.mFindNum * 10;
        }

        public Objects.FindImage getFindImage() {
            LOG.verbose(">> getFindImage()");
            return this.mAdBaseimg ? GameView.this.mObjects.mBaseImages[this.mAdImgnum] : GameView.this.mObjects.mImages[this.mAdImgnum];
        }

        public int getLevel(long score) {
            LOG.verbose(">> getLevel()");
            int[] table = GameView.this.mLevelScoreTable;
            int start = 0;
            int end = 20;
            for (int i = 20; i < table.length; i += 20) {
                start = i - 20;
                end = i;
                if (score >= table[start] && score < table[end]) {
                    break;
                }
            }
            if (end > table.length - 1) {
                end = table.length - 1;
            }
            for (int i2 = start; i2 < end; i2++) {
                if (score >= table[i2] && score < table[i2 + 1]) {
                    return i2 + 1;
                }
            }
            return 100;
        }

        public void upAbillity(int level, long score, int point, long coin) {
            LOG.verbose(">> upAbillity()");
            GameView.this.mLevel += level;
            GameView.this.mScore += score;
            GameView.this.mPoint += point;
            GameView.this.mCoin += coin;
        }

        public void animate() {
            switch (this.mTime) {
                case 0:
                    setPanelsY(this.mAdvertiseImgY[0]);
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(this.mOnemoreButtonX[0]);
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(this.mExitButtonX[0]);
                    this.mWinLoseAlpha = 0;
                    this.mWinLoseRect[2].set(this.mWinLoseRect[0]);
                    GameView.this.mObjects.setCharactersImgnum(0);
                    GameView.this.mObjects.mCharacter[0].setAlpha(-1);
                    this.mTimeCount = 0;
                    this.mTime++;
                    break;
                case 1:
                    this.mTimeCount = this.mTimeCount + 1;
                    int speed = (int) ((30 - r0) * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate = (int) GameView.this.mDrawrate;
                    if (speed < drawrate) {
                        speed = drawrate;
                    }
                    setPanelsY(this.mImgY[0] - speed);
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (this.mImgY[0] < this.mAdvertiseImgY[1]) {
                        setPanelsY(this.mAdvertiseImgY[1]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 2:
                    setPanelsY(this.mImgY[0] + ((int) (GameView.this.mDrawrate * GameView.this.mSpeedRate)));
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i > 4.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 3:
                    setPanelsY(this.mImgY[0] - ((int) (GameView.this.mDrawrate * GameView.this.mSpeedRate)));
                    int i2 = this.mTimeCount;
                    this.mTimeCount = i2 + 1;
                    if (i2 > 4.0f / GameView.this.mSpeedRate) {
                        setPanelsY(this.mAdvertiseImgY[1]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 4:
                    this.mTimeCount = this.mTimeCount + 1;
                    int speed2 = (int) ((13 - r0) * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate2 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    if (speed2 < drawrate2) {
                        speed2 = drawrate2;
                    }
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(GameView.this.mObjects.mResultButtons.mButton[0].getX() + speed2);
                    int x = GameView.this.mObjects.mResultButtons.mButton[1].getX();
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(x - speed2);
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (x < this.mExitButtonX[1]) {
                        GameView.this.mObjects.mResultButtons.mButton[0].setX(this.mOnemoreButtonX[1]);
                        GameView.this.mObjects.mResultButtons.mButton[1].setX(this.mExitButtonX[1]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 5:
                    int speed3 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(GameView.this.mObjects.mResultButtons.mButton[0].getX() + speed3);
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(GameView.this.mObjects.mResultButtons.mButton[1].getX() - speed3);
                    int i3 = this.mTimeCount;
                    this.mTimeCount = i3 + 1;
                    if (i3 > 2.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 6:
                    int speed4 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(GameView.this.mObjects.mResultButtons.mButton[0].getX() + speed4);
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(GameView.this.mObjects.mResultButtons.mButton[1].getX() - speed4);
                    int i4 = this.mTimeCount;
                    this.mTimeCount = i4 + 1;
                    if (i4 > 2.0f / GameView.this.mSpeedRate) {
                        GameView.this.mObjects.mResultButtons.mButton[0].setX(this.mOnemoreButtonX[1]);
                        GameView.this.mObjects.mResultButtons.mButton[1].setX(this.mExitButtonX[1]);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 7:
                    this.mTimeCount = this.mTimeCount + 1;
                    int speed5 = (int) ((r0 / 2) * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int speed1 = (int) (speed5 * 4.17f);
                    this.mWinLoseRect[2].left += speed1;
                    this.mWinLoseRect[2].top += speed5;
                    this.mWinLoseRect[2].right -= speed1;
                    this.mWinLoseRect[2].bottom -= speed5;
                    int alpha = this.mWinLoseAlpha + ((int) (3.0f * GameView.this.mSpeedRate));
                    if (alpha > 250) {
                        alpha = 250;
                    }
                    this.mWinLoseAlpha = alpha;
                    if (this.mWinLoseRect[2].width() < this.mWinLoseRect[1].width()) {
                        this.mWinLoseRect[2].set(this.mWinLoseRect[1]);
                        this.mWinLoseAlpha = -1;
                        if (this.mWinLoseImgnum == 0) {
                            GameView.this.mObjects.mCharacter[0].setImgnum(2);
                        }
                        long score = GameView.this.mScore + ((long) calculateScore(this.mWinLoseImgnum));
                        if (score < 0) {
                            score = 0;
                        }
                        int prelevel = GameView.this.mLevel;
                        int i5 = GameView.this.mLevel;
                        int level = getLevel(score);
                        long coin = GameView.this.mCoin;
                        long coin2 = coin + 1;
                        int point = GameView.this.mPoint;
                        if (prelevel < level) {
                            point++;
                        }
                        ActionRunnable action = GameView.this.new ActionRunnable(5, new int[]{level - GameView.this.mLevel, point - GameView.this.mPoint}, new long[]{score - GameView.this.mScore, coin2 - GameView.this.mCoin});
                        GameView.this.post(action);
                        GameView.this.playSound(6);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 8:
                    int i6 = this.mTimeCount;
                    this.mTimeCount = i6 + 1;
                    if (i6 > 15) {
                        if (this.mWinLoseImgnum == 0) {
                            GameView.this.playSound(7);
                        } else {
                            GameView.this.playSound(8);
                        }
                        this.mTimeCount = 0;
                        this.mTime = 9;
                    }
                    break;
                case 10:
                    setPanelsY(this.mAdvertiseImgY[1]);
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(this.mOnemoreButtonX[1]);
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(this.mExitButtonX[1]);
                    this.mWinLoseAlpha = -1;
                    this.mWinLoseRect[2].set(this.mWinLoseRect[1]);
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (this.mWinLoseImgnum == 0) {
                        GameView.this.mObjects.mCharacter[0].setImgnum(2);
                    } else {
                        GameView.this.mObjects.mCharacter[0].setImgnum(0);
                    }
                    this.mTimeCount = 0;
                    this.mTime++;
                    break;
                case 11:
                    int speed6 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(GameView.this.mObjects.mResultButtons.mButton[0].getX() + speed6);
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(GameView.this.mObjects.mResultButtons.mButton[1].getX() - speed6);
                    int i7 = this.mTimeCount;
                    this.mTimeCount = i7 + 1;
                    if (i7 > 2.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 12:
                    int i8 = this.mTimeCount;
                    this.mTimeCount = i8 + 1;
                    int speed7 = (int) (i8 * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate3 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    if (speed7 < drawrate3) {
                        speed7 = drawrate3;
                    }
                    GameView.this.mObjects.mResultButtons.mButton[0].setX(GameView.this.mObjects.mResultButtons.mButton[0].getX() - speed7);
                    int x2 = GameView.this.mObjects.mResultButtons.mButton[1].getX();
                    GameView.this.mObjects.mResultButtons.mButton[1].setX(x2 + speed7);
                    if (x2 > this.mExitButtonX[0]) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 13:
                    int speed8 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    setPanelsY(this.mImgY[0] - speed8);
                    this.mWinLoseRect[2].top -= speed8;
                    this.mWinLoseRect[2].bottom -= speed8;
                    int i9 = this.mTimeCount;
                    this.mTimeCount = i9 + 1;
                    if (i9 > 4.0f / GameView.this.mSpeedRate) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 14:
                    int i10 = this.mTimeCount;
                    this.mTimeCount = i10 + 1;
                    int speed9 = (int) (i10 * GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    int drawrate4 = (int) (GameView.this.mDrawrate * GameView.this.mSpeedRate);
                    if (speed9 < drawrate4) {
                        speed9 = drawrate4;
                    }
                    setPanelsY(this.mImgY[0] + speed9);
                    this.mWinLoseRect[2].top += speed9;
                    this.mWinLoseRect[2].bottom += speed9;
                    if (this.mTimeCount == 2) {
                        GameView.this.playSound(5);
                    }
                    if (this.mImgY[0] > this.mAdvertiseImgY[0]) {
                        setPanelsY(this.mAdvertiseImgY[0]);
                        recycleImageInResultWindow();
                        GameView.this.setScreenMode(3);
                        GameView.this.mScreenBattleRoom.mTime = 2;
                        this.mTimeCount = 0;
                        this.mTime = 9;
                    }
                    break;
                case 15:
                    LOG.info("ResultRomm ---> Main Menu or WaitingRoom");
                    recycleImageInResultWindow();
                    GameView.this.mScreenBattleRoom.recycleImageInBattleRoom();
                    GameView.this.enterMainMenu(-1);
                    this.mTime = -1;
                    break;
            }
        }

        public void doDraw(Canvas canvas) {
            if (GameView.this.mBgBmp != null) {
                canvas.drawBitmap(GameView.this.mBgBmp, 0.0f, 0.0f, (Paint) null);
            }
            if (this.mTime > 0) {
                for (int i = 0; i < 1; i++) {
                    if (this.mImgBmp[i] != null) {
                        canvas.drawBitmap(this.mImgBmp[i], this.mImgX[i], this.mImgY[i], (Paint) null);
                    }
                }
                GameView.this.mObjects.mCharacter[0].doDraw(canvas);
                int imgnum = this.mWinLoseImgnum;
                if (imgnum > -1 && imgnum < 2) {
                    this.mImgPng[imgnum].setBounds(this.mWinLoseRect[2]);
                    this.mImgPng[imgnum].setAlpha(this.mWinLoseAlpha);
                    this.mImgPng[imgnum].draw(canvas);
                }
                GameView.this.mObjects.mResultButtons.doDraw(canvas);
            }
        }
    }

    public class ActionRunnable implements Runnable {
        public static final int ACTION_CONNECTSOCKET = 4;
        public static final int ACTION_LOGIN = 2;
        public static final int ACTION_SENDSPENDITEM = 6;
        public static final int ACTION_SENDUPABILLITY = 5;
        public static final int ACTION_SHOWDLG = 0;
        public static final int ACTION_SHOWWAITINGROOM = 3;
        public static final int ACTION_TOAST = 1;
        private int mAction;
        private Dialog mDlg;
        private int[] mIntValue;
        private long[] mLongValue;
        private String[] mStrValue;

        public ActionRunnable(Dialog dlg) {
            LOG.verbose(">> ActionRunnable()");
            this.mAction = 0;
            this.mDlg = dlg;
        }

        public ActionRunnable(int action) {
            LOG.verbose(">> ActionRunnable()");
            this.mAction = action;
            this.mDlg = null;
        }

        public ActionRunnable(int action, String[] strvalue) {
            LOG.verbose(">> ActionRunnable()");
            this.mAction = action;
            this.mDlg = null;
            this.mStrValue = strvalue;
        }

        public ActionRunnable(int action, int[] intvalue, long[] longvalue) {
            LOG.verbose(">> ActionRunnable()");
            this.mAction = action;
            this.mDlg = null;
            this.mIntValue = intvalue;
            this.mLongValue = longvalue;
        }

        public Dialog getDialogInstance() {
            LOG.verbose(">> getDialogInstance()");
            return this.mDlg;
        }

        @Override // java.lang.Runnable
        public void run() {
            LOG.verbose(">> run()");
            if (GameView.this.mGameActivity == null || GameView.this.mGameActivity.isFinishing()) {
                LOG.info("-- run() mGameActivity is null or finish");
            }
            switch (this.mAction) {
                case 0:
                    try {
                        this.mDlg.show();
                    } catch (Exception e) {
                        return;
                    }
                    break;
                case 1:
                    Toast.makeText(GameView.this.mContext, this.mStrValue[0], 0).show();
                    break;
                case 2:
                    GameView.this.mGameActivity.login(GameView.this.mEmail, GameView.this.mPassword);
                    break;
                case 3:
                    GameView.this.showWaitingRoom();
                    break;
                case 4:
                    GameView.this.mGameActivity.connectServer(this.mIntValue[0]);
                    break;
                case 5:
                    GameView.this.mGameActivity.sendAddUp(GameView.this.mEmail, this.mIntValue[0], this.mLongValue[0], this.mIntValue[1], this.mLongValue[1]);
                    break;
                case 6:
                    GameView.this.mGameActivity.sendSpendItem(GameView.this.mEmail, this.mIntValue[0], this.mIntValue[1]);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBattleRoomAndGameRoomTimer() {
        LOG.verbose(">> startBattleRoomAndGameRoomTimer()");
        if (this.mBattleRoomAndGameRoomTimer != null) {
            LOG.info("++ startBattleRoomAndGameRoomTimer() Timer is running");
            return;
        }
        TimerTask myTask = new TimerTask() { // from class: com.findit.battle.GameView.1
            private int mFrame;
            private int mSFrame;
            private int mSFramecount;
            private int mTimecount;

            private void init() {
                LOG.info("TimerTask::init()");
                this.mFrame = 0;
                this.mTimecount = 0;
                this.mSFramecount = 0;
                this.mSFrame = 0;
                GameView.this.mBattleRoomAndGameRoomTimerInit = false;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                int num;
                Objects.Skills.Skill skill;
                int index;
                int num2;
                Objects.Skills.Skill skill2;
                int skillindex;
                if (GameView.this.mBattleRoomAndGameRoomTimerInit) {
                    init();
                }
                this.mSFramecount += GameView.this.mGameThread.mFramecount;
                int i = this.mTimecount;
                this.mTimecount = i + 1;
                if (i > 20) {
                    this.mSFrame = this.mSFramecount;
                    this.mSFramecount = 0;
                    this.mTimecount = 0;
                    float rate = 60.0f / this.mSFrame;
                    if (rate < 1.0f) {
                        rate = 1.0f;
                    } else if (rate > 4.0f) {
                        rate = 4.0f;
                    }
                    GameView.this.mSpeedRate = rate;
                }
                this.mFrame = GameView.this.mGameThread.mFramecount;
                GameView.this.mGameThread.mFramecount = 0;
                if (this.mFrame < 2) {
                    GameThread gameThread = GameView.this.mGameThread;
                    gameThread.mDelay--;
                } else if (this.mFrame > 2) {
                    GameView.this.mGameThread.mDelay++;
                }
                if (this.mFrame > 8 || GameView.this.mGameThread.mDelay < 0) {
                    GameView.this.mGameThread.mDelay = 0;
                }
                if (GameView.this.mScreenBattleRoom.mSingleTimeCount > -1) {
                    BattleRoom battleRoom = GameView.this.mScreenBattleRoom;
                    int i2 = battleRoom.mSingleTimeCount;
                    battleRoom.mSingleTimeCount = i2 + 1;
                    if (i2 > 100 && GameView.this.mScreenGameRoom.mRightCharacterIndex < 0) {
                        GameView.this.mScreenGameRoom.mRightCharacterIndex = 2;
                        GameView.this.mScreenBattleRoom.mTime = 4;
                        GameView.this.mScreenBattleRoom.mSingleTimeCount = -1;
                    }
                }
                if (!GameView.this.mScreenGameRoom.isExitGameRoom() && GameView.this.mScreenGameRoom.mGameTime > -1) {
                    GameRoom gameRoom = GameView.this.mScreenGameRoom;
                    int i3 = gameRoom.mGameTimeCount;
                    gameRoom.mGameTimeCount = i3 + 1;
                    if (i3 > 19) {
                        GameView.this.mScreenGameRoom.mGameTime++;
                        GameView.this.mScreenGameRoom.mGameTimeCount = 0;
                    }
                    if (!GameView.this.mScreenGameRoom.isExitGameRoom() && GameView.this.mScreenGameRoom.mAI) {
                        GameRoom gameRoom2 = GameView.this.mScreenGameRoom;
                        int i4 = gameRoom2.mAIFindTime;
                        gameRoom2.mAIFindTime = i4 - 1;
                        if (i4 < 1) {
                            GameRoom gameRoom3 = GameView.this.mScreenGameRoom;
                            int num3 = gameRoom3.mRightNum;
                            gameRoom3.mRightNum = num3 - 1;
                            GameView.this.mScreenGameRoom.mAIFindTime = GameView.this.mScreenGameRoom.getAIFindTime();
                            int num4 = 5 - num3;
                            if (num4 > -1 && num4 < 4 && (skillindex = GameView.this.mScreenGameRoom.mAISkillIndexs[num4]) > -1) {
                                GameView.this.mScreenGameRoom.mRightSkillNum = skillindex;
                                GameView.this.mScreenGameRoom.mRightSkilTimeCount = 0;
                            }
                        }
                    }
                    if (!GameView.this.mScreenGameRoom.isExitGameRoom() && GameView.this.mScreenGameRoom.mLeftSkilTimeCount > -1 && (num2 = GameView.this.mScreenGameRoom.getLeftSkillNum()) > -1 && num2 < GameView.this.mObjects.mSkills.mSkillTotalnum && (skill2 = GameView.this.mObjects.mSkills.mSkill[num2]) != null) {
                        int addtime = 0;
                        Items items = GameView.this.mObjects.mItems;
                        int index2 = items.getSetIndex(0);
                        if (index2 > -1) {
                            addtime = items.mItem[index2].mPower;
                        }
                        GameRoom gameRoom4 = GameView.this.mScreenGameRoom;
                        int i5 = gameRoom4.mLeftSkilTimeCount;
                        gameRoom4.mLeftSkilTimeCount = i5 + 1;
                        if (i5 > skill2.mSustainmentTime + addtime) {
                            GameView.this.mScreenGameRoom.mLeftSkillNum = -1;
                            GameView.this.mScreenGameRoom.mLeftSkilTimeCount = -1;
                        }
                    }
                    if (!GameView.this.mScreenGameRoom.isExitGameRoom() && GameView.this.mScreenGameRoom.mRightSkilTimeCount > -1 && (num = GameView.this.mScreenGameRoom.mRightSkillNum) > -1 && num < GameView.this.mObjects.mSkills.mSkillTotalnum && (skill = GameView.this.mObjects.mSkills.mSkill[num]) != null) {
                        int addtime2 = 0;
                        Items items2 = GameView.this.mObjects.mItems;
                        if (items2 != null) {
                            if (GameView.this.mScreenGameRoom.mRightPenNum > -1 && (index = items2.getSetIndex(0)) > -1 && items2.mItem[index] != null) {
                                addtime2 = 0 - items2.mItem[index].mPower;
                            }
                            int index3 = items2.getSetIndex(1);
                            if (index3 > -1 && items2.mItem[index3] != null) {
                                addtime2 += items2.mItem[index3].mPower;
                            }
                            int index4 = items2.getSetIndex(3);
                            if (index4 > -1 && items2.mItem[index4] != null) {
                                addtime2 += items2.mItem[index4].mPower;
                            }
                            GameRoom gameRoom5 = GameView.this.mScreenGameRoom;
                            int i6 = gameRoom5.mRightSkilTimeCount;
                            gameRoom5.mRightSkilTimeCount = i6 + 1;
                            if (i6 > skill.mSustainmentTime - addtime2) {
                                GameView.this.mScreenGameRoom.mRightSkillNum = -1;
                                GameView.this.mScreenGameRoom.mRightSkilTimeCount = -1;
                                if (index4 > -1 && items2.mItem[index4] != null) {
                                    ActionRunnable action = GameView.this.new ActionRunnable(6, new int[]{index4, 1}, null);
                                    GameView.this.post(action);
                                }
                                GameView.this.mObjects.mSkills.initiateData();
                            }
                        }
                    }
                    if (GameView.this.mScreenGameRoom.mDimTime > -1) {
                        GameRoom gameRoom6 = GameView.this.mScreenGameRoom;
                        gameRoom6.mDimTime--;
                    }
                }
            }
        };
        this.mBattleRoomAndGameRoomTimerInit = true;
        Timer timer = new Timer();
        timer.schedule(myTask, 500L, 50L);
        this.mBattleRoomAndGameRoomTimer = timer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopBattleRoomAndGameRoomTimer() {
        LOG.verbose(">> stopBattleRoomAndGameRoomTimer()");
        this.mBattleRoomAndGameRoomTimer.cancel();
        this.mBattleRoomAndGameRoomTimer = null;
    }

    class GameThread extends Thread {
        private int mDelay;
        private int mFramecount;
        private boolean mResume;
        public boolean mRun;
        private SurfaceHolder mSurfaceholder;

        public GameThread(SurfaceHolder surfaceHolder) {
            LOG.verbose(">> GameThread()");
            setSurfaceHolder(surfaceHolder);
            this.mRun = true;
            this.mResume = true;
            this.mFramecount = 0;
            this.mDelay = 0;
            setName("GameThread");
        }

        public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
            LOG.verbose(">> setSurfaceHolder()");
            this.mSurfaceholder = surfaceHolder;
        }

        public void requestExitAndWait() {
            LOG.verbose(">> requestExitAndWait()");
            this.mRun = false;
            try {
                join();
                GameView.this.stopBattleRoomAndGameRoomTimer();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LOG.info("run()");
            GameView.this.startBattleRoomAndGameRoomTimer();
            SurfaceHolder surfaceHolder = this.mSurfaceholder;
            Canvas c = null;
            if (GameView.this.getScreenMode() > 1 && GameView.this.mLogin == 1) {
                ActionRunnable action = GameView.this.new ActionRunnable(3);
                GameView.this.post(action);
            }
            while (this.mRun) {
                this.mFramecount++;
                if (GameView.this.mWork || this.mResume) {
                    switch (GameView.this.getScreenMode()) {
                        case 0:
                            GameView.this.mScreenOpening.animate();
                            break;
                        case 1:
                            GameView.this.mScreenMainMenu.animate();
                            break;
                        case 3:
                            if (GameView.this.mScreenBattleRoom.mLeftReady && GameView.this.mScreenBattleRoom.mRightReady && GameView.this.mScreenBattleRoom.mTime < 0) {
                                GameView.this.mScreenBattleRoom.mGameStart = true;
                                GameView.this.mScreenBattleRoom.mTime = 0;
                            }
                            GameView.this.mScreenBattleRoom.animate();
                            GameView.this.mObjects.mSkills.animation(GameView.this.mSpeedRate);
                            break;
                        case 4:
                            if (!GameView.this.mScreenGameRoom.isExitGameRoom()) {
                                GameView.this.mScreenGameRoom.animate();
                                GameView.this.mObjects.mSkills.animation(GameView.this.mSpeedRate, GameView.this);
                                if (GameView.this.mScreenGameRoom.mRightCharacterIndex > -1) {
                                    GameView.this.mObjects.mCharacter[GameView.this.mScreenGameRoom.mRightCharacterIndex].animation(GameView.this.mSpeedRate);
                                }
                            }
                            break;
                        case 5:
                            GameView.this.mScreenResult.animate();
                            break;
                    }
                }
                try {
                    try {
                        c = surfaceHolder.lockCanvas(null);
                        synchronized (surfaceHolder) {
                            if (c != null) {
                                doDraw(c);
                            }
                        }
                        sleep(this.mDelay);
                        if (c != null) {
                            surfaceHolder.unlockCanvasAndPost(c);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        if (c != null) {
                            surfaceHolder.unlockCanvasAndPost(c);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        if (c != null) {
                            surfaceHolder.unlockCanvasAndPost(c);
                        }
                    }
                } catch (Throwable th) {
                    if (c != null) {
                        surfaceHolder.unlockCanvasAndPost(c);
                    }
                    throw th;
                }
            }
        }

        private boolean doDraw(Canvas canvas) {
            switch (GameView.this.getScreenMode()) {
                case 0:
                    GameView.this.mScreenOpening.doDraw(canvas);
                    break;
                case 1:
                    GameView.this.mScreenMainMenu.doDraw(canvas);
                    break;
                case 3:
                    GameView.this.mScreenBattleRoom.doDraw(canvas);
                    break;
                case 4:
                    if (!GameView.this.mScreenGameRoom.isExitGameRoom()) {
                        GameView.this.mScreenGameRoom.doDraw(canvas);
                    }
                    break;
                case 5:
                    GameView.this.mScreenResult.doDraw(canvas);
                    break;
            }
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Objects.Skills.Skill skill;
        LOG.verbose(">> onTouchEvent()");
        int touchx = (int) event.getX();
        int touchy = (int) event.getY();
        switch (getScreenMode()) {
            case 1:
                if (!this.mScreenMainMenu.isBackboard()) {
                    switch (event.getAction()) {
                        case 0:
                        case 2:
                            this.mObjects.mMainMenuButtons.touchSingleDown(touchx, touchy);
                            break;
                        case 1:
                            switch (this.mObjects.mMainMenuButtons.touch(touchx, touchy)) {
                                case 0:
                                    LOG.verbose("게임시작버튼 클릭");
                                    this.mScreenMainMenu.mTime = 5;
                                    this.mScreenMainMenu.mResult = 0;
                                    playSound(3);
                                    break;
                                case 1:
                                    if (this.mLogin == 1) {
                                        LOG.debug(new StringBuilder().append(this.mLogin).toString());
                                        this.mScreenMainMenu.mTime = 5;
                                        this.mScreenMainMenu.mResult = 1;
                                    } else {
                                        this.mGameActivity.mGuestLoginDlg.show();
                                    }
                                    if (this.mLogin == 1) {
                                        LOG.verbose("재로그인일 경우?");
                                        this.mScreenMainMenu.mTime = 5;
                                        this.mScreenMainMenu.mResult = 1;
                                    } else {
                                        LOG.verbose("재로그인이 아닐경우?");
                                        this.mGameActivity.mGuestLoginDlg.show();
                                    }
                                    playSound(3);
                                    break;
                                case 2:
                                    LOG.verbose("랭킹버튼 클릭");
                                    this.mScreenMainMenu.mTime = 5;
                                    this.mScreenMainMenu.mResult = 2;
                                    playSound(3);
                                    break;
                                case 3:
                                    LOG.verbose("옵션버튼 클릭");
                                    this.mScreenMainMenu.mTime = 5;
                                    this.mScreenMainMenu.mResult = 3;
                                    playSound(3);
                                    break;
                                case 4:
                                    LOG.verbose("공지버튼 클릭");
                                    this.mScreenMainMenu.mTime = 5;
                                    this.mScreenMainMenu.mResult = 4;
                                    playSound(3);
                                    break;
                                case 5:
                                    LOG.verbose("Facebook버튼 클릭");
                                    this.mScreenMainMenu.mTime = 5;
                                    this.mScreenMainMenu.mResult = 5;
                                    playSound(3);
                                    break;
                            }
                            this.mObjects.mMainMenuButtons.setImageNum(0);
                            break;
                    }
                }
                break;
            case 3:
                switch (event.getAction()) {
                    case 0:
                        this.mObjects.mBattleRoomButtons.touchSingleDown(touchx, touchy);
                        this.mScreenBattleRoom.mSkillIndex = this.mObjects.mSkills.touchIcon(touchx, touchy);
                        if (10000 < this.mScreenBattleRoom.mSkillIndex) {
                            this.mScreenBattleRoom.mSkillIndex = -1;
                        }
                        break;
                    case 1:
                        int index = this.mScreenBattleRoom.mSkillIndex;
                        if (index > -1) {
                            Objects.Skills skills = this.mObjects.mSkills;
                            skills.moveIcon(index, touchx, touchy);
                            int x = this.mScreenBattleRoom.mSkillSlotX;
                            int sy = this.mScreenBattleRoom.mStandardY[1] + this.mScreenBattleRoom.mSkillSetSlotY;
                            int y = this.mScreenBattleRoom.mStandardY[1] + this.mScreenBattleRoom.mSkillSlotY;
                            int windowiconnum = this.mScreenBattleRoom.checkSkillWindow(sy, 5, index);
                            if (windowiconnum > -1) {
                                Objects.Skills.Skill skill2 = skills.setSlots(index, windowiconnum, x, sy, 5, true);
                                if (skill2 == null) {
                                    Objects.Skills.Skill skill3 = skills.mSkill[index];
                                    if (skill3.mNum > -1) {
                                        skill3.setSlot(skill3.mNum, x, y, false, 0);
                                    } else if (skill3.mSetNum > -1) {
                                        skill3.setSlot(skill3.mSetNum, x, sy, true, 0);
                                    }
                                } else if (skill2.mNum > -1) {
                                    skill2.setSlot(x, y, 0, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                                } else if (skill2.mSetNum > -1) {
                                    skill2.setSlot(x, sy, 0, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                                }
                            } else {
                                int windowiconnum2 = this.mScreenBattleRoom.checkSkillWindow(y, 8, index);
                                if (windowiconnum2 > -1) {
                                    Objects.Skills.Skill skill4 = skills.setSlots(index, windowiconnum2, x, y, 8, false);
                                    if (skill4 != null) {
                                        if (skill4.mNum > -1) {
                                            skill4.setSlot(x, y, 0, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                                        } else if (skill4.mSetNum > -1) {
                                            skill4.setSlot(x, sy, 0, skills.mIconSize, skills.mIconSpace, skills.mIconSpace);
                                        }
                                    }
                                } else {
                                    Objects.Skills.Skill skill5 = skills.mSkill[index];
                                    if (skill5.mNum > -1) {
                                        skill5.setSlot(skill5.mNum, x, y, false, 0);
                                    } else if (skill5.mSetNum > -1) {
                                        skill5.setSlot(skill5.mSetNum, x, sy, true, 0);
                                    }
                                }
                            }
                        } else {
                            switch (this.mObjects.mBattleRoomButtons.touch(touchx, touchy)) {
                                case 0:
                                    this.mScreenBattleRoom.exitRoom();
                                    playSound(3);
                                    break;
                                case 1:
                                    this.mScreenBattleRoom.ready();
                                    break;
                            }
                        }
                        this.mObjects.mBattleRoomButtons.setImageNum(0);
                        break;
                    case 2:
                        int index2 = this.mScreenBattleRoom.mSkillIndex;
                        if (index2 > -1) {
                            this.mObjects.mSkills.moveIcon(index2, touchx, touchy);
                        } else {
                            this.mObjects.mBattleRoomButtons.touchSingleDown(touchx, touchy);
                        }
                        break;
                }
                break;
            case 4:
                switch (event.getAction()) {
                    case 1:
                        boolean run = true;
                        GameRoom game = this.mScreenGameRoom;
                        if (game.mRightSkillNum > -1 && game.mRightSkillNum < this.mObjects.mSkills.mSkillTotalnum) {
                            run = !this.mObjects.mSkills.mSkill[game.mRightSkillNum].mDim;
                        }
                        if (game.mTime == 11 && game.mDimTime < 0 && run) {
                            int index3 = game.getFindImage().touchRect(touchx, touchy, game.mImgSpace, game.mImgRightX);
                            if (index3 <= -1) {
                                if (touchy < game.mImgBmpHeight[1] && index3 == -1) {
                                    this.mVibrator.vibrate(200L);
                                    game.mDimTime = 20;
                                    playSound(1);
                                }
                            } else if (this.mScreenGameRoom.mLeftNum > 0) {
                                GameRoom gameRoom = this.mScreenGameRoom;
                                gameRoom.mLeftNum--;
                                if (this.mScreenGameRoom.mRightCharacterIndex == 2) {
                                    GameRoom gameRoom2 = this.mScreenGameRoom;
                                    gameRoom2.mTempLeftNum--;
                                }
                                game.sendFindData(-1, -1);
                                playSound(0);
                            }
                        }
                        if (this.mScreenGameRoom.mTime == 11 && this.mScreenGameRoom.mLeftSkilTimeCount < 0) {
                            int skillindex = this.mObjects.mSkills.touchIcon(touchx, touchy);
                            if (skillindex > -1) {
                                if (skillindex < 10000) {
                                    skill = this.mObjects.mSkills.mSkill[skillindex];
                                } else {
                                    skill = this.mObjects.mSkills.mBerrySkill;
                                    int berryindex = this.mObjects.mItems.getSetIndex(2);
                                    if (berryindex > -1) {
                                        this.mGameActivity.sendSpendItem(this.mEmail, berryindex, 1L);
                                    }
                                }
                                if (skill.mShow) {
                                    skill.mTime = 0;
                                    this.mScreenGameRoom.mLeftSkillNum = skillindex;
                                    this.mScreenGameRoom.mLeftSkilTimeCount = 0;
                                    int penindex = this.mObjects.mItems.getSetIndex(0);
                                    game.sendFindData(this.mScreenGameRoom.getLeftSkillNum(), penindex);
                                    playSound(0);
                                }
                            }
                            break;
                        }
                        break;
                }
                break;
            case 5:
                switch (event.getAction()) {
                    case 0:
                    case 2:
                        this.mObjects.mResultButtons.touchSingleDown(touchx, touchy);
                        break;
                    case 1:
                        switch (this.mObjects.mResultButtons.touch(touchx, touchy)) {
                            case 0:
                                if (this.mScreenGameRoom.mRightCharacterIndex == 2 && this.mLogin == 1) {
                                    this.mScreenGameRoom.mRightCharacterIndex = -1;
                                }
                                this.mScreenResult.mTime = 10;
                                playSound(3);
                                break;
                            case 1:
                                this.mScreenBattleRoom.exitRoom();
                                playSound(3);
                                break;
                            case 2:
                                Objects.FindImage image = this.mScreenResult.getFindImage();
                                if (image.mDetailUrl == null) {
                                    ActionRunnable action = new ActionRunnable(1, new String[]{"링크 정보가 없습니다"});
                                    post(action);
                                } else {
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(image.mDetailUrl));
                                    this.mContext.startActivity(intent);
                                }
                                playSound(3);
                                break;
                            case 3:
                                Objects.FindImage image2 = this.mScreenResult.getFindImage();
                                if (image2.mDownloadUrl == null) {
                                    ActionRunnable action2 = new ActionRunnable(1, new String[]{"다운로드 정보가 없습니다"});
                                    post(action2);
                                } else {
                                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(image2.mDownloadUrl));
                                    this.mContext.startActivity(intent2);
                                }
                                playSound(3);
                                break;
                        }
                        this.mObjects.mResultButtons.setImageNum(0);
                        break;
                }
                break;
        }
        return true;
    }

    private class doSendSocketMsgTask extends AsyncTask<String, Void, String> {
        private doSendSocketMsgTask() {
        }

        /* synthetic */ doSendSocketMsgTask(GameView gameView, doSendSocketMsgTask dosendsocketmsgtask) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... msg) {
            if (msg != null && msg.length > 0) {
                String strMsg = msg[0];
                if (!GameView.this.mGameActivity.mConnectNetwork.sendSocketMsg(strMsg)) {
                    ((GameActivity) GameView.this.mContext).mCommonDlg.cancelProgressDlg();
                    Toast.makeText(GameView.this.mContext, "Network disconnected, try again!", 0).show();
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenMode(int mode) {
        LOG.verbose(">> setScreenMode() OldScreenMode: " + mScreenMode + " NewScreenMode: " + mode);
        mScreenMode = mode;
    }

    public int getScreenMode() {
        return mScreenMode;
    }
}
