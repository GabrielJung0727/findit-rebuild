package com.findit.battle;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.findit.battle.finals.LOG;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Objects {
    public static final int AICHARACTERADDDATA_TOTALNUM = 20;
    public static final int AICHARACTERDATA_TOTALNUM = 1;
    public static final int BUTTON_BATTLEROOM_EXIT = 0;
    public static final int BUTTON_BATTLEROOM_FRIEND = 2;
    public static final int BUTTON_BATTLEROOM_READY = 1;
    public static final int BUTTON_GAME_EXIT = 0;
    public static final int BUTTON_MAINMENU_FACEBOOK = 5;
    public static final int BUTTON_MAINMENU_GAMESTART = 0;
    public static final int BUTTON_MAINMENU_INVENTORY = 1;
    public static final int BUTTON_MAINMENU_NOTICE = 4;
    public static final int BUTTON_MAINMENU_OPTION = 3;
    public static final int BUTTON_MAINMENU_RANKING = 2;
    public static final int BUTTON_RESULT_DOWNLOAD = 3;
    public static final int BUTTON_RESULT_EXIT = 1;
    public static final int BUTTON_RESULT_LINK = 2;
    public static final int BUTTON_RESULT_ONEMORE = 0;
    public static final int CHARACTERADDDATA_TOTALNUM = 20;
    public static final int CHARACTERDATA_ADDAI = 3;
    public static final int CHARACTERDATA_ADDUSER = 2;
    public static final int CHARACTERDATA_AI = 1;
    public static final int CHARACTERDATA_TOTALNUM = 3;
    public static final int CHARACTERDATA_USER = 0;
    public static final int CHARACTER_AI = 2;
    public static final int CHARACTER_LFETUSER = 0;
    public static final int CHARACTER_RIGHTUSER = 1;
    public static final int CHARACTER_TOTALNUM = 3;
    public static final int FINDIMAGE_TOTALNUM = 1000;
    public static final int FINDRECT_NUM = 5;
    // 기획 findit_틀린그림가이드_20120704.xls: 이미지당 찾기 부위 7개
    public static final int FINDRECT_TOTALNUM = 7;
    public static final int IMAGE_CIRCLE = 0;
    public static final int IMAGE_TOTALNUM = 1;
    public static final int SKILL_TOTALNUM = 50;
    public static CharacterData[] mCharacterDatas;
    public FindImage[] mBaseImages;
    public int mBaseImagesTotalnum;
    public Buttons mBattleRoomButtons;
    public int[] mBodyFaceImgIds;
    public String[] mBodyFaceImgPaths;
    public Character[] mCharacter;
    private int mCircleSpace;
    public boolean mCreateFindImagesRun;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private float mDrawrate;
    public int[] mHeadFaceImgIds;
    public String[] mHeadFaceImgPaths;
    public FindImage[] mImages;
    public int mImagesTotalnum;
    public HashMap<String, Boolean> mImgNumMap;
    public Drawable[] mImgPng;
    public Items mItems;
    public boolean mLastCreateFindImageFile;
    public Buttons mMainMenuButtons;
    public Buttons mResultButtons;
    public Skills mSkills;

    public Objects(Context context, int displaywidth, int displayheight, float drawrate) {
        LOG.verboseFromObjectsClass(">> Objects()");
        this.mDrawrate = drawrate;
        this.mDisplayWidth = displaywidth;
        this.mDisplayHeight = displayheight;
        if (this.mImgPng == null) {
            this.mImgPng = new Drawable[1];
        }
        this.mImgPng[0] = context.getResources().getDrawable(R.drawable.game_answer);
        this.mImagesTotalnum = 0;
        int[] upimgid = {R.drawable.main_btn_1, R.drawable.main_btn_2, R.drawable.main_btn_3, R.drawable.main_btn_4, R.drawable.main_btn_5, R.drawable.main_btn_6};
        if (this.mMainMenuButtons == null) {
            this.mMainMenuButtons = new Buttons(upimgid.length);
        }
        float widthrate = displaywidth / 1280.0f;
        float heightrate = displayheight / 800.0f;
        int left = (int) (183.0f * widthrate);
        int top = (int) (231.0f * heightrate);
        int width = (int) (450.0f * widthrate);
        int height = (int) (144.0f * widthrate);
        int space = (int) (14.0f * heightrate);
        for (int y = 0; y < 3; y++) {
            int unittop = top + (y * height);
            int unitbottom = unittop + height;
            for (int x = 0; x < 2; x++) {
                int unitleft = (x * width) + left + (x * space);
                int unitright = unitleft + width;
                int index = x + (y * 2);
                if (upimgid.length > index && this.mMainMenuButtons.mButton[index] == null) {
                    this.mMainMenuButtons.mButton[index] = new Button(context, upimgid[index], -1, new Rect(unitleft, unittop, unitright, unitbottom), new Rect(unitleft, unittop - space, unitright, unitbottom - space));
                }
            }
        }
        if (this.mBattleRoomButtons == null) {
            this.mBattleRoomButtons = new Buttons(2);
        }
        int left2 = (int) (1055.0f * widthrate);
        int right = left2 + ((int) (210.0f * widthrate));
        int top2 = (int) (21.0f * heightrate);
        int bottom = top2 + ((int) (90.0f * heightrate));
        if (this.mBattleRoomButtons.mButton[0] == null) {
            this.mBattleRoomButtons.mButton[0] = new Button(context, R.drawable.smallbtn_goout, -1, new Rect(left2, top2, right, bottom), new Rect(left2 - space, top2, right - space, bottom));
        }
        int centerx = displaywidth / 2;
        int width2 = (int) (208.0f * widthrate);
        int left3 = centerx - (width2 / 2);
        int right2 = left3 + width2;
        int top3 = (int) (305.0f * heightrate);
        int bottom2 = top3 + ((int) (133.0f * heightrate));
        if (this.mBattleRoomButtons.mButton[1] == null) {
            this.mBattleRoomButtons.mButton[1] = new Button(context, R.drawable.btn_ready, -1, new Rect(left3, top3, right2, bottom2), new Rect(left3, top3 - space, right2, bottom2 - space));
        }
        this.mCircleSpace = (int) (((displaywidth + displayheight) / 2) * 0.06153846f);
        if (this.mResultButtons == null) {
            this.mResultButtons = new Buttons(4);
        }
        int space2 = (int) (20.0f * widthrate);
        int left4 = (int) (15.0f * widthrate);
        int top4 = (int) (21.0f * heightrate);
        int right3 = (int) (281.0f * widthrate);
        int bottom3 = (int) (111.0f * heightrate);
        if (this.mResultButtons.mButton[0] == null) {
            this.mResultButtons.mButton[0] = new Button(context, R.drawable.smallbtn_onemore, -1, new Rect(left4, top4, right3, bottom3), new Rect(left4 + space2, top4, right3 + space2, bottom3));
        }
        int left5 = (int) (1055.0f * widthrate);
        int top5 = (int) (21.0f * heightrate);
        int right4 = (int) (1265.0f * widthrate);
        int bottom4 = (int) (111.0f * heightrate);
        if (this.mResultButtons.mButton[1] == null) {
            this.mResultButtons.mButton[1] = new Button(context, R.drawable.smallbtn_goout, -1, new Rect(left5, top5, right4, bottom4), new Rect(left5 - space2, top5, right4 - space2, bottom4));
        }
        int top6 = (int) (239.0f * heightrate);
        int bottom5 = (int) (349.0f * heightrate);
        int left6 = (int) (10927.0f * widthrate);
        int right5 = (int) (11193.0f * widthrate);
        if (this.mResultButtons.mButton[2] == null) {
            this.mResultButtons.mButton[2] = new Button(context, R.drawable.ad_btn_link, -1, new Rect(left6, top6, right5, bottom5), new Rect(left6, top6 - space2, right5, bottom5 - space2));
        }
        int top7 = (int) (389.0f * heightrate);
        int bottom6 = (int) (499.0f * heightrate);
        if (this.mResultButtons.mButton[3] == null) {
            this.mResultButtons.mButton[3] = new Button(context, R.drawable.ad_btn_download, -1, new Rect(left6, top7, right5, bottom6), new Rect(left6, top7 - space2, right5, bottom6 - space2));
        }
        createBaseFindImages();
        if (this.mSkills == null) {
            this.mSkills = new Skills(context, displaywidth, displayheight, (int) (112.0f * widthrate), 0);
        }
        int[] bodyfaceimgids = {R.drawable.charac_face_01_0};
        this.mBodyFaceImgIds = bodyfaceimgids;
        int[] headfaceimgids = {R.drawable.charac2_face_01_0};
        this.mHeadFaceImgIds = headfaceimgids;
        String[] bodyfaceimgpaths = new String[0];
        this.mBodyFaceImgPaths = bodyfaceimgpaths;
        String[] headfaceimgpaths = new String[0];
        this.mHeadFaceImgPaths = headfaceimgpaths;
        createCharacterData();
        if (this.mCharacter == null) {
            this.mCharacter = new Character[3];
        }
        if (this.mCharacter[0] == null) {
            this.mCharacter[0] = new Character(context, 0, 0, 0);
        }
        if (this.mCharacter[1] == null) {
            this.mCharacter[1] = new Character(context, 0, 1, 0);
        }
        if (this.mCharacter[2] == null) {
            this.mCharacter[2] = new Character(context, 1, 0, 0);
        }
        if (this.mItems == null) {
            this.mItems = new Items(context);
        }
        if (this.mImgNumMap == null) {
            this.mImgNumMap = new HashMap<>();
        }
    }

    public void recycleResources() {
        LOG.verboseFromObjectsClass(">> recycleResources()");
        this.mMainMenuButtons.recycleImageInButton();
        this.mBattleRoomButtons.recycleImageInButton();
        this.mResultButtons.recycleImageInButton();
        this.mSkills.recycleImageInSkills();
    }

    public float getDistance(int x1, int y1, int x2, int y2) {
        LOG.verboseFromObjectsClass(">> getDistance()");
        int x = x2 - x1;
        int y = y2 - y1;
        return (float) Math.sqrt((x * x) + (y * y));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<String> getSubTexts(String text, String devider) {
        LOG.verboseFromObjectsClass(">> getSubTexts()");
        ArrayList<String> subtexts = new ArrayList<>();
        int length = text.length();
        int startindex = 0;
        while (true) {
            if (startindex >= length) {
                break;
            }
            int index = text.indexOf(devider, startindex);
            if (index < 0) {
                subtexts.add(text.substring(startindex));
                break;
            }
            subtexts.add(text.substring(startindex, index));
            startindex = index + 1;
        }
        return subtexts;
    }

    class Buttons {
        public Button[] mButton;

        public Buttons(int num) {
            LOG.verboseFromObjectsClass(">> Buttons()");
            this.mButton = new Button[num];
        }

        public void loadImage(Context context) {
            LOG.verboseFromObjectsClass(">> loadImage()");
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                Button button = this.mButton[i];
                Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), button.mImgId[0], options);
                button.mImgBmp[0] = Bitmap.createScaledBitmap(bitmap, button.mRect[0].width(), button.mRect[0].height(), true);
                bitmap.recycle();
                int id = button.mImgId[1];
                if (id == -1) {
                    button.mImgBmp[1] = button.mImgBmp[0];
                } else {
                    Bitmap bitmap2 = BitmapFactory.decodeResource(context.getResources(), id, options);
                    button.mImgBmp[1] = Bitmap.createScaledBitmap(bitmap2, button.mRect[1].width(), button.mRect[1].height(), true);
                    bitmap2.recycle();
                }
            }
        }

        public void recycleImageInButton() {
            LOG.error(">> Buttons::recycleImageInButton()");
            int length = this.mButton.length;
            LOG.verboseFromObjectsClass("++ recycleImageInButton() Button length: " + length);
            for (int i = 0; i < length; i++) {
                Button button = this.mButton[i];
                int imglength = button.mImgBmp.length;
                for (int j = 0; j < imglength; j++) {
                    if (button.mImgBmp[j] != null) {
                        button.mImgBmp[j].recycle();
                        button.mImgBmp[j] = null;
                    }
                }
            }
        }

        public int touch(int tx, int ty) {
            LOG.verboseFromObjectsClass(">> touch()");
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                Rect rect = this.mButton[i].mRect[0];
                if (rect.left < tx && rect.right > tx && rect.top < ty && rect.bottom > ty) {
                    return i;
                }
            }
            return -1;
        }

        public void touchSingleDown(int tx, int ty) {
            LOG.verboseFromObjectsClass(">> touchSingleDown()");
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                Rect rect = this.mButton[i].mRect[0];
                if (rect.left < tx && rect.right > tx && rect.top < ty && rect.bottom > ty) {
                    this.mButton[i].mImgNum = 1;
                } else {
                    this.mButton[i].mImgNum = 0;
                }
            }
        }

        public void setImageNum(int imgnum) {
            LOG.verboseFromObjectsClass(">> setImageNum()");
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                this.mButton[i].mImgNum = imgnum;
            }
        }

        public void setAlpha(int alpha) {
            LOG.verboseFromObjectsClass(">> setAlpha()");
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                this.mButton[i].mPaint.setAlpha(alpha);
            }
        }

        public void doDraw(Canvas canvas) {
            LOG.verboseLoop(">> doDraw()");
            int length = this.mButton.length;
            for (int i = 0; i < length; i++) {
                Button button = this.mButton[i];
                if (button.mImgBmp[button.mImgNum] != null) {
                    canvas.drawBitmap(button.mImgBmp[button.mImgNum], (Rect) null, button.mRect[button.mImgNum], button.mPaint);
                } else {
                    LOG.error("button.mImgBmp[button.mImgNum] " + button.mImgBmp[button.mImgNum]);
                }
                if (button.mText != null) {
                    canvas.drawText(button.mText, button.mRect[button.mImgNum].centerX(), button.mRect[button.mImgNum].centerY() + button.mTextSpace, button.mTextPaint);
                }
            }
        }
    }

    class Button {
        public static final int DOWN = 1;
        public static final int UP = 0;
        public Bitmap[] mImgBmp;
        public int[] mImgId;
        public int mImgNum;
        public Paint mPaint;
        public Rect[] mRect;
        public String mText;
        public Paint mTextPaint;
        public int mTextSpace;

        public Button(Context context, int upimgid, int downimgid, Rect rect) {
            LOG.verboseFromObjectsClass(">> Button()");
            this.mImgBmp = new Bitmap[2];
            this.mRect = new Rect[2];
            this.mImgId = new int[2];
            this.mPaint = new Paint();
            this.mTextPaint = new Paint();
            this.mImgId[0] = upimgid;
            this.mImgId[1] = downimgid;
            Rect[] rectArr = this.mRect;
            this.mRect[1] = rect;
            rectArr[0] = rect;
            this.mText = null;
            this.mImgNum = 0;
        }

        public Button(Context context, int upimgid, int downimgid, Rect uprect, Rect downrect) {
            LOG.verboseFromObjectsClass(">> Button()");
            this.mImgBmp = new Bitmap[2];
            this.mRect = new Rect[2];
            this.mImgId = new int[2];
            this.mPaint = new Paint();
            this.mTextPaint = new Paint();
            this.mImgId[0] = upimgid;
            this.mImgId[1] = downimgid;
            this.mRect[0] = uprect;
            this.mRect[1] = downrect;
            this.mText = null;
            this.mImgNum = 0;
        }

        public void setText(String text, float size, int color) {
            LOG.verboseFromObjectsClass(">> setText()");
            this.mText = text;
            this.mTextPaint.setTextSize(size);
            this.mTextPaint.setColor(color);
            this.mTextPaint.setTextAlign(Paint.Align.CENTER);
            this.mTextSpace = (int) (size / 3.0f);
        }

        public boolean touch(int tx, int ty) {
            LOG.verboseFromObjectsClass(">> touch()");
            Rect rect = this.mRect[0];
            return rect.left < tx && rect.right > tx && rect.top < ty && rect.bottom > ty;
        }

        public void setRect(int left, int top, int right, int bottom) {
            LOG.verboseFromObjectsClass(">> setRect()");
            this.mRect[0].set(left, top, right, bottom);
            this.mRect[1].set(left, top, right, bottom);
        }

        public void setX(int x) {
            LOG.verboseFromObjectsClass(">> setX()");
            int width = this.mRect[0].width();
            this.mRect[0].left = x;
            this.mRect[0].right = x + width;
        }

        public void setY(int y) {
            LOG.verboseFromObjectsClass(">> setY()");
            int height = this.mRect[0].height();
            this.mRect[0].top = y;
            this.mRect[0].bottom = y + height;
        }

        public int getX() {
            LOG.verboseFromObjectsClass(">> getX()");
            return this.mRect[0].left;
        }

        public int getY() {
            LOG.verboseFromObjectsClass(">> getY()");
            return this.mRect[0].top;
        }
    }

    private void createBaseFindImages() {
        LOG.verboseFromObjectsClass(">> createBaseFindImages()");
        this.mBaseImages = new FindImage[FINDIMAGE_TOTALNUM];
        this.mBaseImages[0] = new FindImage(640, 720, R.drawable.a0001);
        int rectnum = 0 + 1;
        this.mBaseImages[0].mFindRect[0] = new FindRect(187, 340, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_01);
        int rectnum2 = rectnum + 1;
        this.mBaseImages[0].mFindRect[rectnum] = new FindRect(216, 444, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_02);
        int rectnum3 = rectnum2 + 1;
        this.mBaseImages[0].mFindRect[rectnum2] = new FindRect(51, 590, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_03);
        int rectnum4 = rectnum3 + 1;
        this.mBaseImages[0].mFindRect[rectnum3] = new FindRect(0, 0, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_04);
        int rectnum5 = rectnum4 + 1;
        this.mBaseImages[0].mFindRect[rectnum4] = new FindRect(410, 304, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_05);
        int rectnum6 = rectnum5 + 1;
        this.mBaseImages[0].mFindRect[rectnum5] = new FindRect(504, 68, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_06);
        this.mBaseImages[0].mFindRect[rectnum6] = new FindRect(510, 412, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0001_07);
        int num = 0 + 1;
        this.mBaseImages[0].mFindRectTotalnum = rectnum6 + 1;
        this.mBaseImages[num] = new FindImage(640, 720, R.drawable.a0002);
        int rectnum7 = 0 + 1;
        this.mBaseImages[num].mFindRect[0] = new FindRect(45, 591, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 100, R.drawable.a0002_01);
        int rectnum8 = rectnum7 + 1;
        this.mBaseImages[num].mFindRect[rectnum7] = new FindRect(0, 518, 80, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0002_02);
        int rectnum9 = rectnum8 + 1;
        this.mBaseImages[num].mFindRect[rectnum8] = new FindRect(142, 437, 80, 160, R.drawable.a0002_03);
        int rectnum10 = rectnum9 + 1;
        this.mBaseImages[num].mFindRect[rectnum9] = new FindRect(52, 443, 90, 140, R.drawable.a0002_04);
        int rectnum11 = rectnum10 + 1;
        this.mBaseImages[num].mFindRect[rectnum10] = new FindRect(207, 376, 100, 90, R.drawable.a0002_05);
        int rectnum12 = rectnum11 + 1;
        this.mBaseImages[num].mFindRect[rectnum11] = new FindRect(515, 386, 90, 90, R.drawable.a0002_06);
        int rectnum13 = rectnum12 + 1;
        this.mBaseImages[num].mFindRect[rectnum12] = new FindRect(458, 440, 80, 140, R.drawable.a0002_07);
        int rectnum14 = rectnum13 + 1;
        this.mBaseImages[num].mFindRect[rectnum13] = new FindRect(433, 558, 100, 80, R.drawable.a0002_08);
        int rectnum15 = rectnum14 + 1;
        this.mBaseImages[num].mFindRect[rectnum14] = new FindRect(293, 539, 80, 100, R.drawable.a0002_09);
        this.mBaseImages[num].mFindRect[rectnum15] = new FindRect(560, 474, 80, 80, R.drawable.a0002_10);
        int num2 = num + 1;
        this.mBaseImages[num].mFindRectTotalnum = rectnum15 + 1;
        this.mBaseImages[num2] = new FindImage(640, 720, R.drawable.a0003);
        int rectnum16 = 0 + 1;
        this.mBaseImages[num2].mFindRect[0] = new FindRect(531, 173, 100, 100, R.drawable.a0003_01);
        int rectnum17 = rectnum16 + 1;
        this.mBaseImages[num2].mFindRect[rectnum16] = new FindRect(539, 619, Defines.DIALOG_STATE.DLG_ERROR, Defines.DIALOG_STATE.DLG_ERROR, R.drawable.a0003_02);
        int rectnum18 = rectnum17 + 1;
        this.mBaseImages[num2].mFindRect[rectnum17] = new FindRect(320, 151, 160, 160, R.drawable.a0003_03);
        int rectnum19 = rectnum18 + 1;
        this.mBaseImages[num2].mFindRect[rectnum18] = new FindRect(22, 620, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 100, R.drawable.a0003_04);
        int rectnum20 = rectnum19 + 1;
        this.mBaseImages[num2].mFindRect[rectnum19] = new FindRect(GameView.VIBRATOR_TIME_NOTFINDRECT, 143, 80, 160, R.drawable.a0003_05);
        int rectnum21 = rectnum20 + 1;
        this.mBaseImages[num2].mFindRect[rectnum20] = new FindRect(510, 446, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0003_06);
        int rectnum22 = rectnum21 + 1;
        this.mBaseImages[num2].mFindRect[rectnum21] = new FindRect(520, 0, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0003_07);
        this.mBaseImages[num2].mFindRect[rectnum22] = new FindRect(0, 0, 90, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0003_08);
        int num3 = num2 + 1;
        this.mBaseImages[num2].mFindRectTotalnum = rectnum22 + 1;
        this.mBaseImages[num3] = new FindImage(640, 720, R.drawable.a0004);
        int rectnum23 = 0 + 1;
        this.mBaseImages[num3].mFindRect[0] = new FindRect(335, 426, 90, 90, R.drawable.a0004_01);
        int rectnum24 = rectnum23 + 1;
        this.mBaseImages[num3].mFindRect[rectnum23] = new FindRect(191, 63, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0004_02);
        int rectnum25 = rectnum24 + 1;
        this.mBaseImages[num3].mFindRect[rectnum24] = new FindRect(560, 168, 80, 81, R.drawable.a0004_03);
        int rectnum26 = rectnum25 + 1;
        this.mBaseImages[num3].mFindRect[rectnum25] = new FindRect(233, 281, 81, 81, R.drawable.a0004_04);
        int rectnum27 = rectnum26 + 1;
        this.mBaseImages[num3].mFindRect[rectnum26] = new FindRect(Defines.DIALOG_STATE.DLG_DOTORI_SMS_AUTH_DIALOG, 369, Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG, Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG, R.drawable.a0004_05);
        int rectnum28 = rectnum27 + 1;
        this.mBaseImages[num3].mFindRect[rectnum27] = new FindRect(304, 640, 160, 80, R.drawable.a0004_06);
        int rectnum29 = rectnum28 + 1;
        this.mBaseImages[num3].mFindRect[rectnum28] = new FindRect(476, 426, 160, 90, R.drawable.a0004_07);
        int rectnum30 = rectnum29 + 1;
        this.mBaseImages[num3].mFindRect[rectnum29] = new FindRect(286, 78, 80, 100, R.drawable.a0004_08);
        this.mBaseImages[num3].mFindRect[rectnum30] = new FindRect(42, 52, 90, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0004_09);
        int num4 = num3 + 1;
        this.mBaseImages[num3].mFindRectTotalnum = rectnum30 + 1;
        this.mBaseImages[num4] = new FindImage(640, 720, R.drawable.a0005);
        int rectnum31 = 0 + 1;
        this.mBaseImages[num4].mFindRect[0] = new FindRect(457, 338, GameView.BattleRoom.INACTIVE_ALPHA, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0005_01);
        int rectnum32 = rectnum31 + 1;
        this.mBaseImages[num4].mFindRect[rectnum31] = new FindRect(80, 308, GameView.BattleRoom.INACTIVE_ALPHA, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0005_02);
        int rectnum33 = rectnum32 + 1;
        this.mBaseImages[num4].mFindRect[rectnum32] = new FindRect(49, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_DISMISS, GameView.BattleRoom.INACTIVE_ALPHA, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0005_03);
        int rectnum34 = rectnum33 + 1;
        this.mBaseImages[num4].mFindRect[rectnum33] = new FindRect(479, 562, 160, 158, R.drawable.a0005_04);
        int rectnum35 = rectnum34 + 1;
        this.mBaseImages[num4].mFindRect[rectnum34] = new FindRect(388, 196, 140, 140, R.drawable.a0005_05);
        int rectnum36 = rectnum35 + 1;
        this.mBaseImages[num4].mFindRect[rectnum35] = new FindRect(277, 322, 140, 140, R.drawable.a0005_06);
        this.mBaseImages[num4].mFindRect[rectnum36] = new FindRect(219, 196, Defines.DIALOG_STATE.DLG_ERROR, Defines.DIALOG_STATE.DLG_ERROR, R.drawable.a0005_07);
        int num5 = num4 + 1;
        this.mBaseImages[num4].mFindRectTotalnum = rectnum36 + 1;
        this.mBaseImages[num5] = new FindImage(640, 720, R.drawable.a0006);
        int rectnum37 = 0 + 1;
        this.mBaseImages[num5].mFindRect[0] = new FindRect(237, 251, 100, 100, R.drawable.a0006_01);
        int rectnum38 = rectnum37 + 1;
        this.mBaseImages[num5].mFindRect[rectnum37] = new FindRect(74, 522, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_ERROR, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_ERROR, R.drawable.a0006_02);
        int rectnum39 = rectnum38 + 1;
        this.mBaseImages[num5].mFindRect[rectnum38] = new FindRect(338, 502, 160, 81, R.drawable.a0006_03);
        int rectnum40 = rectnum39 + 1;
        this.mBaseImages[num5].mFindRect[rectnum39] = new FindRect(214, 0, 80, 80, R.drawable.a0006_04);
        int rectnum41 = rectnum40 + 1;
        this.mBaseImages[num5].mFindRect[rectnum40] = new FindRect(475, 226, 80, 80, R.drawable.a0006_05);
        int rectnum42 = rectnum41 + 1;
        this.mBaseImages[num5].mFindRect[rectnum41] = new FindRect(528, 301, 80, 80, R.drawable.a0006_06);
        int rectnum43 = rectnum42 + 1;
        this.mBaseImages[num5].mFindRect[rectnum42] = new FindRect(508, 138, 80, 80, R.drawable.a0006_07);
        this.mBaseImages[num5].mFindRect[rectnum43] = new FindRect(0, 193, 160, 81, R.drawable.a0006_08);
        int num6 = num5 + 1;
        this.mBaseImages[num5].mFindRectTotalnum = rectnum43 + 1;
        this.mBaseImages[num6] = new FindImage(640, 720, R.drawable.a0007);
        int rectnum44 = 0 + 1;
        this.mBaseImages[num6].mFindRect[0] = new FindRect(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 233, 100, 100, R.drawable.a0007_01);
        int rectnum45 = rectnum44 + 1;
        this.mBaseImages[num6].mFindRect[rectnum44] = new FindRect(540, 204, 100, 100, R.drawable.a0007_02);
        int rectnum46 = rectnum45 + 1;
        this.mBaseImages[num6].mFindRect[rectnum45] = new FindRect(149, 403, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 60, R.drawable.a0007_03);
        int rectnum47 = rectnum46 + 1;
        this.mBaseImages[num6].mFindRect[rectnum46] = new FindRect(320, 501, 100, 100, R.drawable.a0007_04);
        int rectnum48 = rectnum47 + 1;
        this.mBaseImages[num6].mFindRect[rectnum47] = new FindRect(438, 404, 80, 80, R.drawable.a0007_05);
        int rectnum49 = rectnum48 + 1;
        this.mBaseImages[num6].mFindRect[rectnum48] = new FindRect(310, 0, 80, 80, R.drawable.a0007_06);
        int rectnum50 = rectnum49 + 1;
        this.mBaseImages[num6].mFindRect[rectnum49] = new FindRect(0, 291, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 80, R.drawable.a0007_07);
        this.mBaseImages[num6].mFindRect[rectnum50] = new FindRect(238, 88, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 80, R.drawable.a0007_08);
        int num7 = num6 + 1;
        this.mBaseImages[num6].mFindRectTotalnum = rectnum50 + 1;
        this.mBaseImages[num7] = new FindImage(640, 720, R.drawable.a0008);
        int rectnum51 = 0 + 1;
        this.mBaseImages[num7].mFindRect[0] = new FindRect(28, 630, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 90, R.drawable.a0008_01);
        int rectnum52 = rectnum51 + 1;
        this.mBaseImages[num7].mFindRect[rectnum51] = new FindRect(4, 338, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0008_02);
        int rectnum53 = rectnum52 + 1;
        this.mBaseImages[num7].mFindRect[rectnum52] = new FindRect(244, 458, 160, 160, R.drawable.a0008_03);
        int rectnum54 = rectnum53 + 1;
        this.mBaseImages[num7].mFindRect[rectnum53] = new FindRect(197, 590, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0008_04);
        int rectnum55 = rectnum54 + 1;
        this.mBaseImages[num7].mFindRect[rectnum54] = new FindRect(500, 58, 140, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0008_05);
        int rectnum56 = rectnum55 + 1;
        this.mBaseImages[num7].mFindRect[rectnum55] = new FindRect(159, 0, 140, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0008_06);
        int rectnum57 = rectnum56 + 1;
        this.mBaseImages[num7].mFindRect[rectnum56] = new FindRect(338, 156, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0008_07);
        this.mBaseImages[num7].mFindRect[rectnum57] = new FindRect(383, 473, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0008_08);
        int num8 = num7 + 1;
        this.mBaseImages[num7].mFindRectTotalnum = rectnum57 + 1;
        this.mBaseImages[num8] = new FindImage(640, 720, R.drawable.a0009);
        int rectnum58 = 0 + 1;
        this.mBaseImages[num8].mFindRect[0] = new FindRect(84, 580, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0009_01);
        int rectnum59 = rectnum58 + 1;
        this.mBaseImages[num8].mFindRect[rectnum58] = new FindRect(237, 401, 80, 80, R.drawable.a0009_02);
        int rectnum60 = rectnum59 + 1;
        this.mBaseImages[num8].mFindRect[rectnum59] = new FindRect(327, 468, 80, 80, R.drawable.a0009_03);
        int rectnum61 = rectnum60 + 1;
        this.mBaseImages[num8].mFindRect[rectnum60] = new FindRect(195, 43, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 160, R.drawable.a0009_04);
        int rectnum62 = rectnum61 + 1;
        this.mBaseImages[num8].mFindRect[rectnum61] = new FindRect(513, 0, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 160, R.drawable.a0009_05);
        int rectnum63 = rectnum62 + 1;
        this.mBaseImages[num8].mFindRect[rectnum62] = new FindRect(0, 349, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0009_06);
        int rectnum64 = rectnum63 + 1;
        this.mBaseImages[num8].mFindRect[rectnum63] = new FindRect(520, 578, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0009_07);
        int rectnum65 = rectnum64 + 1;
        this.mBaseImages[num8].mFindRect[rectnum64] = new FindRect(469, 177, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0009_08);
        this.mBaseImages[num8].mFindRect[rectnum65] = new FindRect(138, 488, 80, 80, R.drawable.a0009_09);
        int num9 = num8 + 1;
        this.mBaseImages[num8].mFindRectTotalnum = rectnum65 + 1;
        this.mBaseImages[num9] = new FindImage(640, 720, R.drawable.a0010);
        int rectnum66 = 0 + 1;
        this.mBaseImages[num9].mFindRect[0] = new FindRect(52, 277, 80, 80, R.drawable.a0010_01);
        int rectnum67 = rectnum66 + 1;
        this.mBaseImages[num9].mFindRect[rectnum66] = new FindRect(380, 274, 80, 80, R.drawable.a0010_02);
        int rectnum68 = rectnum67 + 1;
        this.mBaseImages[num9].mFindRect[rectnum67] = new FindRect(277, 373, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0010_03);
        int rectnum69 = rectnum68 + 1;
        this.mBaseImages[num9].mFindRect[rectnum68] = new FindRect(483, 450, 100, 100, R.drawable.a0010_04);
        int rectnum70 = rectnum69 + 1;
        this.mBaseImages[num9].mFindRect[rectnum69] = new FindRect(180, 389, 100, 100, R.drawable.a0010_05);
        int rectnum71 = rectnum70 + 1;
        this.mBaseImages[num9].mFindRect[rectnum70] = new FindRect(94, 405, 90, 90, R.drawable.a0010_06);
        int rectnum72 = rectnum71 + 1;
        this.mBaseImages[num9].mFindRect[rectnum71] = new FindRect(8, 420, 80, 80, R.drawable.a0010_07);
        int rectnum73 = rectnum72 + 1;
        this.mBaseImages[num9].mFindRect[rectnum72] = new FindRect(189, 490, 80, 80, R.drawable.a0010_08);
        int rectnum74 = rectnum73 + 1;
        this.mBaseImages[num9].mFindRect[rectnum73] = new FindRect(225, 221, 80, 80, R.drawable.a0010_09);
        this.mBaseImages[num9].mFindRect[rectnum74] = new FindRect(158, 0, 80, 80, R.drawable.a0010_10);
        int num10 = num9 + 1;
        this.mBaseImages[num9].mFindRectTotalnum = rectnum74 + 1;
        this.mBaseImages[num10] = new FindImage(640, 720, R.drawable.a0011);
        int rectnum75 = 0 + 1;
        this.mBaseImages[num10].mFindRect[0] = new FindRect(232, 196, 80, 80, R.drawable.a0011_01);
        int rectnum76 = rectnum75 + 1;
        this.mBaseImages[num10].mFindRect[rectnum75] = new FindRect(338, 513, 80, 80, R.drawable.a0011_02);
        int rectnum77 = rectnum76 + 1;
        this.mBaseImages[num10].mFindRect[rectnum76] = new FindRect(160, 480, 100, 100, R.drawable.a0011_03);
        int rectnum78 = rectnum77 + 1;
        this.mBaseImages[num10].mFindRect[rectnum77] = new FindRect(560, 419, 80, 80, R.drawable.a0011_04);
        int rectnum79 = rectnum78 + 1;
        this.mBaseImages[num10].mFindRect[rectnum78] = new FindRect(363, 285, 80, 80, R.drawable.a0011_05);
        int rectnum80 = rectnum79 + 1;
        this.mBaseImages[num10].mFindRect[rectnum79] = new FindRect(68, 184, 100, 100, R.drawable.a0011_06);
        int rectnum81 = rectnum80 + 1;
        this.mBaseImages[num10].mFindRect[rectnum80] = new FindRect(418, 197, 80, 80, R.drawable.a0011_07);
        int rectnum82 = rectnum81 + 1;
        this.mBaseImages[num10].mFindRect[rectnum81] = new FindRect(19, 410, 100, 100, R.drawable.a0011_08);
        int rectnum83 = rectnum82 + 1;
        this.mBaseImages[num10].mFindRect[rectnum82] = new FindRect(502, 195, 80, 80, R.drawable.a0011_09);
        this.mBaseImages[num10].mFindRect[rectnum83] = new FindRect(360, 446, 80, 80, R.drawable.a0011_10);
        int num11 = num10 + 1;
        this.mBaseImages[num10].mFindRectTotalnum = rectnum83 + 1;
        this.mBaseImages[num11] = new FindImage(640, 720, R.drawable.a0012);
        int rectnum84 = 0 + 1;
        this.mBaseImages[num11].mFindRect[0] = new FindRect(288, 269, 80, 80, R.drawable.a0012_01);
        int rectnum85 = rectnum84 + 1;
        this.mBaseImages[num11].mFindRect[rectnum84] = new FindRect(278, 347, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0012_02);
        int rectnum86 = rectnum85 + 1;
        this.mBaseImages[num11].mFindRect[rectnum85] = new FindRect(355, 596, 100, 100, R.drawable.a0012_03);
        int rectnum87 = rectnum86 + 1;
        this.mBaseImages[num11].mFindRect[rectnum86] = new FindRect(9, 587, 100, 80, R.drawable.a0012_04);
        int rectnum88 = rectnum87 + 1;
        this.mBaseImages[num11].mFindRect[rectnum87] = new FindRect(401, 479, 100, 100, R.drawable.a0012_05);
        int rectnum89 = rectnum88 + 1;
        this.mBaseImages[num11].mFindRect[rectnum88] = new FindRect(290, 52, 100, 100, R.drawable.a0012_06);
        int rectnum90 = rectnum89 + 1;
        this.mBaseImages[num11].mFindRect[rectnum89] = new FindRect(138, 37, 90, 160, R.drawable.a0012_07);
        this.mBaseImages[num11].mFindRect[rectnum90] = new FindRect(421, 187, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 80, R.drawable.a0012_08);
        int num12 = num11 + 1;
        this.mBaseImages[num11].mFindRectTotalnum = rectnum90 + 1;
        this.mBaseImages[num12] = new FindImage(640, 720, R.drawable.a0013);
        int rectnum91 = 0 + 1;
        this.mBaseImages[num12].mFindRect[0] = new FindRect(510, 570, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0013_01);
        int rectnum92 = rectnum91 + 1;
        this.mBaseImages[num12].mFindRect[rectnum91] = new FindRect(0, 530, 100, 100, R.drawable.a0013_02);
        int rectnum93 = rectnum92 + 1;
        this.mBaseImages[num12].mFindRect[rectnum92] = new FindRect(376, Defines.DIALOG_STATE.DLG_OCB_REG_ERROR, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 80, R.drawable.a0013_03);
        int rectnum94 = rectnum93 + 1;
        this.mBaseImages[num12].mFindRect[rectnum93] = new FindRect(209, Defines.DIALOG_STATE.DLG_OTP_DIALOG, 140, 80, R.drawable.a0013_04);
        int rectnum95 = rectnum94 + 1;
        this.mBaseImages[num12].mFindRect[rectnum94] = new FindRect(212, 306, GameView.BattleRoom.INACTIVE_ALPHA, 160, R.drawable.a0013_05);
        int rectnum96 = rectnum95 + 1;
        this.mBaseImages[num12].mFindRect[rectnum95] = new FindRect(390, 389, 100, 100, R.drawable.a0013_06);
        int rectnum97 = rectnum96 + 1;
        this.mBaseImages[num12].mFindRect[rectnum96] = new FindRect(46, 0, 100, 100, R.drawable.a0013_07);
        this.mBaseImages[num12].mFindRect[rectnum97] = new FindRect(560, 288, 80, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0013_08);
        int num13 = num12 + 1;
        this.mBaseImages[num12].mFindRectTotalnum = rectnum97 + 1;
        this.mBaseImages[num13] = new FindImage(640, 720, R.drawable.a0014);
        int rectnum98 = 0 + 1;
        this.mBaseImages[num13].mFindRect[0] = new FindRect(Defines.DIALOG_STATE.DLG_CULTURELAND_LOGIN_DIALOG, 83, 100, 100, R.drawable.a0014_01);
        int rectnum99 = rectnum98 + 1;
        this.mBaseImages[num13].mFindRect[rectnum98] = new FindRect(46, 213, 80, 80, R.drawable.a0014_02);
        int rectnum100 = rectnum99 + 1;
        this.mBaseImages[num13].mFindRect[rectnum99] = new FindRect(403, 441, 80, 80, R.drawable.a0014_03);
        int rectnum101 = rectnum100 + 1;
        this.mBaseImages[num13].mFindRect[rectnum100] = new FindRect(13, 384, 100, 100, R.drawable.a0014_04);
        int rectnum102 = rectnum101 + 1;
        this.mBaseImages[num13].mFindRect[rectnum101] = new FindRect(144, 541, 80, 80, R.drawable.a0014_05);
        int rectnum103 = rectnum102 + 1;
        this.mBaseImages[num13].mFindRect[rectnum102] = new FindRect(423, 574, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0014_06);
        int rectnum104 = rectnum103 + 1;
        this.mBaseImages[num13].mFindRect[rectnum103] = new FindRect(501, 234, 80, 80, R.drawable.a0014_07);
        int rectnum105 = rectnum104 + 1;
        this.mBaseImages[num13].mFindRect[rectnum104] = new FindRect(204, 273, 80, 80, R.drawable.a0014_08);
        int rectnum106 = rectnum105 + 1;
        this.mBaseImages[num13].mFindRect[rectnum105] = new FindRect(46, 0, 161, 80, R.drawable.a0014_09);
        this.mBaseImages[num13].mFindRect[rectnum106] = new FindRect(241, 27, 100, Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG, R.drawable.a0014_10);
        int num14 = num13 + 1;
        this.mBaseImages[num13].mFindRectTotalnum = rectnum106 + 1;
        this.mBaseImages[num14] = new FindImage(640, 720, R.drawable.a0015);
        int rectnum107 = 0 + 1;
        this.mBaseImages[num14].mFindRect[0] = new FindRect(540, 70, 100, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0015_01);
        int rectnum108 = rectnum107 + 1;
        this.mBaseImages[num14].mFindRect[rectnum107] = new FindRect(0, Defines.DIALOG_STATE.DLG_OCB_DELETE_YESNO_DIALOG, 140, 80, R.drawable.a0015_02);
        int rectnum109 = rectnum108 + 1;
        this.mBaseImages[num14].mFindRect[rectnum108] = new FindRect(394, 85, 135, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0015_03);
        int rectnum110 = rectnum109 + 1;
        this.mBaseImages[num14].mFindRect[rectnum109] = new FindRect(487, 258, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0015_04);
        int rectnum111 = rectnum110 + 1;
        this.mBaseImages[num14].mFindRect[rectnum110] = new FindRect(372, 560, GameView.BattleRoom.INACTIVE_ALPHA, 160, R.drawable.a0015_05);
        int rectnum112 = rectnum111 + 1;
        this.mBaseImages[num14].mFindRect[rectnum111] = new FindRect(438, 413, 100, 100, R.drawable.a0015_06);
        this.mBaseImages[num14].mFindRect[rectnum112] = new FindRect(224, 174, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 160, R.drawable.a0015_07);
        int num15 = num14 + 1;
        this.mBaseImages[num14].mFindRectTotalnum = rectnum112 + 1;
        this.mBaseImages[num15] = new FindImage(640, 720, R.drawable.a0051);
        int rectnum113 = 0 + 1;
        this.mBaseImages[num15].mFindRect[0] = new FindRect(0, 158, 80, 80, R.drawable.a0051_01);
        int rectnum114 = rectnum113 + 1;
        this.mBaseImages[num15].mFindRect[rectnum113] = new FindRect(30, 349, 80, 80, R.drawable.a0051_02);
        int rectnum115 = rectnum114 + 1;
        this.mBaseImages[num15].mFindRect[rectnum114] = new FindRect(423, 370, 80, 80, R.drawable.a0051_03);
        int rectnum116 = rectnum115 + 1;
        this.mBaseImages[num15].mFindRect[rectnum115] = new FindRect(275, 425, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0051_04);
        int rectnum117 = rectnum116 + 1;
        this.mBaseImages[num15].mFindRect[rectnum116] = new FindRect(332, 587, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0051_05);
        int rectnum118 = rectnum117 + 1;
        this.mBaseImages[num15].mFindRect[rectnum117] = new FindRect(560, 276, 80, 80, R.drawable.a0051_06);
        int rectnum119 = rectnum118 + 1;
        this.mBaseImages[num15].mFindRect[rectnum118] = new FindRect(292, 183, 80, 80, R.drawable.a0051_07);
        int rectnum120 = rectnum119 + 1;
        this.mBaseImages[num15].mFindRect[rectnum119] = new FindRect(76, 261, 80, 80, R.drawable.a0051_08);
        int rectnum121 = rectnum120 + 1;
        this.mBaseImages[num15].mFindRect[rectnum120] = new FindRect(293, 37, 100, 100, R.drawable.a0051_09);
        this.mBaseImages[num15].mFindRect[rectnum121] = new FindRect(509, 209, 100, 100, R.drawable.a0051_10);
        int num16 = num15 + 1;
        this.mBaseImages[num15].mFindRectTotalnum = rectnum121 + 1;
        this.mBaseImages[num16] = new FindImage(640, 720, R.drawable.a0052);
        int rectnum122 = 0 + 1;
        this.mBaseImages[num16].mFindRect[0] = new FindRect(441, 181, 100, 100, R.drawable.a0052_01);
        int rectnum123 = rectnum122 + 1;
        this.mBaseImages[num16].mFindRect[rectnum122] = new FindRect(406, 569, 100, 100, R.drawable.a0052_02);
        int rectnum124 = rectnum123 + 1;
        this.mBaseImages[num16].mFindRect[rectnum123] = new FindRect(145, 449, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0052_03);
        int rectnum125 = rectnum124 + 1;
        this.mBaseImages[num16].mFindRect[rectnum124] = new FindRect(9, 214, 100, 100, R.drawable.a0052_04);
        int rectnum126 = rectnum125 + 1;
        this.mBaseImages[num16].mFindRect[rectnum125] = new FindRect(156, 72, 100, 100, R.drawable.a0052_05);
        int rectnum127 = rectnum126 + 1;
        this.mBaseImages[num16].mFindRect[rectnum126] = new FindRect(511, 298, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0052_06);
        int rectnum128 = rectnum127 + 1;
        this.mBaseImages[num16].mFindRect[rectnum127] = new FindRect(301, 187, 100, 100, R.drawable.a0052_07);
        int rectnum129 = rectnum128 + 1;
        this.mBaseImages[num16].mFindRect[rectnum128] = new FindRect(344, 409, 100, 100, R.drawable.a0052_08);
        this.mBaseImages[num16].mFindRect[rectnum129] = new FindRect(449, 42, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 100, R.drawable.a0052_09);
        int num17 = num16 + 1;
        this.mBaseImages[num16].mFindRectTotalnum = rectnum129 + 1;
        this.mBaseImages[num17] = new FindImage(640, 720, R.drawable.a0053);
        int rectnum130 = 0 + 1;
        this.mBaseImages[num17].mFindRect[0] = new FindRect(341, 302, 80, 80, R.drawable.a0053_01);
        int rectnum131 = rectnum130 + 1;
        this.mBaseImages[num17].mFindRect[rectnum130] = new FindRect(317, 610, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0053_02);
        int rectnum132 = rectnum131 + 1;
        this.mBaseImages[num17].mFindRect[rectnum131] = new FindRect(425, 590, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0053_03);
        int rectnum133 = rectnum132 + 1;
        this.mBaseImages[num17].mFindRect[rectnum132] = new FindRect(322, 61, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0053_04);
        int rectnum134 = rectnum133 + 1;
        this.mBaseImages[num17].mFindRect[rectnum133] = new FindRect(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 336, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 90, R.drawable.a0053_05);
        int rectnum135 = rectnum134 + 1;
        this.mBaseImages[num17].mFindRect[rectnum134] = new FindRect(142, 173, 160, 100, R.drawable.a0053_06);
        int rectnum136 = rectnum135 + 1;
        this.mBaseImages[num17].mFindRect[rectnum135] = new FindRect(0, 519, 80, 160, R.drawable.a0053_07);
        this.mBaseImages[num17].mFindRect[rectnum136] = new FindRect(516, 419, 100, 100, R.drawable.a0053_08);
        int num18 = num17 + 1;
        this.mBaseImages[num17].mFindRectTotalnum = rectnum136 + 1;
        this.mBaseImages[num18] = new FindImage(640, 720, R.drawable.a0054);
        int rectnum137 = 0 + 1;
        this.mBaseImages[num18].mFindRect[0] = new FindRect(270, 458, 80, 80, R.drawable.a0054_01);
        int rectnum138 = rectnum137 + 1;
        this.mBaseImages[num18].mFindRect[rectnum137] = new FindRect(0, 289, 100, 100, R.drawable.a0054_02);
        int rectnum139 = rectnum138 + 1;
        this.mBaseImages[num18].mFindRect[rectnum138] = new FindRect(534, 0, 100, 100, R.drawable.a0054_03);
        int rectnum140 = rectnum139 + 1;
        this.mBaseImages[num18].mFindRect[rectnum139] = new FindRect(540, 579, 100, 100, R.drawable.a0054_04);
        int rectnum141 = rectnum140 + 1;
        this.mBaseImages[num18].mFindRect[rectnum140] = new FindRect(378, 153, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0054_05);
        int rectnum142 = rectnum141 + 1;
        this.mBaseImages[num18].mFindRect[rectnum141] = new FindRect(233, 306, 141, 141, R.drawable.a0054_06);
        int rectnum143 = rectnum142 + 1;
        this.mBaseImages[num18].mFindRect[rectnum142] = new FindRect(540, 257, 100, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0054_07);
        int rectnum144 = rectnum143 + 1;
        this.mBaseImages[num18].mFindRect[rectnum143] = new FindRect(0, 571, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0054_08);
        this.mBaseImages[num18].mFindRect[rectnum144] = new FindRect(Defines.DIALOG_STATE.DLG_OCB_CARD_DELETE, 0, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0054_09);
        int num19 = num18 + 1;
        this.mBaseImages[num18].mFindRectTotalnum = rectnum144 + 1;
        this.mBaseImages[num19] = new FindImage(640, 720, R.drawable.a0055);
        int rectnum145 = 0 + 1;
        this.mBaseImages[num19].mFindRect[0] = new FindRect(292, 454, 100, 100, R.drawable.a0055_01);
        int rectnum146 = rectnum145 + 1;
        this.mBaseImages[num19].mFindRect[rectnum145] = new FindRect(0, 540, 80, 80, R.drawable.a0055_02);
        int rectnum147 = rectnum146 + 1;
        this.mBaseImages[num19].mFindRect[rectnum146] = new FindRect(353, 271, 80, 80, R.drawable.a0055_03);
        int rectnum148 = rectnum147 + 1;
        this.mBaseImages[num19].mFindRect[rectnum147] = new FindRect(171, 25, 80, 80, R.drawable.a0055_04);
        int rectnum149 = rectnum148 + 1;
        this.mBaseImages[num19].mFindRect[rectnum148] = new FindRect(337, 169, 80, 80, R.drawable.a0055_05);
        int rectnum150 = rectnum149 + 1;
        this.mBaseImages[num19].mFindRect[rectnum149] = new FindRect(548, 160, 80, 80, R.drawable.a0055_06);
        int rectnum151 = rectnum150 + 1;
        this.mBaseImages[num19].mFindRect[rectnum150] = new FindRect(530, 420, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 140, R.drawable.a0055_07);
        int rectnum152 = rectnum151 + 1;
        this.mBaseImages[num19].mFindRect[rectnum151] = new FindRect(432, 610, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0055_08);
        this.mBaseImages[num19].mFindRect[rectnum152] = new FindRect(0, 231, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0055_09);
        int num20 = num19 + 1;
        this.mBaseImages[num19].mFindRectTotalnum = rectnum152 + 1;
        this.mBaseImages[num20] = new FindImage(640, 720, R.drawable.a0056);
        int rectnum153 = 0 + 1;
        this.mBaseImages[num20].mFindRect[0] = new FindRect(72, 269, 80, 80, R.drawable.a0056_01);
        int rectnum154 = rectnum153 + 1;
        this.mBaseImages[num20].mFindRect[rectnum153] = new FindRect(201, Defines.DIALOG_STATE.DLG_PURCHASE_CONFIRM, 80, 90, R.drawable.a0056_02);
        int rectnum155 = rectnum154 + 1;
        this.mBaseImages[num20].mFindRect[rectnum154] = new FindRect(417, 252, 80, 80, R.drawable.a0056_03);
        int rectnum156 = rectnum155 + 1;
        this.mBaseImages[num20].mFindRect[rectnum155] = new FindRect(540, Defines.DIALOG_STATE.DLG_LGU_SMS_AUTH_DIALOG, 100, 100, R.drawable.a0056_04);
        int rectnum157 = rectnum156 + 1;
        this.mBaseImages[num20].mFindRect[rectnum156] = new FindRect(88, 2, 100, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0056_05);
        int rectnum158 = rectnum157 + 1;
        this.mBaseImages[num20].mFindRect[rectnum157] = new FindRect(271, 203, 100, 100, R.drawable.a0056_06);
        int rectnum159 = rectnum158 + 1;
        this.mBaseImages[num20].mFindRect[rectnum158] = new FindRect(395, 433, 80, 80, R.drawable.a0056_07);
        this.mBaseImages[num20].mFindRect[rectnum159] = new FindRect(153, 373, 80, 80, R.drawable.a0056_08);
        int num21 = num20 + 1;
        this.mBaseImages[num20].mFindRectTotalnum = rectnum159 + 1;
        this.mBaseImages[num21] = new FindImage(640, 720, R.drawable.a0057);
        int rectnum160 = 0 + 1;
        this.mBaseImages[num21].mFindRect[0] = new FindRect(470, 447, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0057_01);
        int rectnum161 = rectnum160 + 1;
        this.mBaseImages[num21].mFindRect[rectnum160] = new FindRect(4, 414, 80, 80, R.drawable.a0057_02);
        int rectnum162 = rectnum161 + 1;
        this.mBaseImages[num21].mFindRect[rectnum161] = new FindRect(152, 382, 100, 100, R.drawable.a0057_03);
        int rectnum163 = rectnum162 + 1;
        this.mBaseImages[num21].mFindRect[rectnum162] = new FindRect(347, 409, 80, 80, R.drawable.a0057_04);
        int rectnum164 = rectnum163 + 1;
        this.mBaseImages[num21].mFindRect[rectnum163] = new FindRect(17, 239, 80, 80, R.drawable.a0057_05);
        int rectnum165 = rectnum164 + 1;
        this.mBaseImages[num21].mFindRect[rectnum164] = new FindRect(0, 37, 80, 80, R.drawable.a0057_06);
        int rectnum166 = rectnum165 + 1;
        this.mBaseImages[num21].mFindRect[rectnum165] = new FindRect(413, 214, 80, 80, R.drawable.a0057_07);
        this.mBaseImages[num21].mFindRect[rectnum166] = new FindRect(540, 0, 100, 100, R.drawable.a0057_08);
        int num22 = num21 + 1;
        this.mBaseImages[num21].mFindRectTotalnum = rectnum166 + 1;
        this.mBaseImages[num22] = new FindImage(640, 720, R.drawable.a0058);
        int rectnum167 = 0 + 1;
        this.mBaseImages[num22].mFindRect[0] = new FindRect(Defines.DIALOG_STATE.DLG_OCB_DELETE_YESNO_DIALOG, 403, 80, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0058_01);
        int rectnum168 = rectnum167 + 1;
        this.mBaseImages[num22].mFindRect[rectnum167] = new FindRect(427, 420, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0058_02);
        int rectnum169 = rectnum168 + 1;
        this.mBaseImages[num22].mFindRect[rectnum168] = new FindRect(Defines.DIALOG_STATE.DLG_JOIN_FORM_DIALOG, 315, 140, 90, R.drawable.a0058_03);
        int rectnum170 = rectnum169 + 1;
        this.mBaseImages[num22].mFindRect[rectnum169] = new FindRect(435, 325, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 80, R.drawable.a0058_04);
        int rectnum171 = rectnum170 + 1;
        this.mBaseImages[num22].mFindRect[rectnum170] = new FindRect(287, 314, 80, 80, R.drawable.a0058_05);
        int rectnum172 = rectnum171 + 1;
        this.mBaseImages[num22].mFindRect[rectnum171] = new FindRect(480, 35, 160, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0058_06);
        int rectnum173 = rectnum172 + 1;
        this.mBaseImages[num22].mFindRect[rectnum172] = new FindRect(64, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, 100, R.drawable.a0058_07);
        int rectnum174 = rectnum173 + 1;
        this.mBaseImages[num22].mFindRect[rectnum173] = new FindRect(308, 172, 80, 80, R.drawable.a0058_08);
        this.mBaseImages[num22].mFindRect[rectnum174] = new FindRect(219, 0, GameView.BattleRoom.INACTIVE_ALPHA, 100, R.drawable.a0058_09);
        int num23 = num22 + 1;
        this.mBaseImages[num22].mFindRectTotalnum = rectnum174 + 1;
        this.mBaseImages[num23] = new FindImage(640, 720, R.drawable.a0059);
        int rectnum175 = 0 + 1;
        this.mBaseImages[num23].mFindRect[0] = new FindRect(Defines.DIALOG_STATE.DLG_DOTORI_SMS_AUTH_DIALOG, 612, 80, 80, R.drawable.a0059_01);
        int rectnum176 = rectnum175 + 1;
        this.mBaseImages[num23].mFindRect[rectnum175] = new FindRect(405, 196, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0059_02);
        int rectnum177 = rectnum176 + 1;
        this.mBaseImages[num23].mFindRect[rectnum176] = new FindRect(266, 0, 80, 100, R.drawable.a0059_03);
        int rectnum178 = rectnum177 + 1;
        this.mBaseImages[num23].mFindRect[rectnum177] = new FindRect(501, 520, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 100, R.drawable.a0059_04);
        int rectnum179 = rectnum178 + 1;
        this.mBaseImages[num23].mFindRect[rectnum178] = new FindRect(353, 575, 80, 80, R.drawable.a0059_05);
        int rectnum180 = rectnum179 + 1;
        this.mBaseImages[num23].mFindRect[rectnum179] = new FindRect(14, 348, 100, 80, R.drawable.a0059_06);
        int rectnum181 = rectnum180 + 1;
        this.mBaseImages[num23].mFindRect[rectnum180] = new FindRect(144, 133, 80, 80, R.drawable.a0059_07);
        int rectnum182 = rectnum181 + 1;
        this.mBaseImages[num23].mFindRect[rectnum181] = new FindRect(249, 410, 80, 80, R.drawable.a0059_08);
        this.mBaseImages[num23].mFindRect[rectnum182] = new FindRect(264, 268, 80, 80, R.drawable.a0059_09);
        int num24 = num23 + 1;
        this.mBaseImages[num23].mFindRectTotalnum = rectnum182 + 1;
        this.mBaseImages[num24] = new FindImage(640, 720, R.drawable.a0060);
        int rectnum183 = 0 + 1;
        this.mBaseImages[num24].mFindRect[0] = new FindRect(68, 185, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 80, R.drawable.a0060_01);
        int rectnum184 = rectnum183 + 1;
        this.mBaseImages[num24].mFindRect[rectnum183] = new FindRect(43, 277, 80, 80, R.drawable.a0060_02);
        int rectnum185 = rectnum184 + 1;
        this.mBaseImages[num24].mFindRect[rectnum184] = new FindRect(182, 413, 100, 100, R.drawable.a0060_03);
        int rectnum186 = rectnum185 + 1;
        this.mBaseImages[num24].mFindRect[rectnum185] = new FindRect(0, 600, 100, 100, R.drawable.a0060_04);
        int rectnum187 = rectnum186 + 1;
        this.mBaseImages[num24].mFindRect[rectnum186] = new FindRect(460, 429, 80, 80, R.drawable.a0060_05);
        int rectnum188 = rectnum187 + 1;
        this.mBaseImages[num24].mFindRect[rectnum187] = new FindRect(504, 262, 100, 100, R.drawable.a0060_06);
        int rectnum189 = rectnum188 + 1;
        this.mBaseImages[num24].mFindRect[rectnum188] = new FindRect(403, 0, 100, 140, R.drawable.a0060_07);
        int rectnum190 = rectnum189 + 1;
        this.mBaseImages[num24].mFindRect[rectnum189] = new FindRect(321, 570, 160, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0060_08);
        int rectnum191 = rectnum190 + 1;
        this.mBaseImages[num24].mFindRect[rectnum190] = new FindRect(560, 55, 80, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0060_09);
        this.mBaseImages[num24].mFindRect[rectnum191] = new FindRect(39, 425, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0060_10);
        int num25 = num24 + 1;
        this.mBaseImages[num24].mFindRectTotalnum = rectnum191 + 1;
        this.mBaseImages[num25] = new FindImage(640, 720, R.drawable.a0061);
        int rectnum192 = 0 + 1;
        this.mBaseImages[num25].mFindRect[0] = new FindRect(169, 630, 160, 90, R.drawable.a0061_01);
        int rectnum193 = rectnum192 + 1;
        this.mBaseImages[num25].mFindRect[rectnum192] = new FindRect(375, 406, 80, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0061_02);
        int rectnum194 = rectnum193 + 1;
        this.mBaseImages[num25].mFindRect[rectnum193] = new FindRect(4, 375, 80, 80, R.drawable.a0061_03);
        int rectnum195 = rectnum194 + 1;
        this.mBaseImages[num25].mFindRect[rectnum194] = new FindRect(540, 504, 100, 100, R.drawable.a0061_04);
        int rectnum196 = rectnum195 + 1;
        this.mBaseImages[num25].mFindRect[rectnum195] = new FindRect(49, 503, 100, 100, R.drawable.a0061_05);
        int rectnum197 = rectnum196 + 1;
        this.mBaseImages[num25].mFindRect[rectnum196] = new FindRect(0, 33, 100, 100, R.drawable.a0061_06);
        int rectnum198 = rectnum197 + 1;
        this.mBaseImages[num25].mFindRect[rectnum197] = new FindRect(413, 190, 140, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0061_07);
        int rectnum199 = rectnum198 + 1;
        this.mBaseImages[num25].mFindRect[rectnum198] = new FindRect(233, 271, Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG, 100, R.drawable.a0061_08);
        int rectnum200 = rectnum199 + 1;
        this.mBaseImages[num25].mFindRect[rectnum199] = new FindRect(209, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 80, 80, R.drawable.a0061_09);
        this.mBaseImages[num25].mFindRect[rectnum200] = new FindRect(448, 67, 80, 80, R.drawable.a0061_10);
        int num26 = num25 + 1;
        this.mBaseImages[num25].mFindRectTotalnum = rectnum200 + 1;
        this.mBaseImages[num26] = new FindImage(640, 720, R.drawable.a0062);
        int rectnum201 = 0 + 1;
        this.mBaseImages[num26].mFindRect[0] = new FindRect(9, 40, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 100, R.drawable.a0062_01);
        int rectnum202 = rectnum201 + 1;
        this.mBaseImages[num26].mFindRect[rectnum201] = new FindRect(460, Defines.DIALOG_STATE.DLG_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, 100, R.drawable.a0062_02);
        int rectnum203 = rectnum202 + 1;
        this.mBaseImages[num26].mFindRect[rectnum202] = new FindRect(0, 515, 80, 80, R.drawable.a0062_03);
        int rectnum204 = rectnum203 + 1;
        this.mBaseImages[num26].mFindRect[rectnum203] = new FindRect(436, 406, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 100, R.drawable.a0062_04);
        int rectnum205 = rectnum204 + 1;
        this.mBaseImages[num26].mFindRect[rectnum204] = new FindRect(530, 587, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0062_05);
        int rectnum206 = rectnum205 + 1;
        this.mBaseImages[num26].mFindRect[rectnum205] = new FindRect(358, 14, 140, 80, R.drawable.a0062_06);
        int rectnum207 = rectnum206 + 1;
        this.mBaseImages[num26].mFindRect[rectnum206] = new FindRect(354, 630, 160, 90, R.drawable.a0062_07);
        int rectnum208 = rectnum207 + 1;
        this.mBaseImages[num26].mFindRect[rectnum207] = new FindRect(Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR, 427, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, 100, R.drawable.a0062_08);
        this.mBaseImages[num26].mFindRect[rectnum208] = new FindRect(0, 197, 160, 160, R.drawable.a0062_09);
        int num27 = num26 + 1;
        this.mBaseImages[num26].mFindRectTotalnum = rectnum208 + 1;
        this.mBaseImages[num27] = new FindImage(640, 720, R.drawable.a0063);
        int rectnum209 = 0 + 1;
        this.mBaseImages[num27].mFindRect[0] = new FindRect(10, 0, 80, 80, R.drawable.a0063_01);
        int rectnum210 = rectnum209 + 1;
        this.mBaseImages[num27].mFindRect[rectnum209] = new FindRect(0, 640, 80, 80, R.drawable.a0063_02);
        int rectnum211 = rectnum210 + 1;
        this.mBaseImages[num27].mFindRect[rectnum210] = new FindRect(363, 274, 100, 100, R.drawable.a0063_03);
        int rectnum212 = rectnum211 + 1;
        this.mBaseImages[num27].mFindRect[rectnum211] = new FindRect(0, 418, 80, 80, R.drawable.a0063_04);
        int rectnum213 = rectnum212 + 1;
        this.mBaseImages[num27].mFindRect[rectnum212] = new FindRect(170, 409, 100, 100, R.drawable.a0063_05);
        int rectnum214 = rectnum213 + 1;
        this.mBaseImages[num27].mFindRect[rectnum213] = new FindRect(0, 214, 100, 100, R.drawable.a0063_06);
        int rectnum215 = rectnum214 + 1;
        this.mBaseImages[num27].mFindRect[rectnum214] = new FindRect(510, 576, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, R.drawable.a0063_07);
        int rectnum216 = rectnum215 + 1;
        this.mBaseImages[num27].mFindRect[rectnum215] = new FindRect(560, 322, 80, 80, R.drawable.a0063_08);
        this.mBaseImages[num27].mFindRect[rectnum216] = new FindRect(321, 548, 79, 158, R.drawable.a0063_09);
        int num28 = num27 + 1;
        this.mBaseImages[num27].mFindRectTotalnum = rectnum216 + 1;
        this.mBaseImages[num28] = new FindImage(640, 720, R.drawable.a0064);
        int rectnum217 = 0 + 1;
        this.mBaseImages[num28].mFindRect[0] = new FindRect(540, Defines.DIALOG_STATE.DLG_PURCHASE_PROGRESS, 100, Defines.DIALOG_STATE.DLG_ERROR, R.drawable.a0064_01);
        int rectnum218 = rectnum217 + 1;
        this.mBaseImages[num28].mFindRect[rectnum217] = new FindRect(540, 447, 100, 81, R.drawable.a0064_02);
        int rectnum219 = rectnum218 + 1;
        this.mBaseImages[num28].mFindRect[rectnum218] = new FindRect(2, 54, 81, 81, R.drawable.a0064_03);
        int rectnum220 = rectnum219 + 1;
        this.mBaseImages[num28].mFindRect[rectnum219] = new FindRect(334, 567, 81, 81, R.drawable.a0064_04);
        int rectnum221 = rectnum220 + 1;
        this.mBaseImages[num28].mFindRect[rectnum220] = new FindRect(510, 569, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0064_05);
        int rectnum222 = rectnum221 + 1;
        this.mBaseImages[num28].mFindRect[rectnum221] = new FindRect(1, 559, 160, 160, R.drawable.a0064_06);
        int rectnum223 = rectnum222 + 1;
        this.mBaseImages[num28].mFindRect[rectnum222] = new FindRect(295, 258, 81, 81, R.drawable.a0064_07);
        int rectnum224 = rectnum223 + 1;
        this.mBaseImages[num28].mFindRect[rectnum223] = new FindRect(1, 202, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, 131, R.drawable.a0064_08);
        int rectnum225 = rectnum224 + 1;
        this.mBaseImages[num28].mFindRect[rectnum224] = new FindRect(343, 427, 131, 131, R.drawable.a0064_09);
        this.mBaseImages[num28].mFindRect[rectnum225] = new FindRect(209, 72, 81, 81, R.drawable.a0064_10);
        int num29 = num28 + 1;
        this.mBaseImages[num28].mFindRectTotalnum = rectnum225 + 1;
        this.mBaseImages[num29] = new FindImage(640, 720, R.drawable.a0065);
        int rectnum226 = 0 + 1;
        this.mBaseImages[num29].mFindRect[0] = new FindRect(444, 570, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, GameView.BattleRoom.INACTIVE_ALPHA, R.drawable.a0065_01);
        int rectnum227 = rectnum226 + 1;
        this.mBaseImages[num29].mFindRect[rectnum226] = new FindRect(156, 620, 100, 100, R.drawable.a0065_02);
        int rectnum228 = rectnum227 + 1;
        this.mBaseImages[num29].mFindRect[rectnum227] = new FindRect(40, 476, 100, 100, R.drawable.a0065_03);
        int rectnum229 = rectnum228 + 1;
        this.mBaseImages[num29].mFindRect[rectnum228] = new FindRect(44, 4, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0065_04);
        int rectnum230 = rectnum229 + 1;
        this.mBaseImages[num29].mFindRect[rectnum229] = new FindRect(210, 195, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, R.drawable.a0065_05);
        int rectnum231 = rectnum230 + 1;
        this.mBaseImages[num29].mFindRect[rectnum230] = new FindRect(540, 330, 100, 100, R.drawable.a0065_06);
        int rectnum232 = rectnum231 + 1;
        this.mBaseImages[num29].mFindRect[rectnum231] = new FindRect(451, 62, Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, Defines.DIALOG_STATE.DLG_AUTO_PURCHASE, R.drawable.a0065_07);
        this.mBaseImages[num29].mFindRect[rectnum232] = new FindRect(392, 394, 80, 80, R.drawable.a0065_08);
        this.mBaseImages[num29].mFindRectTotalnum = rectnum232 + 1;
        this.mBaseImagesTotalnum = num29 + 1;
    }

    public boolean createFindImages(Context context, DBAdapter dbhelper, boolean run) {
        LOG.verboseFromObjectsClass(">> createFindImages()");
        this.mImages = new FindImage[FINDIMAGE_TOTALNUM];
        Cursor c = dbhelper.fetchImages();
        if (c != null) {
            if (c.getCount() > 0) {
                try {
                    File file = context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
                    while (run) {
                        int index = this.mImagesTotalnum;
                        this.mImagesTotalnum = index + 1;
                        this.mImages[index] = new FindImage();
                        String datas = c.getString(c.getColumnIndexOrThrow(DBAdapter.FIELD_IMAGES_DATAS));
                        JSONObject jsonobject = new JSONObject(datas);
                        this.mImages[index].mImgNum = jsonobject.getLong(GameActivity.JSON_NAME_IMAGES_IMGID);
                        this.mImages[index].mType = jsonobject.getString(GameActivity.JSON_NAME_IMAGES_TYPE).equals("NM_IMG") ? 0 : 1;
                        this.mImages[index].mWidth = jsonobject.getInt(GameActivity.JSON_NAME_IMAGES_WIDTH);
                        this.mImages[index].mHeight = jsonobject.getInt(GameActivity.JSON_NAME_IMAGES_HEIGHT);
                        this.mImages[index].mImgId = -1;
                        this.mImages[index].mSoundId = -1;
                        this.mImages[index].mSoundEventId = -1;
                        this.mImages[index].mFindRectTotalnum = 0;
                        this.mImages[index].mImgPath = jsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMG).replace(Property.SERVER_DOMAIN, String.valueOf(file.getPath()) + Animation.DEVIDER_DATA);
                        this.mImages[index].mSoundPath = null;
                        this.mImages[index].mSoundEventPath = null;
                        try {
                            JSONObject adjsonobject = jsonobject.getJSONObject(GameActivity.JSON_NAME_IMAGES_ADIMAGE);
                            if (adjsonobject != null) {
                                this.mImages[index].mAdNum = adjsonobject.getLong(GameActivity.JSON_NAME_IMAGES_ADID);
                                this.mImages[index].mAdCount = adjsonobject.getLong(GameActivity.JSON_NAME_IMAGES_VIEWCOUNT);
                                this.mImages[index].mAdView = adjsonobject.getLong(GameActivity.JSON_NAME_IMAGES_VIEW);
                                this.mImages[index].mAdText = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_ADNAME);
                                this.mImages[index].mAdImgId = -1;
                                this.mImages[index].mAdImgPath = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMG);
                                this.mImages[index].mRegDate = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_REGDATE);
                                this.mImages[index].mExpireDate = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_EXPIREDATE);
                                this.mImages[index].mDownloadUrl = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_URLDOWNLOAD);
                                this.mImages[index].mVideoUrl = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_URLVIDEO);
                                this.mImages[index].mDetailUrl = adjsonobject.getString(GameActivity.JSON_NAME_IMAGES_URLDETAIL);
                            }
                        } catch (JSONException e) {
                        }
                        JSONArray jsonarray = jsonobject.getJSONArray(GameActivity.JSON_NAME_IMAGES_IMGCUT);
                        int length = jsonarray.length();
                        for (int i = 0; i < length; i++) {
                            this.mImages[index].mFindRectTotalnum++;
                            this.mImages[index].mFindRect[i] = new FindRect();
                            JSONObject subjsonobject = jsonarray.getJSONObject(i);
                            this.mImages[index].mFindRect[i].mX = subjsonobject.getInt(GameActivity.JSON_NAME_IMAGES_X);
                            this.mImages[index].mFindRect[i].mY = subjsonobject.getInt(GameActivity.JSON_NAME_IMAGES_Y);
                            this.mImages[index].mFindRect[i].mWidth = subjsonobject.getInt(GameActivity.JSON_NAME_IMAGES_WIDTH);
                            this.mImages[index].mFindRect[i].mHeight = subjsonobject.getInt(GameActivity.JSON_NAME_IMAGES_HEIGHT);
                            this.mImages[index].mFindRect[i].mImgPath = subjsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMG).replace(Property.SERVER_DOMAIN, String.valueOf(file.getPath()) + Animation.DEVIDER_DATA);
                        }
                        if (!c.moveToNext()) {
                            break;
                        }
                    }
                } catch (JSONException e2) {
                    return false;
                }
            }
            c.close();
        }
        LOG.error("download mImagesTotalnum: " + this.mImagesTotalnum);
        return true;
    }

    public Boolean checkFindImages(String data, Boolean run) {
        LOG.verboseFromObjectsClass(">> checkFindImages()");
        try {
            JSONArray jsonarray = new JSONArray(data);
            int length = jsonarray.length();
            for (int i = 0; i < length && run.booleanValue(); i++) {
                JSONObject subjsonobject = jsonarray.getJSONObject(i);
                String jsontext = subjsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMGID);
                if (jsontext != null && jsontext.length() > 0 && !jsontext.equals(GameActivity.JSON_VALUE_IMAGES_NULL) && this.mImgNumMap.get(jsontext) == null) {
                    return true;
                }
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }

    public FindImage getFindImageForAdNum(long adnum, boolean base) {
        FindImage[] findimage;
        int totalnum;
        LOG.verboseFromObjectsClass(">> getFindImageForAdNum()");
        if (base) {
            findimage = this.mBaseImages;
            totalnum = this.mBaseImagesTotalnum;
        } else {
            findimage = this.mImages;
            totalnum = this.mImagesTotalnum;
        }
        for (int i = 0; i < totalnum; i++) {
            if (findimage[i].mAdNum == adnum) {
                return findimage[i];
            }
        }
        return null;
    }

    class FindImage {
        public static final int TOUCHRECT_FINDED = -2;
        public static final int TOUCHRECT_NOT = -1;
        public static final int TYPE_AD = 1;
        public static final int TYPE_NORMAR = 0;
        public long mAdCount;
        public int mAdImgId;
        public String mAdImgPath;
        public long mAdNum;
        public String mAdText;
        public long mAdView;
        public String mDetailUrl;
        public String mDownloadUrl;
        public String mExpireDate;
        public FindRect[] mFindRect;
        public int mFindRectTotalnum;
        public int mHeight;
        public int mImgId;
        public long mImgNum;
        public String mImgPath;
        public String mRegDate;
        public int mSoundEventId;
        public String mSoundEventPath;
        public int mSoundId;
        public String mSoundPath;
        public int mType;
        public String mVideoUrl;
        public int mWidth;

        public FindImage(int width, int height, int imgid) {
            LOG.verboseFromObjectsClass(">> FindImage()");
            this.mImgNum = 0L;
            this.mAdCount = 0L;
            this.mAdView = 1L;
            this.mWidth = width;
            this.mHeight = height;
            this.mImgId = imgid;
            this.mImgPath = null;
            this.mFindRect = new FindRect[10];
            this.mFindRectTotalnum = 0;
            initiateVaule();
        }

        public FindImage(int width, int height, String imgpath) {
            LOG.verboseFromObjectsClass(">> FindImage()");
            this.mImgNum = 0L;
            this.mAdCount = 0L;
            this.mAdView = 1L;
            this.mWidth = width;
            this.mHeight = height;
            this.mImgId = 0;
            this.mImgPath = imgpath;
            this.mFindRect = new FindRect[10];
            this.mFindRectTotalnum = 0;
            initiateVaule();
        }

        public FindImage() {
            LOG.verboseFromObjectsClass(">> FindImage()");
            this.mImgId = 0;
            this.mAdCount = 0L;
            this.mAdView = 1L;
            this.mSoundEventId = 0;
            this.mImgPath = null;
            this.mSoundPath = null;
            this.mSoundEventPath = null;
            this.mFindRect = new FindRect[10];
            this.mFindRectTotalnum = 0;
            initiateVaule();
        }

        public void initiateVaule() {
            LOG.verboseFromObjectsClass(">> initiateVaule()");
            this.mAdNum = -1L;
            this.mAdCount = 0L;
            this.mAdView = 1L;
            this.mType = 0;
            this.mAdText = GameView.CHARACTER_AI;
            this.mAdImgId = -1;
            this.mAdImgPath = null;
            this.mRegDate = null;
            this.mExpireDate = null;
            this.mDownloadUrl = null;
            this.mVideoUrl = null;
            this.mDetailUrl = null;
        }

        public void initiateRect() {
            LOG.verboseFromObjectsClass(">> initiateRect()");
            for (int i = 0; i < this.mFindRectTotalnum; i++) {
                this.mFindRect[i].mShow = false;
                this.mFindRect[i].mFinded = false;
                this.mFindRect[i].mTime = 0;
                this.mFindRect[i].mTimeCount = 0;
            }
        }

        public void setRect(int index, int srcwidth, int srcheight) {
            LOG.verboseFromObjectsClass(">> setRect()");
            FindRect findrect = this.mFindRect[index];
            if (findrect.mRateX < 0) {
                this.mFindRect[index].mRateX = (int) (srcwidth / (this.mWidth / findrect.mX));
            }
            if (findrect.mRateY < 0) {
                this.mFindRect[index].mRateY = (int) (srcheight / (this.mHeight / findrect.mY));
            }
            if (findrect.mRateWidth < 0) {
                this.mFindRect[index].mRateWidth = (int) (srcwidth / (this.mWidth / findrect.mWidth));
            }
            if (findrect.mRateHeight < 0) {
                this.mFindRect[index].mRateHeight = (int) (srcheight / (this.mHeight / findrect.mHeight));
            }
            this.mFindRect[index].mShow = true;
        }

        public int touchRect(int tx, int ty, int space, int rightx) {
            LOG.verboseFromObjectsClass(">> touchRect()");
            int lefttx = tx - space;
            int righttx = lefttx - rightx;
            int ty2 = ty - space;
            for (int i = 0; i < this.mFindRectTotalnum; i++) {
                FindRect findrect = this.mFindRect[i];
                if (findrect.mShow) {
                    if (findrect.mRateX < lefttx && findrect.mRateX + findrect.mRateWidth > lefttx && findrect.mRateY < ty2 && findrect.mRateY + findrect.mRateHeight > ty2) {
                        if (findrect.mFinded) {
                            return -2;
                        }
                        this.mFindRect[i].mFinded = true;
                        return i;
                    }
                    if (findrect.mRateX < righttx && findrect.mRateX + findrect.mRateWidth > righttx && findrect.mRateY < ty2 && findrect.mRateY + findrect.mRateHeight > ty2) {
                        if (findrect.mFinded) {
                            return -2;
                        }
                        this.mFindRect[i].mFinded = true;
                        return i;
                    }
                }
            }
            return -1;
        }

        public boolean animation(float speedrate, int space, int rightx) {
            LOG.verboseFromObjectsClass(">> animation()");
            boolean anim = false;
            for (int i = 0; i < this.mFindRectTotalnum; i++) {
                FindRect findrect = this.mFindRect[i];
                if (findrect.mShow && findrect.mFinded) {
                    findrect.animation(speedrate, space, rightx);
                    if (findrect.mTime < 4) {
                        anim = true;
                    }
                }
            }
            return anim;
        }

        public void moveRect(int leftspeed, int rightspeed) {
            LOG.verboseFromObjectsClass(">> moveRect()");
            for (int i = 0; i < this.mFindRectTotalnum; i++) {
                FindRect findrect = this.mFindRect[i];
                if (findrect.mShow && findrect.mFinded) {
                    findrect.mOutputRect[0].left += leftspeed;
                    findrect.mOutputRect[0].right += leftspeed;
                    findrect.mOutputRect[1].left += rightspeed;
                    findrect.mOutputRect[1].right += rightspeed;
                }
            }
        }

        public void doDraw(Canvas canvas, int space, int rightx) {
            LOG.verboseFromObjectsClass(">> doDraw()");
            for (int i = 0; i < this.mFindRectTotalnum; i++) {
                FindRect findrect = this.mFindRect[i];
                if (findrect.mShow && findrect.mFinded && findrect.mTime > 0) {
                    Objects.this.mImgPng[0].setBounds(findrect.mOutputRect[0]);
                    Objects.this.mImgPng[0].setAlpha(findrect.mAlpha);
                    Objects.this.mImgPng[0].draw(canvas);
                    Objects.this.mImgPng[0].setBounds(findrect.mOutputRect[1]);
                    Objects.this.mImgPng[0].setAlpha(findrect.mAlpha);
                    Objects.this.mImgPng[0].draw(canvas);
                }
            }
        }
    }

    class FindRect {
        private static final int ALPHA = 230;
        public static final int LEFT = 0;
        public static final int RIGHT = 1;
        private static final int TIME_REPEAT = 4;
        public int mAlpha;
        public boolean mFinded;
        public int mHeight;
        public int mImgId;
        public String mImgPath;
        public Rect[] mOutputRect;
        public int mRateHeight;
        public int mRateWidth;
        public int mRateX;
        public int mRateY;
        public boolean mShow;
        public int mTime;
        public int mTimeCount;
        public int mWidth;
        public int mX;
        public int mY;

        public FindRect() {
            LOG.verboseFromObjectsClass(">> FindRect()");
            this.mImgId = 0;
            this.mImgPath = null;
            this.mOutputRect = new Rect[2];
            this.mOutputRect[0] = new Rect();
            this.mOutputRect[1] = new Rect();
            this.mRateX = -1;
            this.mRateY = -1;
            this.mRateWidth = -1;
            this.mRateHeight = -1;
        }

        public FindRect(int x, int y, int width, int height, int imgid) {
            LOG.verboseFromObjectsClass(">> FindRect()");
            this.mX = x;
            this.mY = y;
            this.mWidth = width;
            this.mHeight = height;
            this.mImgId = imgid;
            this.mImgPath = null;
            this.mOutputRect = new Rect[2];
            this.mOutputRect[0] = new Rect();
            this.mOutputRect[1] = new Rect();
            this.mRateX = -1;
            this.mRateY = -1;
            this.mRateWidth = -1;
            this.mRateHeight = -1;
        }

        public FindRect(int x, int y, int width, int height, String imgpath) {
            LOG.verboseFromObjectsClass(">> FindRect()");
            this.mX = x;
            this.mY = y;
            this.mWidth = width;
            this.mHeight = height;
            this.mImgId = 0;
            this.mImgPath = imgpath;
            this.mOutputRect = new Rect[2];
            this.mOutputRect[0] = new Rect();
            this.mOutputRect[1] = new Rect();
            this.mRateX = -1;
            this.mRateY = -1;
            this.mRateWidth = -1;
            this.mRateHeight = -1;
        }

        public void animation(float speedrate, int space, int rightx) {
            LOG.verboseFromObjectsClass(">> animation()");
            switch (this.mTime) {
                case 0:
                    int circlespace = Objects.this.mCircleSpace * 2;
                    int centerx = this.mRateX + (this.mRateWidth / 2) + space;
                    int centery = this.mRateY + (this.mRateHeight / 2) + space;
                    this.mOutputRect[0].set(centerx - circlespace, centery - circlespace, centerx + circlespace, centery + circlespace);
                    int centerx2 = centerx + rightx;
                    this.mOutputRect[1].set(centerx2 - circlespace, centery - circlespace, centerx2 + circlespace, centery + circlespace);
                    this.mAlpha = 0;
                    this.mTimeCount = 0;
                    this.mTime++;
                    break;
                case 1:
                    int speed = (int) (3.0f * Objects.this.mDrawrate * speedrate);
                    this.mOutputRect[0].left += speed;
                    this.mOutputRect[0].top += speed;
                    this.mOutputRect[0].right -= speed;
                    this.mOutputRect[0].bottom -= speed;
                    this.mOutputRect[1].left += speed;
                    this.mOutputRect[1].top += speed;
                    this.mOutputRect[1].right -= speed;
                    this.mOutputRect[1].bottom -= speed;
                    this.mAlpha += (int) (30.0f * speedrate);
                    if (this.mAlpha > ALPHA) {
                        this.mAlpha = ALPHA;
                    }
                    if (this.mOutputRect[0].width() < this.mRateWidth) {
                        int circlespace2 = Objects.this.mCircleSpace;
                        int centerx3 = this.mRateX + (this.mRateWidth / 2) + space;
                        int centery2 = this.mRateY + (this.mRateHeight / 2) + space;
                        this.mOutputRect[0].set(centerx3 - circlespace2, centery2 - circlespace2, centerx3 + circlespace2, centery2 + circlespace2);
                        int centerx4 = centerx3 + rightx;
                        this.mOutputRect[1].set(centerx4 - circlespace2, centery2 - circlespace2, centerx4 + circlespace2, centery2 + circlespace2);
                        this.mAlpha = ALPHA;
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 2:
                    int speed2 = (int) (Objects.this.mDrawrate * speedrate);
                    this.mOutputRect[0].left -= speed2;
                    this.mOutputRect[0].top -= speed2;
                    this.mOutputRect[0].right += speed2;
                    this.mOutputRect[0].bottom += speed2;
                    this.mOutputRect[1].left -= speed2;
                    this.mOutputRect[1].top -= speed2;
                    this.mOutputRect[1].right += speed2;
                    this.mOutputRect[1].bottom += speed2;
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i > 3) {
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
                case 3:
                    int speed3 = (int) (Objects.this.mDrawrate * speedrate);
                    this.mOutputRect[0].left += speed3;
                    this.mOutputRect[0].top += speed3;
                    this.mOutputRect[0].right -= speed3;
                    this.mOutputRect[0].bottom -= speed3;
                    this.mOutputRect[1].left += speed3;
                    this.mOutputRect[1].top += speed3;
                    this.mOutputRect[1].right -= speed3;
                    this.mOutputRect[1].bottom -= speed3;
                    int i2 = this.mTimeCount;
                    this.mTimeCount = i2 + 1;
                    if (i2 > 3) {
                        int circlespace3 = Objects.this.mCircleSpace;
                        int centerx5 = this.mRateX + (this.mRateWidth / 2) + space;
                        int centery3 = this.mRateY + (this.mRateHeight / 2) + space;
                        this.mOutputRect[0].set(centerx5 - circlespace3, centery3 - circlespace3, centerx5 + circlespace3, centery3 + circlespace3);
                        int centerx6 = centerx5 + rightx;
                        this.mOutputRect[1].set(centerx6 - circlespace3, centery3 - circlespace3, centerx6 + circlespace3, centery3 + circlespace3);
                        this.mTimeCount = 0;
                        this.mTime++;
                    }
                    break;
            }
        }
    }

    public class Skills {
        public static final int ANIM_END = -1;
        public static final int ANIM_START_ATTACK = 0;
        public static final int ANIM_START_LEFT = 5;
        public static final int ANIM_START_RIGHT = 7;
        public static final int ANIM_START_UPDOWN = 0;
        public static final int BERRYSKILL_INDEX = 10000;
        public static final int IMAGETOTALNUM = 10;
        public static final int SETSKILL_NULL = -2;
        public static final int SETSKILL_TOTALNUM = 4;
        public Skill mBerrySkill;
        public int mIconSize;
        public int mIconSpace;
        public int[] mImgBmpId;
        public String[] mImgBmpPath;
        public int mImgBmpTotalnum;
        public int[] mImgPngId;
        public String[] mImgPngPath;
        public int mImgPngTotalnum;
        public boolean[] mSetSkillActiveIndexTable;
        private int[] mSetSkillIndexTable;
        public Skill[] mSkill;
        public int mSkillTotalnum;
        public Bitmap[] mSrcImgBmp;
        public Drawable[] mSrcImgPng;

        public Skills(Context context, int displaywidth, int displayheight, int size, int space) {
            LOG.verboseFromObjectsClass(">> Skills()");
            this.mIconSize = size;
            this.mIconSpace = space;
            this.mSkill = new Skill[50];
            this.mSetSkillIndexTable = new int[4];
            this.mBerrySkill = new Skill(0, 0, null);
            boolean[] setskillactiveindextable = {false, false, false, true, true};
            this.mSetSkillActiveIndexTable = setskillactiveindextable;
            this.mSrcImgBmp = new Bitmap[10];
            this.mSrcImgPng = new Drawable[10];
            this.mImgBmpPath = new String[10];
            this.mImgPngPath = new String[10];
            this.mImgBmpId = new int[10];
            this.mImgPngId = new int[10];
            Arrays.fill(this.mImgBmpPath, (Object) null);
            Arrays.fill(this.mImgPngPath, (Object) null);
            Arrays.fill(this.mImgBmpId, -1);
            Arrays.fill(this.mImgPngId, -1);
            int num = 0 + 1;
            this.mImgBmpId[0] = R.drawable.efct_skill_01;
            int num2 = num + 1;
            this.mImgBmpId[num] = R.drawable.efct_skill_02;
            int num3 = num2 + 1;
            this.mImgBmpId[num2] = R.drawable.efct_skill_101;
            int num4 = num3 + 1;
            this.mImgBmpId[num3] = R.drawable.efct_skill_102;
            int num5 = num4 + 1;
            this.mImgBmpId[num4] = R.drawable.efct_skill_103;
            int num6 = num5 + 1;
            this.mImgBmpId[num5] = R.drawable.efct_skill_121;
            int num7 = num6 + 1;
            this.mImgBmpId[num6] = R.drawable.efct_skill_122;
            this.mImgBmpId[num7] = R.drawable.efct_skill_123;
            this.mImgBmpTotalnum = num7 + 1;
            this.mImgPngTotalnum = 0;
            int aisize = (displayheight / 10) - (space * 2);
            int airight = displaywidth - space;
            int aileft = airight - aisize;
            int aibottom = displayheight - space;
            int aitop = aibottom - aisize;
            Skill skill = new Skill(0, R.drawable.slot_skill_01, null);
            skill.mId = 13;
            int index = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index + 1;
            int subnum = 0 + 1;
            skill.mActionObjects[index].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index].mImgBmpTotalnum = subnum;
            skill.mActionObjects[index].mAnim.set("N/0/13,68/50,50/0/60|S/50,50/20,20/0.2&A/0,235/0.2");
            int index2 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index2 + 1;
            int subnum2 = 0 + 1;
            skill.mActionObjects[index2].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index2].mImgBmpTotalnum = subnum2;
            skill.mActionObjects[index2].mAnim.set("N/0/28,78/50,50/0/60|D/0.2|S/50,50/20,20/0.2&A/0,235/0.2");
            int index3 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index3 + 1;
            int subnum3 = 0 + 1;
            skill.mActionObjects[index3].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index3].mImgBmpTotalnum = subnum3;
            skill.mActionObjects[index3].mAnim.set("N/0/33,47/50,50/0/60|D/0.4|S/50,50/20,20/0.2&A/0,235/0.2");
            int index4 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index4 + 1;
            int subnum4 = 0 + 1;
            skill.mActionObjects[index4].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index4].mImgBmpTotalnum = subnum4;
            skill.mActionObjects[index4].mAnim.set("N/0/54,54/50,50/0/60|D/0.6|S/50,50/20,20/0.2&A/0,235/0.2");
            int index5 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index5 + 1;
            int subnum5 = 0 + 1;
            skill.mActionObjects[index5].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index5].mImgBmpTotalnum = subnum5;
            skill.mActionObjects[index5].mAnim.set("N/0/60,20/50,50/0/60|D/0.8|S/50,50/20,20/0.2&A/0,235/0.2");
            int index6 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index6 + 1;
            int subnum6 = 0 + 1;
            skill.mActionObjects[index6].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index6].mImgBmpTotalnum = subnum6;
            skill.mActionObjects[index6].mAnim.set("N/0/81,30/50,50/0/60|D/1.0|S/50,50/20,20/0.2&A/0,235/0.2");
            int index7 = skill.mActionObjectsTotalnum;
            skill.mActionObjectsTotalnum = index7 + 1;
            int subnum7 = 0 + 1;
            skill.mActionObjects[index7].mSrcImgBmpnum[0] = 0;
            skill.mActionObjects[index7].mImgBmpTotalnum = subnum7;
            skill.mActionObjects[index7].mAnim.set("N/0/86,-4/50,50/0/60|D/1.2|S/50,50/20,20/0.2&A/0,235/0.2");
            int index8 = skill.mActionIconObjectsTotalnum;
            skill.mActionIconObjectsTotalnum = index8 + 1;
            int subnum8 = 0 + 1;
            skill.mActionIconObjects[index8].mImgPngId[0] = R.drawable.game_skill_01;
            skill.mActionIconObjects[index8].mImgPngTotalnum = subnum8;
            skill.mActionIconObjects[index8].mRect.set(aileft, aitop, airight, aibottom);
            skill.setContent(context, 1, 1, 100, -1, true, R.string.skill_name_0, R.string.skill_text_0);
            int num8 = 0 + 1;
            this.mSkill[0] = skill;
            Skill skill2 = new Skill(num8, R.drawable.slot_skill_02, null);
            skill2.mId = 14;
            int index9 = skill2.mActionObjectsTotalnum;
            skill2.mActionObjectsTotalnum = index9 + 1;
            int subnum9 = 0 + 1;
            skill2.mActionObjects[index9].mSrcImgBmpnum[0] = 1;
            skill2.mActionObjects[index9].mImgBmpTotalnum = subnum9;
            skill2.mActionObjects[index9].mAnim.set("N/0/30,33/7,52/0/60|A/0,255/0.3|A/255,235/0.1");
            int index10 = skill2.mActionObjectsTotalnum;
            skill2.mActionObjectsTotalnum = index10 + 1;
            int subnum10 = 0 + 1;
            skill2.mActionObjects[index10].mSrcImgBmpnum[0] = 1;
            skill2.mActionObjects[index10].mImgBmpTotalnum = subnum10;
            skill2.mActionObjects[index10].mAnim.set("N/0/53,56/6,41/0/120|D/0.4|A/0,255/0.3|A/255,235/0.1");
            int index11 = skill2.mActionIconObjectsTotalnum;
            skill2.mActionIconObjectsTotalnum = index11 + 1;
            int subnum11 = 0 + 1;
            skill2.mActionIconObjects[index11].mImgPngId[0] = R.drawable.game_skill_02;
            skill2.mActionIconObjects[index11].mImgPngTotalnum = subnum11;
            skill2.mActionIconObjects[index11].mRect.set(aileft, aitop, airight, aibottom);
            skill2.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_1, R.string.skill_text_1);
            int num9 = num8 + 1;
            this.mSkill[num8] = skill2;
            Skill skill3 = new Skill(num9, R.drawable.slot_item_berry_01, null);
            skill3.mId = 15;
            int index12 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index12 + 1;
            int subnum12 = 0 + 1;
            skill3.mActionObjects[index12].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index12].mImgBmpTotalnum = subnum12;
            skill3.mActionObjects[index12].mAnim.set("N/0/10,10/0,0/0/0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/2.8|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/5.6|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4");
            int index13 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index13 + 1;
            int subnum13 = 0 + 1;
            skill3.mActionObjects[index13].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index13].mImgBmpTotalnum = subnum13;
            skill3.mActionObjects[index13].mAnim.set("N/0/40,40/0,0/0/0|D/0.4|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/3.2|T/70,70/70,70/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.0|T/15,45/15,45/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4");
            int index14 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index14 + 1;
            int subnum14 = 0 + 1;
            skill3.mActionObjects[index14].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index14].mImgBmpTotalnum = subnum14;
            skill3.mActionObjects[index14].mAnim.set("N/0/80,80/0,0/0/0|D/0.8|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/3.6|T/55,70/55,70/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/65,35/65,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4");
            int index15 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index15 + 1;
            int subnum15 = 0 + 1;
            skill3.mActionObjects[index15].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index15].mImgBmpTotalnum = subnum15;
            skill3.mActionObjects[index15].mAnim.set("N/0/50,20/0,0/0/0|D/1.2|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/4.0|T/15,20/15,20/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.8|T/75,35/75,35/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4");
            int index16 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index16 + 1;
            int subnum16 = 0 + 1;
            skill3.mActionObjects[index16].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index16].mImgBmpTotalnum = subnum16;
            skill3.mActionObjects[index16].mAnim.set("N/0/20,70/0,0/0/0|D/1.6|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/4.4|T/90,25/90,25/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/7.2|T/95,85/95,85/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4");
            int index17 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index17 + 1;
            int subnum17 = 0 + 1;
            skill3.mActionObjects[index17].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index17].mImgBmpTotalnum = subnum17;
            skill3.mActionObjects[index17].mAnim.set("N/0/90,10/0,0/0/0|D/2.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/4.8|T/50,30/50,30/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/7.6|T/65,25/65,25/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4");
            int index18 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index18 + 1;
            int subnum18 = 0 + 1;
            skill3.mActionObjects[index18].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index18].mImgBmpTotalnum = subnum18;
            skill3.mActionObjects[index18].mAnim.set("N/0/40,30/0,0/0/0|D/2.4|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/5.2|T/60,80/60,80/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/8.0|T/5,50/5,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4");
            int index19 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index19 + 1;
            int subnum19 = 0 + 1;
            skill3.mActionObjects[index19].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index19].mImgBmpTotalnum = subnum19;
            skill3.mActionObjects[index19].mAnim.set("N/0/20,60/0,0/0/0|D/2.8|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/5.6|T/80,60/80,60/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/8.4|T/55,85/55,85/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4");
            int index20 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index20 + 1;
            int subnum20 = 0 + 1;
            skill3.mActionObjects[index20].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index20].mImgBmpTotalnum = subnum20;
            skill3.mActionObjects[index20].mAnim.set("N/0/60,20/0,0/0/0|D/3.2|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.0|T/30,70/30,70/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/8.8|T/75,60/75,60/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4");
            int index21 = skill3.mActionObjectsTotalnum;
            skill3.mActionObjectsTotalnum = index21 + 1;
            int subnum21 = 0 + 1;
            skill3.mActionObjects[index21].mSrcImgBmpnum[0] = 2;
            skill3.mActionObjects[index21].mImgBmpTotalnum = subnum21;
            skill3.mActionObjects[index21].mAnim.set("N/0/45,60/0,0/0/0|D/3.6|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/70,35/70,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/9.2|T/30,35/30,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4");
            int index22 = skill3.mActionIconObjectsTotalnum;
            skill3.mActionIconObjectsTotalnum = index22 + 1;
            int subnum22 = 0 + 1;
            skill3.mActionIconObjects[index22].mImgPngId[0] = R.drawable.game_skill_101;
            skill3.mActionIconObjects[index22].mImgPngTotalnum = subnum22;
            skill3.mActionIconObjects[index22].mRect.set(aileft, aitop, airight, aibottom);
            skill3.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_2, R.string.skill_text_2);
            int num10 = num9 + 1;
            this.mSkill[num9] = skill3;
            Skill skill4 = new Skill(num10, R.drawable.slot_item_berry_02, null);
            skill4.mId = 16;
            int index23 = skill4.mActionObjectsTotalnum;
            skill4.mActionObjectsTotalnum = index23 + 1;
            int subnum23 = 0 + 1;
            skill4.mActionObjects[index23].mSrcImgBmpnum[0] = 3;
            skill4.mActionObjects[index23].mImgBmpTotalnum = subnum23;
            skill4.mActionObjects[index23].mAnim.set("N/0/70,50/4,5/0/0|S/4,5/12,14/0.5&A/0,220/0.5|S/12,14/10,12/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5");
            int index24 = skill4.mActionObjectsTotalnum;
            skill4.mActionObjectsTotalnum = index24 + 1;
            int subnum24 = 0 + 1;
            skill4.mActionObjects[index24].mSrcImgBmpnum[0] = 3;
            skill4.mActionObjects[index24].mImgBmpTotalnum = subnum24;
            skill4.mActionObjects[index24].mAnim.set("N/0/30,50/4,5/0/0|S/4,5/12,14/0.5&A/0,220/0.5|S/12,14/10,12/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5");
            int index25 = skill4.mActionIconObjectsTotalnum;
            skill4.mActionIconObjectsTotalnum = index25 + 1;
            int subnum25 = 0 + 1;
            skill4.mActionIconObjects[index25].mImgPngId[0] = R.drawable.game_skill_102;
            skill4.mActionIconObjects[index25].mImgPngTotalnum = subnum25;
            skill4.mActionIconObjects[index25].mRect.set(aileft, aitop, airight, aibottom);
            skill4.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_3, R.string.skill_text_3);
            int num11 = num10 + 1;
            this.mSkill[num10] = skill4;
            Skill skill5 = new Skill(num11, R.drawable.slot_item_berry_03, null);
            skill5.mId = 19;
            int index26 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index26 + 1;
            int subnum26 = 0 + 1;
            skill5.mActionObjects[index26].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index26].mImgBmpTotalnum = subnum26;
            skill5.mActionObjects[index26].mAnim.set("N/0/-5,-5/5,5/220/0|T/-5,-5/50,105/3.0|D/0.1|T/0,-5/55,105/3.0|D/0.1|T/5,-5/60,105/3.0");
            int index27 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index27 + 1;
            int subnum27 = 0 + 1;
            skill5.mActionObjects[index27].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index27].mImgBmpTotalnum = subnum27;
            skill5.mActionObjects[index27].mAnim.set("N/0/50,-5/5,5/220/0|D/0.3|T/50,-5/90,105/3.0|D/0.1|T/45,-5/85,105/3.0|D/0.1|T/25,-5/65,105/3.0");
            int index28 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index28 + 1;
            int subnum28 = 0 + 1;
            skill5.mActionObjects[index28].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index28].mImgBmpTotalnum = subnum28;
            skill5.mActionObjects[index28].mAnim.set("N/0/5,-5/5,5/220/0|D/0.8|T/5,-5/60,105/3.0|D/0.1|T/10,-5/65,105/3.0|D/0.1|T/50,-5/90,105/3.0");
            int index29 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index29 + 1;
            int subnum29 = 0 + 1;
            skill5.mActionObjects[index29].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index29].mImgBmpTotalnum = subnum29;
            skill5.mActionObjects[index29].mAnim.set("N/0/-5,15/5,5/220/0|D/2.1|T/-5,15/40,105/3.0|D/0.1|T/-5,20/35,105/3.0|D/0.1|T/40,-5/80,105/3.0");
            int index30 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index30 + 1;
            int subnum30 = 0 + 1;
            skill5.mActionObjects[index30].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index30].mImgBmpTotalnum = subnum30;
            skill5.mActionObjects[index30].mAnim.set("N/0/30,-5/5,5/220/0|D/2.6|T/30,-5/70,105/3.0|D/0.1|T/80,-5/105,50/3.0|D/0.1|T/20,-5/60,105/3.0");
            int index31 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index31 + 1;
            int subnum31 = 0 + 1;
            skill5.mActionObjects[index31].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index31].mImgBmpTotalnum = subnum31;
            skill5.mActionObjects[index31].mAnim.set("N/0/60,-5/5,5/220/0|D/2.9|T/60,-5/100,105/3.0|D/0.1|T/50,-5/95,105/3.0|D/0.1|T/-5,20/35,105/3.0");
            int index32 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index32 + 1;
            int subnum32 = 0 + 1;
            skill5.mActionObjects[index32].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index32].mImgBmpTotalnum = subnum32;
            skill5.mActionObjects[index32].mAnim.set("N/0/-5,30/5,5/220/0|D/3.4|T/-5,30/20,105/3.0|D/0.1|T/-5,50/15,105/3.0|D/0.1|T/75,-5/100,105/3.0");
            int index33 = skill5.mActionObjectsTotalnum;
            skill5.mActionObjectsTotalnum = index33 + 1;
            int subnum33 = 0 + 1;
            skill5.mActionObjects[index33].mSrcImgBmpnum[0] = 4;
            skill5.mActionObjects[index33].mImgBmpTotalnum = subnum33;
            skill5.mActionObjects[index33].mAnim.set("N/0/40,-5/5,5/220/0|D/3.7|T/40,-5/80,105/3.0|D/0.1|T/10,-5/40,105/3.0|D/0.1|T/-5,0/45,105/3.0");
            int index34 = skill5.mActionIconObjectsTotalnum;
            skill5.mActionIconObjectsTotalnum = index34 + 1;
            int subnum34 = 0 + 1;
            skill5.mActionIconObjects[index34].mImgPngId[0] = R.drawable.game_skill_103;
            skill5.mActionIconObjects[index34].mImgPngTotalnum = subnum34;
            skill5.mActionIconObjects[index34].mRect.set(aileft, aitop, airight, aibottom);
            skill5.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_4, R.string.skill_text_4);
            int num12 = num11 + 1;
            this.mSkill[num11] = skill5;
            Skill skill6 = new Skill(num12, R.drawable.slot_item_berry_21, null);
            skill6.mId = 20;
            int index35 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index35 + 1;
            int subnum35 = 0 + 1;
            skill6.mActionObjects[index35].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index35].mImgBmpTotalnum = subnum35;
            skill6.mActionObjects[index35].mAnim.set("N/0/10,10/0,0/0/0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/2.8|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/5.6|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4");
            int index36 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index36 + 1;
            int subnum36 = 0 + 1;
            skill6.mActionObjects[index36].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index36].mImgBmpTotalnum = subnum36;
            skill6.mActionObjects[index36].mAnim.set("N/0/40,40/0,0/0/0|D/0.4|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/3.2|T/70,70/70,70/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.0|T/15,45/15,45/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4");
            int index37 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index37 + 1;
            int subnum37 = 0 + 1;
            skill6.mActionObjects[index37].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index37].mImgBmpTotalnum = subnum37;
            skill6.mActionObjects[index37].mAnim.set("N/0/80,80/0,0/0/0|D/0.8|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/3.6|T/55,70/55,70/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/6.4|T/65,35/65,35/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4");
            int index38 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index38 + 1;
            int subnum38 = 0 + 1;
            skill6.mActionObjects[index38].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index38].mImgBmpTotalnum = subnum38;
            skill6.mActionObjects[index38].mAnim.set("N/0/50,20/0,0/0/0|D/1.2|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/4.0|T/15,20/15,20/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.8|T/75,35/75,35/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4");
            int index39 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index39 + 1;
            int subnum39 = 0 + 1;
            skill6.mActionObjects[index39].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index39].mImgBmpTotalnum = subnum39;
            skill6.mActionObjects[index39].mAnim.set("N/0/20,70/0,0/0/0|D/1.6|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/4.4|T/90,25/90,25/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/7.2|T/95,85/95,85/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4");
            int index40 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index40 + 1;
            int subnum40 = 0 + 1;
            skill6.mActionObjects[index40].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index40].mImgBmpTotalnum = subnum40;
            skill6.mActionObjects[index40].mAnim.set("N/0/90,10/0,0/0/0|D/2.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/4.8|T/50,30/50,30/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/7.6|T/65,25/65,25/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4");
            int index41 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index41 + 1;
            int subnum41 = 0 + 1;
            skill6.mActionObjects[index41].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index41].mImgBmpTotalnum = subnum41;
            skill6.mActionObjects[index41].mAnim.set("N/0/40,30/0,0/0/0|D/2.4|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/5.2|T/60,80/60,80/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/8.0|T/5,50/5,50/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4");
            int index42 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index42 + 1;
            int subnum42 = 0 + 1;
            skill6.mActionObjects[index42].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index42].mImgBmpTotalnum = subnum42;
            skill6.mActionObjects[index42].mAnim.set("N/0/20,60/0,0/0/0|D/2.8|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/5.6|T/80,60/80,60/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/8.4|T/55,85/55,85/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4");
            int index43 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index43 + 1;
            int subnum43 = 0 + 1;
            skill6.mActionObjects[index43].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index43].mImgBmpTotalnum = subnum43;
            skill6.mActionObjects[index43].mAnim.set("N/0/60,20/0,0/0/0|D/3.2|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.0|T/30,70/30,70/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/8.8|T/75,60/75,60/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4");
            int index44 = skill6.mActionObjectsTotalnum;
            skill6.mActionObjectsTotalnum = index44 + 1;
            int subnum44 = 0 + 1;
            skill6.mActionObjects[index44].mSrcImgBmpnum[0] = 5;
            skill6.mActionObjects[index44].mImgBmpTotalnum = subnum44;
            skill6.mActionObjects[index44].mAnim.set("N/0/45,60/0,0/0/0|D/3.6|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/70,35/70,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/9.2|T/30,35/30,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4");
            int index45 = skill6.mActionIconObjectsTotalnum;
            skill6.mActionIconObjectsTotalnum = index45 + 1;
            int subnum45 = 0 + 1;
            skill6.mActionIconObjects[index45].mImgPngId[0] = R.drawable.game_skill_121;
            skill6.mActionIconObjects[index45].mImgPngTotalnum = subnum45;
            skill6.mActionIconObjects[index45].mRect.set(aileft, aitop, airight, aibottom);
            skill6.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_5, R.string.skill_text_5);
            int num13 = num12 + 1;
            this.mSkill[num12] = skill6;
            Skill skill7 = new Skill(num13, R.drawable.slot_item_berry_22, null);
            skill7.mId = 21;
            int index46 = skill7.mActionObjectsTotalnum;
            skill7.mActionObjectsTotalnum = index46 + 1;
            int subnum46 = 0 + 1;
            skill7.mActionObjects[index46].mSrcImgBmpnum[0] = 6;
            skill7.mActionObjects[index46].mImgBmpTotalnum = subnum46;
            skill7.mActionObjects[index46].mAnim.set("N/0/70,50/4,5/0/0|S/4,5/22,27/0.5&A/0,220/0.5|S/22,27/20,25/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5");
            int index47 = skill7.mActionObjectsTotalnum;
            skill7.mActionObjectsTotalnum = index47 + 1;
            int subnum47 = 0 + 1;
            skill7.mActionObjects[index47].mSrcImgBmpnum[0] = 6;
            skill7.mActionObjects[index47].mImgBmpTotalnum = subnum47;
            skill7.mActionObjects[index47].mAnim.set("N/0/30,50/4,5/0/0|S/4,5/22,27/0.5&A/0,220/0.5|S/22,27/20,25/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5");
            int index48 = skill7.mActionIconObjectsTotalnum;
            skill7.mActionIconObjectsTotalnum = index48 + 1;
            int subnum48 = 0 + 1;
            skill7.mActionIconObjects[index48].mImgPngId[0] = R.drawable.game_skill_122;
            skill7.mActionIconObjects[index48].mImgPngTotalnum = subnum48;
            skill7.mActionIconObjects[index48].mRect.set(aileft, aitop, airight, aibottom);
            skill7.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_6, R.string.skill_text_6);
            int num14 = num13 + 1;
            this.mSkill[num13] = skill7;
            Skill skill8 = new Skill(num14, R.drawable.slot_item_berry_23, null);
            skill8.mId = 22;
            int index49 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index49 + 1;
            int subnum49 = 0 + 1;
            skill8.mActionObjects[index49].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index49].mImgBmpTotalnum = subnum49;
            skill8.mActionObjects[index49].mAnim.set("N/0/-5,-5/5,5/220/0|T/-5,-5/50,110/3.0&S/5,5/10,10/3.0|D/0.1|T/0,-5/55,110/3.0&S/5,5/10,10/3.0|D/0.1|T/5,-5/60,110/3.0&S/5,5/10,10/3.0");
            int index50 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index50 + 1;
            int subnum50 = 0 + 1;
            skill8.mActionObjects[index50].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index50].mImgBmpTotalnum = subnum50;
            skill8.mActionObjects[index50].mAnim.set("N/0/50,-5/5,5/220/0|D/0.3|T/50,-5/90,105/3.0|D/0.1|T/45,-5/85,105/3.0|D/0.1|T/25,-5/65,105/3.0");
            int index51 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index51 + 1;
            int subnum51 = 0 + 1;
            skill8.mActionObjects[index51].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index51].mImgBmpTotalnum = subnum51;
            skill8.mActionObjects[index51].mAnim.set("N/0/5,-5/5,5/220/0|D/0.8|T/5,-5/60,110/3.0&S/5,5/10,10/3.0|D/0.1|T/10,-5/65,110/3.0&S/5,5/10,10/3.0|D/0.1|T/50,-5/90,110/3.0&S/5,5/10,10/3.0");
            int index52 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index52 + 1;
            int subnum52 = 0 + 1;
            skill8.mActionObjects[index52].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index52].mImgBmpTotalnum = subnum52;
            skill8.mActionObjects[index52].mAnim.set("N/0/-5,15/5,5/220/0|D/2.1|T/-5,15/40,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,20/35,110/3.0&S/5,5/10,10/3.0|D/0.1|T/40,-5/80,110/3.0&S/5,5/10,10/3.0");
            int index53 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index53 + 1;
            int subnum53 = 0 + 1;
            skill8.mActionObjects[index53].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index53].mImgBmpTotalnum = subnum53;
            skill8.mActionObjects[index53].mAnim.set("N/0/30,-5/5,5/220/0|D/2.6|T/30,-5/70,108/3.0&S/5,5/8,8/3.0|D/0.1|T/80,-5/108,50/3.0&S/5,5/8,8/3.0|D/0.1|T/20,-5/60,108/3.0&S/5,5/8,8/3.0");
            int index54 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index54 + 1;
            int subnum54 = 0 + 1;
            skill8.mActionObjects[index54].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index54].mImgBmpTotalnum = subnum54;
            skill8.mActionObjects[index54].mAnim.set("N/0/60,-5/5,5/220/0|D/2.9|T/60,-5/100,105/3.0|D/0.1|T/50,-5/95,105/3.0|D/0.1|T/-5,20/35,105/3.0");
            int index55 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index55 + 1;
            int subnum55 = 0 + 1;
            skill8.mActionObjects[index55].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index55].mImgBmpTotalnum = subnum55;
            skill8.mActionObjects[index55].mAnim.set("N/0/-5,30/5,5/220/0|D/3.4|T/-5,30/20,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,50/15,110/3.0&S/5,5/10,10/3.0|D/0.1|T/75,-5/100,110/3.0&S/5,5/10,10/3.0");
            int index56 = skill8.mActionObjectsTotalnum;
            skill8.mActionObjectsTotalnum = index56 + 1;
            int subnum56 = 0 + 1;
            skill8.mActionObjects[index56].mSrcImgBmpnum[0] = 7;
            skill8.mActionObjects[index56].mImgBmpTotalnum = subnum56;
            skill8.mActionObjects[index56].mAnim.set("N/0/40,-5/5,5/220/0|D/3.7|T/40,-5/80,110/3.0&S/5,5/10,10/3.0|D/0.1|T/10,-5/40,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,0/45,110/3.0&S/5,5/10,10/3.0");
            int index57 = skill8.mActionIconObjectsTotalnum;
            skill8.mActionIconObjectsTotalnum = index57 + 1;
            int subnum57 = 0 + 1;
            skill8.mActionIconObjects[index57].mImgPngId[0] = R.drawable.game_skill_123;
            skill8.mActionIconObjects[index57].mImgPngTotalnum = subnum57;
            skill8.mActionIconObjects[index57].mRect.set(aileft, aitop, airight, aibottom);
            skill8.setContent(context, 2, 1, 100, 0, true, R.string.skill_name_7, R.string.skill_text_7);
            this.mSkill[num14] = skill8;
            this.mSkillTotalnum = num14 + 1;
            loadImage(context);
        }

        public void loadImage(Context context) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> loadImage()");
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            int totalnum = this.mImgBmpTotalnum;
            for (int i = 0; i < totalnum; i++) {
                if (this.mSrcImgBmp[i] == null) {
                    if (this.mImgBmpPath[i] == null) {
                        if (this.mImgBmpId[i] > -1) {
                            this.mSrcImgBmp[i] = BitmapFactory.decodeResource(context.getResources(), this.mImgBmpId[i], options);
                        }
                    } else {
                        this.mSrcImgBmp[i] = BitmapFactory.decodeFile(this.mImgBmpPath[i], options);
                    }
                }
            }
            int totalnum2 = this.mImgPngTotalnum;
            for (int i2 = 0; i2 < this.mImgPngTotalnum; i2++) {
                if (this.mSrcImgPng[i2] == null) {
                    if (this.mImgPngPath[i2] == null) {
                        if (this.mImgPngId[i2] > -1) {
                            this.mSrcImgPng[i2] = context.getResources().getDrawable(this.mImgPngId[i2]);
                        }
                    } else {
                        this.mSrcImgPng[i2] = Drawable.createFromPath(this.mImgPngPath[i2]);
                    }
                }
            }
            for (int i3 = 0; i3 < this.mSkillTotalnum && (skill = this.mSkill[i3]) != null; i3++) {
                if (skill.mImgPng[0] == null) {
                    if (skill.mIconImgPath == null) {
                        skill.mImgPng[0] = context.getResources().getDrawable(skill.mIconImgId);
                    } else {
                        skill.mImgPng[0] = Drawable.createFromPath(skill.mIconImgPath);
                    }
                }
                for (int j = 0; j < 10; j++) {
                    skill.mActionObjects[j].loadImage(this.mSrcImgBmp, this.mSrcImgPng);
                    skill.mActionIconObjects[j].loadImage(context);
                }
            }
        }

        public void recycleImageInSkills() {
            LOG.verboseFromObjectsClass(">> Skills::recycleImageInSkills()");
            int totalnum = this.mImgBmpTotalnum;
            for (int i = 0; i < totalnum; i++) {
                if (this.mSrcImgBmp[i] != null) {
                    this.mSrcImgBmp[i].recycle();
                    this.mSrcImgBmp[i] = null;
                }
            }
            int length = this.mSkill.length;
            for (int i2 = 0; i2 < length; i2++) {
                Skill skill = this.mSkill[i2];
                if (skill != null) {
                    LOG.verboseFromObjectsClass("++ recycleImageInSkills() ANIMOBJECT_TOTALNUM: 10");
                    for (int j = 0; j < 10; j++) {
                        skill.mActionObjects[j].recycleImageInAnimObject();
                        skill.mActionIconObjects[j].recycleImageInAnimObject();
                    }
                } else {
                    return;
                }
            }
        }

        public void setAlpha(int alpha) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> setAlpha()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                skill.mAlpha[0] = alpha;
                skill.mActionIconObjects[0].mAlpha = alpha;
            }
            Skill skill2 = this.mBerrySkill;
            if (skill2 != null && skill2.mSetNum > -1) {
                skill2.mAlpha[0] = alpha;
                skill2.mActionIconObjects[0].mAlpha = alpha;
            }
        }

        public void setY(int sy, int y) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> setY()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                int height = skill.mRect[0].height();
                if (skill.mSetNum < 0) {
                    skill.mRect[0].top = y;
                    skill.mRect[0].bottom = y + height;
                } else {
                    skill.mRect[0].top = sy;
                    skill.mRect[0].bottom = sy + height;
                }
            }
            Skill skill2 = this.mBerrySkill;
            int height2 = skill2.mRect[0].height();
            if (skill2 != null && skill2.mSetNum > -1) {
                skill2.mRect[0].top = sy;
                skill2.mRect[0].bottom = sy + height2;
            }
        }

        public int touchIcon(int tx, int ty) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> touchIcon()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                Rect rect = skill.mRect[0];
                if (rect.left < tx && rect.right > tx && rect.top < ty && rect.bottom > ty) {
                    return i;
                }
            }
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1) {
                Rect rect2 = berryskill.mRect[0];
                if (rect2.left < tx && rect2.right > tx && rect2.top < ty && rect2.bottom > ty) {
                    int i2 = berryskill.mIndex + BERRYSKILL_INDEX;
                    return i2;
                }
            }
            return -1;
        }

        public void moveIcon(int index, int tx, int ty) {
            LOG.verboseFromObjectsClass(">> moveIcon()");
            int size = this.mIconSize;
            int sizehalf = size / 2;
            int left = tx - sizehalf;
            int top = ty - sizehalf;
            this.mSkill[index].mRect[0].set(left, top, left + size, top + size);
        }

        public void clearSetSkillIndexTable() {
            LOG.verboseFromObjectsClass(">> clearSetSkillIndexTable()");
            Arrays.fill(this.mSetSkillIndexTable, -2);
        }

        public Skill setSlots(int index, int num, int windowx, int windowy, int totalnum, boolean set) {
            Skill skill;
            Skill skill2;
            LOG.verboseFromObjectsClass(">> setSlots()");
            if (set && (!this.mSetSkillActiveIndexTable[num] || num > 3)) {
                return null;
            }
            int prenum = set ? this.mSkill[index].mSetNum : this.mSkill[index].mNum;
            int move = num > prenum ? -1 : 1;
            int[] slot = new int[totalnum];
            Arrays.fill(slot, -1);
            for (int i = 0; i < this.mSkillTotalnum && (skill2 = this.mSkill[i]) != null; i++) {
                int slotnum = set ? skill2.mSetNum : skill2.mNum;
                if (slotnum > -1 && slotnum < totalnum) {
                    slot[slotnum] = i;
                }
            }
            if (prenum < 0) {
                int tempsetnum = this.mSkill[index].mSetNum;
                int tempnum = this.mSkill[index].mNum;
                this.mSkill[index].setSlot(num, windowx, windowy, set, 0);
                if (slot[num] <= -1 || slot[num] >= this.mSkillTotalnum || (skill = this.mSkill[slot[num]]) == null) {
                    return null;
                }
                skill.mSetNum = tempsetnum;
                skill.mNum = tempnum;
                return skill;
            }
            int anim = 0;
            while (index > -1) {
                Skill skill3 = this.mSkill[index];
                if (num <= -1 || num >= totalnum) {
                    break;
                }
                index = slot[num];
                skill3.setSlot(num, windowx, windowy, set, anim);
                if (move > 0) {
                    anim = 7;
                } else {
                    anim = 5;
                }
                num += move;
                if (move < 0) {
                    if (num < prenum) {
                        break;
                    }
                } else if (num > prenum) {
                    break;
                }
            }
            return null;
        }

        public void animation(float speedrate) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> animation()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                skill.animation(speedrate);
            }
        }

        public void animation(float speedrate, GameView gameview) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> animation()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                skill.animation(speedrate, gameview);
            }
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1) {
                berryskill.animation(speedrate, gameview);
            }
        }

        public int getSetSkillIndex(int setnum) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> getSetSkillIndex()");
            int[] table = this.mSetSkillIndexTable;
            if (table[0] == -2) {
                for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                    if (skill.mSetNum > -1) {
                        table[skill.mSetNum] = i;
                    }
                }
            }
            if (setnum <= -1 || setnum >= table.length) {
                return -1;
            }
            return table[setnum];
        }

        public int getEmptySlotNum() {
            Skill skill;
            LOG.verboseFromObjectsClass(">> getEmptySlotNum()");
            boolean[] table = new boolean[8];
            Arrays.fill(table, false);
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                if (skill.mNum > -1 && skill.mNum < table.length) {
                    table[skill.mNum] = true;
                }
            }
            for (int i2 = 0; i2 < table.length; i2++) {
                if (!table[i2]) {
                    return i2;
                }
            }
            return -1;
        }

        public int getIndex(int id) {
            LOG.verboseFromObjectsClass(">> getIndex()");
            int totalnum = this.mSkillTotalnum;
            for (int i = 0; i < totalnum; i++) {
                Skill skill = this.mSkill[i];
                if (skill != null && skill.mId == id) {
                    return i;
                }
            }
            return -1;
        }

        public void initiateBuyData() {
            LOG.verboseFromObjectsClass(">> initiateBuyData()");
            int totalnum = this.mSkillTotalnum;
            for (int i = 0; i < totalnum; i++) {
                Skill skill = this.mSkill[i];
                skill.mBuy = false;
            }
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1) {
                berryskill.mBuy = false;
            }
        }

        public void initiateShowData() {
            Skill skill;
            LOG.verboseFromObjectsClass(">>initiateShowData ()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                for (int j = 0; j < skill.mAlpha.length; j++) {
                    skill.mAlpha[j] = 255;
                }
                skill.mShow = true;
            }
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1) {
                for (int i2 = 0; i2 < berryskill.mAlpha.length; i2++) {
                    berryskill.mAlpha[i2] = 255;
                }
                berryskill.mShow = true;
            }
        }

        public void initiateData() {
            Skill skill;
            LOG.verboseFromObjectsClass(">> initiateData()");
            for (int i = 0; i < this.mSkillTotalnum && (skill = this.mSkill[i]) != null; i++) {
                for (int j = 0; j < skill.mActionObjectsTotalnum; j++) {
                    skill.mActionObjects[j].mRect.set(-1000, -1000, -1000, -1000);
                    skill.mActionObjects[j].mAnim.initiateData();
                }
            }
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1) {
                for (int j2 = 0; j2 < berryskill.mActionObjectsTotalnum; j2++) {
                    berryskill.mActionObjects[j2].mRect.set(-1000, -1000, -1000, -1000);
                    berryskill.mActionObjects[j2].mAnim.initiateData();
                }
            }
        }

        public void doIconDraw(Canvas canvas, int index) {
            Skill skill;
            LOG.verboseFromObjectsClass(">> doIconDraw()");
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1 && berryskill.mImgPng[0] != null && berryskill.mShow) {
                berryskill.mImgPng[0].setAlpha(berryskill.mAlpha[0]);
                berryskill.mImgPng[0].setBounds(berryskill.mRect[0]);
                berryskill.mImgPng[0].draw(canvas);
            }
            for (int i = 0; i < this.mSkillTotalnum; i++) {
                if (i != index) {
                    Skill skill2 = this.mSkill[i];
                    if (skill2 == null) {
                        break;
                    }
                    if (skill2.mTime != 0 && skill2.mTime != 5 && skill2.mTime != 7 && ((skill2.mNum > -1 || skill2.mSetNum > -1) && skill2.mImgPng[0] != null && skill2.mShow)) {
                        skill2.mImgPng[0].setAlpha(skill2.mAlpha[0]);
                        skill2.mImgPng[0].setBounds(skill2.mRect[0]);
                        skill2.mImgPng[0].draw(canvas);
                    }
                }
            }
            if (index > -1 && index < this.mSkillTotalnum && (skill = this.mSkill[index]) != null && skill.mTime != 0 && skill.mTime != 5 && skill.mTime != 7) {
                if ((skill.mNum > -1 || skill.mSetNum > -1) && skill.mImgPng[0] != null && skill.mShow) {
                    skill.mImgPng[0].setAlpha(skill.mAlpha[0]);
                    skill.mImgPng[0].setBounds(skill.mRect[0]);
                    skill.mImgPng[0].draw(canvas);
                }
            }
        }

        public void doActionDraw(Canvas canvas, int leftindex, int rightindex) {
            Skill skill;
            Skill skill2;
            Skill skill3;
            LOG.verboseFromObjectsClass(">> doActionDraw()");
            Skill berryskill = this.mBerrySkill;
            if (berryskill != null && berryskill.mSetNum > -1 && berryskill.mImgPng[0] != null) {
                berryskill.mActionIconObjects[0].mImgPng[0].setAlpha(berryskill.mActionIconObjects[0].mAlpha);
                berryskill.mActionIconObjects[0].mImgPng[0].setBounds(berryskill.mActionIconObjects[0].mRect);
                berryskill.mActionIconObjects[0].mImgPng[0].draw(canvas);
            }
            for (int i = 0; i < 4; i++) {
                int index = getSetSkillIndex(i);
                if (index > -1 && index != leftindex && (skill3 = this.mSkill[index]) != null) {
                    skill3.mActionIconObjects[0].mImgPng[0].setAlpha(skill3.mActionIconObjects[0].mAlpha);
                    skill3.mActionIconObjects[0].mImgPng[0].setBounds(skill3.mActionIconObjects[0].mRect);
                    skill3.mActionIconObjects[0].mImgPng[0].draw(canvas);
                }
            }
            if (leftindex > -1 && leftindex < this.mSkillTotalnum && (skill2 = this.mSkill[leftindex]) != null) {
                skill2.mActionIconObjects[0].mImgPng[0].setAlpha(skill2.mActionIconObjects[0].mAlpha);
                skill2.mActionIconObjects[0].mImgPng[0].setBounds(skill2.mActionIconObjects[0].mRect);
                skill2.mActionIconObjects[0].mImgPng[0].draw(canvas);
            }
            if (rightindex > -1 && rightindex < this.mSkillTotalnum && (skill = this.mSkill[rightindex]) != null) {
                for (int i2 = 0; i2 < skill.mActionObjectsTotalnum; i2++) {
                    skill.mActionObjects[i2].doDraw(canvas);
                }
            }
        }

        class Skill {
            public static final int ANIMOBJECT_TOTALNUM = 10;
            public static final int IMAGE_ICON = 0;
            public static final int SKILL_IMAGE_TOTALNUM = 1;
            public AnimObject[] mActionIconObjects;
            public int mActionIconObjectsTotalnum;
            public AnimObject[] mActionObjects;
            public int mActionObjectsTotalnum;
            public int[] mAlpha;
            public String mAnimOrder;
            public boolean mBuy;
            public boolean mDim;
            public int mIconImgId;
            public String mIconImgPath;
            public int mId;
            public Drawable[] mImgPng;
            public int mIndex;
            public int mLevel;
            public String mName;
            public int mNum;
            public int mParent;
            public int mPoint;
            public Rect[] mRect;
            public int mSetNum;
            public boolean mShow;
            public int mSustainmentTime;
            public Rect mTempIconRect;
            public String mText;
            public int mTime;
            public int mTimeCount;
            public int mUpgrade;
            public int mUseNum;

            public Skill(int index, int iconimgid, String iconimgpath) {
                LOG.verboseFromObjectsClass(">> Skill()");
                this.mIndex = index;
                this.mImgPng = new Drawable[1];
                this.mActionObjects = new AnimObject[10];
                this.mActionIconObjects = new AnimObject[10];
                this.mRect = new Rect[1];
                this.mAlpha = new int[1];
                for (int i = 0; i < 1; i++) {
                    this.mRect[i] = new Rect();
                    this.mAlpha[i] = -1;
                }
                this.mTempIconRect = new Rect();
                for (int i2 = 0; i2 < 10; i2++) {
                    this.mActionObjects[i2] = Objects.this.new AnimObject();
                    this.mActionIconObjects[i2] = Objects.this.new AnimObject();
                }
                this.mIconImgId = iconimgid;
                this.mIconImgPath = iconimgpath;
                this.mNum = -1;
                this.mSetNum = -1;
                this.mTime = -1;
                this.mAnimOrder = null;
                this.mActionObjectsTotalnum = 0;
                this.mActionIconObjectsTotalnum = 0;
                this.mUpgrade = 0;
                this.mUseNum = 0;
                this.mDim = false;
                this.mBuy = false;
                this.mShow = true;
            }

            public void setContent(Context context, int level, int point, int sustainmenttime, int parent, boolean dim, int nameid, int textid) {
                LOG.verboseFromObjectsClass(">> setContent()");
                this.mLevel = level;
                this.mPoint = point;
                this.mSustainmentTime = sustainmenttime;
                this.mParent = parent;
                this.mDim = dim;
                this.mName = context.getResources().getString(nameid);
                this.mText = context.getResources().getString(textid);
            }

            public void set(Skill skill) {
                LOG.verboseFromObjectsClass(">> set()");
                this.mImgPng = skill.mImgPng;
                for (int i = 0; i < this.mActionObjects.length; i++) {
                    this.mActionObjects[i].set(skill.mActionObjects[i]);
                }
                for (int i2 = 0; i2 < this.mActionIconObjects.length; i2++) {
                    this.mActionIconObjects[i2].set(skill.mActionIconObjects[i2]);
                }
                this.mIconImgPath = skill.mIconImgPath;
                this.mAnimOrder = skill.mAnimOrder;
                this.mName = skill.mName;
                this.mText = skill.mText;
                for (int i3 = 0; i3 < skill.mRect.length; i3++) {
                    this.mRect[i3].set(skill.mRect[i3]);
                }
                this.mTempIconRect.set(skill.mTempIconRect);
                this.mIconImgId = skill.mIconImgId;
                for (int i4 = 0; i4 < skill.mAlpha.length; i4++) {
                    this.mAlpha[i4] = skill.mAlpha[i4];
                }
                this.mNum = skill.mNum;
                this.mSetNum = skill.mSetNum;
                this.mId = skill.mId;
                this.mIndex = skill.mIndex;
                this.mLevel = skill.mLevel;
                this.mPoint = skill.mPoint;
                this.mSustainmentTime = skill.mSustainmentTime;
                this.mParent = skill.mParent;
                this.mUpgrade = skill.mUpgrade;
                this.mTime = skill.mTime;
                this.mTimeCount = skill.mTimeCount;
                this.mActionObjectsTotalnum = skill.mActionObjectsTotalnum;
                this.mActionIconObjectsTotalnum = skill.mActionIconObjectsTotalnum;
                this.mUseNum = skill.mUseNum;
                this.mDim = skill.mDim;
                this.mBuy = skill.mBuy;
                this.mShow = skill.mShow;
            }

            public void setSlot(int num, int windowx, int windowy, boolean set, int time) {
                LOG.verboseFromObjectsClass(">> setSlot()");
                if (this.mBuy) {
                    int size = Skills.this.mIconSize;
                    int left = (Skills.this.mIconSpace * (num + 1)) + windowx + (size * num);
                    int top = windowy + Skills.this.mIconSpace;
                    this.mRect[0].set(left, top, left + size, top + size);
                    if (set) {
                        this.mNum = -1;
                        this.mSetNum = num;
                    } else {
                        this.mNum = num;
                        this.mSetNum = -1;
                    }
                    this.mTime = time;
                }
            }

            public void setSlot(int windowx, int windowy, int time, int size, int spacex, int spacey) {
                LOG.verboseFromObjectsClass(">> setSlot()");
                if (this.mBuy) {
                    int num = this.mSetNum;
                    if (num < 0) {
                        num = this.mNum;
                    }
                    int left = ((num + 1) * spacex) + windowx + (size * num);
                    int top = windowy + spacey;
                    this.mRect[0].set(left, top, left + size, top + size);
                    this.mTime = time;
                }
            }

            public void setActionIconSlot(Rect rect) {
                LOG.verboseFromObjectsClass(">> setActionIconSlot()");
                this.mActionIconObjects[0].mRect.set(rect);
            }

            public void animation(float speedrate) {
                LOG.verboseFromObjectsClass(">> animation()");
                switch (this.mTime) {
                    case 0:
                        this.mAlpha[0] = 0;
                        this.mTempIconRect.set(this.mRect[0]);
                        this.mTimeCount = 0;
                        this.mTime++;
                        break;
                    case 1:
                        int speed = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].top -= speed;
                        this.mRect[0].left -= speed;
                        this.mRect[0].bottom += speed;
                        this.mRect[0].right += speed;
                        int alpha = this.mAlpha[0] + ((int) (10.0f * speedrate));
                        if (alpha < 250) {
                            this.mAlpha[0] = alpha;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i = this.mTimeCount;
                        this.mTimeCount = i + 1;
                        if (i > 2.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 2:
                        int speed2 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].top += speed2;
                        this.mRect[0].left += speed2;
                        this.mRect[0].bottom -= speed2;
                        this.mRect[0].right -= speed2;
                        int alpha2 = this.mAlpha[0] + ((int) (10.0f * speedrate));
                        if (alpha2 < 250) {
                            this.mAlpha[0] = alpha2;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i2 = this.mTimeCount;
                        this.mTimeCount = i2 + 1;
                        if (i2 > 4.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 3:
                        int speed3 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].top -= speed3;
                        this.mRect[0].left -= speed3;
                        this.mRect[0].bottom += speed3;
                        this.mRect[0].right += speed3;
                        int alpha3 = this.mAlpha[0] + ((int) (10.0f * speedrate));
                        if (alpha3 < 250) {
                            this.mAlpha[0] = alpha3;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i3 = this.mTimeCount;
                        this.mTimeCount = i3 + 1;
                        if (i3 > 4.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 4:
                        int speed4 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].top += speed4;
                        this.mRect[0].left += speed4;
                        this.mRect[0].bottom -= speed4;
                        this.mRect[0].right -= speed4;
                        int alpha4 = this.mAlpha[0] + ((int) (10.0f * speedrate));
                        if (alpha4 < 250) {
                            this.mAlpha[0] = alpha4;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i4 = this.mTimeCount;
                        this.mTimeCount = i4 + 1;
                        if (i4 > 2.0f / speedrate) {
                            this.mRect[0].set(this.mTempIconRect);
                            this.mAlpha[0] = -1;
                            this.mTimeCount = 0;
                            this.mTime = -1;
                        }
                        break;
                    case 5:
                        int speed5 = (int) (15.0f * Objects.this.mDrawrate * speedrate);
                        this.mAlpha[0] = 0;
                        this.mTempIconRect.set(this.mRect[0]);
                        this.mRect[0].left += speed5;
                        this.mRect[0].right += speed5;
                        this.mTimeCount = 0;
                        this.mTime++;
                        break;
                    case 6:
                        int speed6 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].left -= speed6;
                        this.mRect[0].right -= speed6;
                        if (this.mRect[0].left < this.mTempIconRect.left) {
                            this.mRect[0].set(this.mTempIconRect);
                        }
                        int alpha5 = this.mAlpha[0] + ((int) (20.0f * speedrate));
                        if (alpha5 < 250) {
                            this.mAlpha[0] = alpha5;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i5 = this.mTimeCount;
                        this.mTimeCount = i5 + 1;
                        if (i5 > 15) {
                            this.mRect[0].set(this.mTempIconRect);
                            this.mAlpha[0] = -1;
                            this.mTimeCount = 0;
                            this.mTime = -1;
                        }
                        break;
                    case 7:
                        int speed7 = (int) (15.0f * Objects.this.mDrawrate * speedrate);
                        this.mAlpha[0] = 0;
                        this.mTempIconRect.set(this.mRect[0]);
                        this.mRect[0].left -= speed7;
                        this.mRect[0].right -= speed7;
                        this.mTimeCount = 0;
                        this.mTime++;
                        break;
                    case 8:
                        int speed8 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mRect[0].left += speed8;
                        this.mRect[0].right += speed8;
                        if (this.mRect[0].left > this.mTempIconRect.left) {
                            this.mRect[0].set(this.mTempIconRect);
                        }
                        int alpha6 = this.mAlpha[0] + ((int) (20.0f * speedrate));
                        if (alpha6 < 250) {
                            this.mAlpha[0] = alpha6;
                        } else {
                            this.mAlpha[0] = 250;
                        }
                        int i6 = this.mTimeCount;
                        this.mTimeCount = i6 + 1;
                        if (i6 > 15) {
                            this.mRect[0].set(this.mTempIconRect);
                            this.mAlpha[0] = -1;
                            this.mTimeCount = 0;
                            this.mTime = -1;
                            this.mShow = false;
                        }
                        break;
                }
            }

            public void animation(float speedrate, GameView gameview) {
                LOG.verboseFromObjectsClass(">> animation()");
                switch (this.mTime) {
                    case 0:
                        this.mActionIconObjects[0].mRect.set(this.mRect[0]);
                        this.mTempIconRect.set(this.mActionIconObjects[0].mRect);
                        this.mActionIconObjects[0].mAlpha = 250;
                        gameview.playSound(9);
                        this.mTimeCount = 0;
                        this.mTime++;
                        break;
                    case 1:
                        int speed = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left += speed;
                        this.mActionIconObjects[0].mRect.top += speed;
                        this.mActionIconObjects[0].mRect.right -= speed;
                        this.mActionIconObjects[0].mRect.bottom -= speed;
                        int i = this.mTimeCount;
                        this.mTimeCount = i + 1;
                        if (i > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 2:
                        int speed2 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left -= speed2;
                        this.mActionIconObjects[0].mRect.top -= speed2;
                        this.mActionIconObjects[0].mRect.right += speed2;
                        this.mActionIconObjects[0].mRect.bottom += speed2;
                        int i2 = this.mTimeCount;
                        this.mTimeCount = i2 + 1;
                        if (i2 > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 3:
                        int speed3 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left += speed3;
                        this.mActionIconObjects[0].mRect.top += speed3;
                        this.mActionIconObjects[0].mRect.right -= speed3;
                        this.mActionIconObjects[0].mRect.bottom -= speed3;
                        int i3 = this.mTimeCount;
                        this.mTimeCount = i3 + 1;
                        if (i3 > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 4:
                        this.mTimeCount = this.mTimeCount + 1;
                        int speed4 = (int) ((20 - (this.mTimeCount / 2)) * Objects.this.mDrawrate * speedrate);
                        int drawrate = (int) (Objects.this.mDrawrate * speedrate);
                        if (speed4 < drawrate) {
                            speed4 = drawrate;
                        }
                        this.mActionIconObjects[0].mRect.left += speed4;
                        this.mActionIconObjects[0].mRect.right += speed4;
                        int chracterx = Objects.this.mCharacter[gameview.mScreenGameRoom.mRightCharacterIndex].getRect().centerX();
                        if (this.mActionIconObjects[0].mRect.centerX() < this.mTempIconRect.centerX() + ((chracterx - this.mTempIconRect.centerX()) / 2)) {
                            if (this.mActionIconObjects[0].mRect.width() < this.mTempIconRect.width() * 2) {
                                int speed5 = (int) (Objects.this.mDrawrate * speedrate);
                                this.mActionIconObjects[0].mRect.left -= speed5;
                                this.mActionIconObjects[0].mRect.top -= speed5;
                                this.mActionIconObjects[0].mRect.right += speed5;
                                this.mActionIconObjects[0].mRect.bottom += speed5;
                            }
                        } else if (this.mActionIconObjects[0].mRect.width() > this.mTempIconRect.width() / 2) {
                            int speed6 = (int) ((Objects.this.mDrawrate * speedrate) / 2.0f);
                            this.mActionIconObjects[0].mRect.left += speed6;
                            this.mActionIconObjects[0].mRect.top += speed6;
                            this.mActionIconObjects[0].mRect.right -= speed6;
                            this.mActionIconObjects[0].mRect.bottom -= speed6;
                        }
                        int alpha = this.mActionIconObjects[0].mAlpha - ((int) speedrate);
                        if (alpha > 150) {
                            this.mActionIconObjects[0].mAlpha = alpha;
                        } else {
                            this.mActionIconObjects[0].mAlpha = GameView.BattleRoom.INACTIVE_ALPHA;
                        }
                        if (this.mActionIconObjects[0].mRect.centerX() > chracterx) {
                            int widthhalf = this.mActionIconObjects[0].mRect.width() / 2;
                            this.mActionIconObjects[0].mRect.left = chracterx - widthhalf;
                            this.mActionIconObjects[0].mRect.right = chracterx + widthhalf;
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 5:
                        int speed7 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left -= speed7;
                        this.mActionIconObjects[0].mRect.top -= speed7;
                        this.mActionIconObjects[0].mRect.right += speed7;
                        this.mActionIconObjects[0].mRect.bottom += speed7;
                        int i4 = this.mTimeCount;
                        this.mTimeCount = i4 + 1;
                        if (i4 > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 6:
                        int speed8 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left += speed8;
                        this.mActionIconObjects[0].mRect.top += speed8;
                        this.mActionIconObjects[0].mRect.right -= speed8;
                        this.mActionIconObjects[0].mRect.bottom -= speed8;
                        int i5 = this.mTimeCount;
                        this.mTimeCount = i5 + 1;
                        if (i5 > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 7:
                        int speed9 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left -= speed9;
                        this.mActionIconObjects[0].mRect.top -= speed9;
                        this.mActionIconObjects[0].mRect.right += speed9;
                        this.mActionIconObjects[0].mRect.bottom += speed9;
                        int i6 = this.mTimeCount;
                        this.mTimeCount = i6 + 1;
                        if (i6 > 3.0f / speedrate) {
                            this.mTimeCount = 0;
                            this.mTime++;
                        }
                        break;
                    case 8:
                        int speed10 = (int) (Objects.this.mDrawrate * speedrate);
                        this.mActionIconObjects[0].mRect.left += speed10;
                        this.mActionIconObjects[0].mRect.top += speed10;
                        this.mActionIconObjects[0].mRect.right -= speed10;
                        this.mActionIconObjects[0].mRect.bottom -= speed10;
                        if (this.mActionIconObjects[0].mRect.width() < 1) {
                            Objects.this.mCharacter[gameview.mScreenGameRoom.mRightCharacterIndex].mTime = 0;
                            this.mTimeCount = 0;
                            this.mTime = -1;
                            this.mShow = false;
                        }
                        break;
                }
            }

            public void animationAction(float speedrate) {
                LOG.verboseFromObjectsClass(">> animationAction()");
                int totalnum = this.mActionObjectsTotalnum;
                for (int i = 0; i < totalnum; i++) {
                    this.mActionObjects[i].animation(speedrate, Skills.this.mSrcImgBmp, Skills.this.mSrcImgPng);
                }
            }
        }
    }

    class AnimObject {
        public static final int IMAGETOTALNUM = 10;
        public int mAlpha;
        public Animation mAnim;
        public int mChangeAlpha;
        public float mChangeImgnum;
        public int mChangeRotate;
        public int mDelay;
        public int mDelayCount;
        public int mFromImgnum;
        public int mHeight;
        public Bitmap[] mImgBmp;
        public int[] mImgBmpId;
        public String[] mImgBmpPath;
        public int mImgBmpTotalnum;
        public BitmapDrawable[] mImgPng;
        public int[] mImgPngId;
        public String[] mImgPngPath;
        public int mImgPngTotalnum;
        public int mImgnum;
        public Matrix mMatrix;
        public float mMoveHeight;
        public float mMoveWidth;
        public float mMoveX;
        public float mMoveY;
        public Paint mPaint;
        public Rect mRect;
        public int mRepeatNum;
        public int mRotate;
        private boolean mRotateEnd;
        public float mRotateHeightRate;
        public float mRotateWidthRate;
        public int[] mSrcImgBmpnum;
        public int[] mSrcImgPngnum;
        public int mTargetX;
        public int mTargetY;
        public float mTempHeight;
        public float mTempImgnum;
        public float mTempWidth;
        public float mTempX;
        public float mTempY;
        public int mToAlpha;
        public int mToHeight;
        public int mToImgnum;
        public int mToRotate;
        public int mToWidth;
        public int mWidth;
        public int mX;
        public int mY;

        public AnimObject() {
            LOG.verboseFromObjectsClass(">> AnimObject()");
            this.mImgBmp = new Bitmap[10];
            this.mImgPng = new BitmapDrawable[10];
            this.mImgBmpPath = new String[10];
            this.mImgPngPath = new String[10];
            this.mImgBmpId = new int[10];
            this.mImgPngId = new int[10];
            this.mSrcImgBmpnum = new int[10];
            this.mSrcImgPngnum = new int[10];
            this.mPaint = new Paint();
            this.mMatrix = new Matrix();
            this.mRect = new Rect();
            this.mAnim = Objects.this.new Animation();
            Arrays.fill(this.mImgBmpPath, (Object) null);
            Arrays.fill(this.mImgPngPath, (Object) null);
            Arrays.fill(this.mImgBmpId, -1);
            Arrays.fill(this.mImgPngId, -1);
            Arrays.fill(this.mSrcImgBmpnum, -1);
            Arrays.fill(this.mSrcImgPngnum, -1);
            this.mImgnum = 0;
        }

        public void set(AnimObject animobject) {
            LOG.verboseFromObjectsClass(">> set()");
            this.mImgBmp = animobject.mImgBmp;
            this.mImgPng = animobject.mImgPng;
            this.mPaint.set(animobject.mPaint);
            this.mMatrix.set(animobject.mMatrix);
            for (int i = 0; i < this.mImgBmpPath.length; i++) {
                this.mImgBmpPath[i] = animobject.mImgBmpPath[i];
            }
            for (int i2 = 0; i2 < this.mImgPngPath.length; i2++) {
                this.mImgPngPath[i2] = animobject.mImgPngPath[i2];
            }
            this.mRect.set(animobject.mRect);
            this.mAnim.set(animobject.mAnim);
            this.mImgnum = animobject.mImgnum;
            this.mImgBmpTotalnum = animobject.mImgBmpTotalnum;
            this.mImgPngTotalnum = animobject.mImgPngTotalnum;
            for (int i3 = 0; i3 < this.mImgBmpId.length; i3++) {
                this.mImgBmpId[i3] = animobject.mImgBmpId[i3];
            }
            for (int i4 = 0; i4 < this.mImgPngId.length; i4++) {
                this.mImgPngId[i4] = animobject.mImgPngId[i4];
            }
            for (int i5 = 0; i5 < this.mSrcImgBmpnum.length; i5++) {
                this.mSrcImgBmpnum[i5] = animobject.mSrcImgBmpnum[i5];
            }
            for (int i6 = 0; i6 < this.mSrcImgPngnum.length; i6++) {
                this.mSrcImgPngnum[i6] = animobject.mSrcImgPngnum[i6];
            }
            this.mFromImgnum = animobject.mFromImgnum;
            this.mToImgnum = animobject.mToImgnum;
            this.mRepeatNum = animobject.mRepeatNum;
            this.mTempImgnum = animobject.mTempImgnum;
            this.mChangeImgnum = animobject.mChangeImgnum;
            this.mX = animobject.mX;
            this.mY = animobject.mY;
            this.mTargetX = animobject.mTargetX;
            this.mTargetY = animobject.mTargetY;
            this.mTempX = animobject.mTempX;
            this.mTempY = animobject.mTempY;
            this.mMoveX = animobject.mMoveX;
            this.mMoveY = animobject.mMoveY;
            this.mWidth = animobject.mWidth;
            this.mHeight = animobject.mHeight;
            this.mToWidth = animobject.mToWidth;
            this.mToHeight = animobject.mToHeight;
            this.mRotateWidthRate = animobject.mRotateWidthRate;
            this.mRotateHeightRate = animobject.mRotateHeightRate;
            this.mTempWidth = animobject.mTempWidth;
            this.mTempHeight = animobject.mTempHeight;
            this.mMoveWidth = animobject.mMoveWidth;
            this.mMoveHeight = animobject.mMoveHeight;
            this.mAlpha = animobject.mAlpha;
            this.mChangeAlpha = animobject.mChangeAlpha;
            this.mToAlpha = animobject.mToAlpha;
            this.mRotate = animobject.mRotate;
            this.mChangeRotate = animobject.mChangeRotate;
            this.mToRotate = animobject.mToRotate;
            this.mDelay = animobject.mDelay;
            this.mDelayCount = animobject.mDelayCount;
            this.mRotateEnd = animobject.mRotateEnd;
        }

        public void loadImage(Bitmap[] imgbmp, Drawable[] imgpng) {
            LOG.verboseFromObjectsClass(">> loadImage()");
            int totalnum = this.mImgBmpTotalnum;
            for (int i = 0; i < totalnum; i++) {
                this.mImgBmp[i] = imgbmp[this.mSrcImgBmpnum[i]];
            }
            int totalnum2 = this.mImgPngTotalnum;
            for (int i2 = 0; i2 < totalnum2; i2++) {
                this.mImgPng[i2] = (BitmapDrawable) imgpng[this.mSrcImgPngnum[i2]];
            }
        }

        public void loadImage(Context context) {
            LOG.verboseFromObjectsClass(">> loadImage()");
            int totalnum = this.mImgBmpTotalnum;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            for (int i = 0; i < totalnum; i++) {
                if (this.mImgBmp[i] == null) {
                    if (this.mImgBmpPath[i] == null) {
                        if (this.mImgBmpId[i] > -1) {
                            this.mImgBmp[i] = BitmapFactory.decodeResource(context.getResources(), this.mImgBmpId[i], options);
                        }
                    } else {
                        this.mImgBmp[i] = BitmapFactory.decodeFile(this.mImgBmpPath[i], options);
                    }
                }
            }
            int totalnum2 = this.mImgPngTotalnum;
            for (int i2 = 0; i2 < totalnum2; i2++) {
                if (this.mImgPng[i2] == null) {
                    if (this.mImgPngPath[i2] == null) {
                        if (this.mImgPngId[i2] > -1) {
                            this.mImgPng[i2] = new BitmapDrawable(context.getResources(), context.getResources().openRawResource(this.mImgPngId[i2]));
                        }
                    } else {
                        this.mImgPng[i2] = (BitmapDrawable) Drawable.createFromPath(this.mImgPngPath[i2]);
                    }
                }
            }
        }

        public void recycleImageInAnimObject() {
            Bitmap b;
            LOG.error(">> recycleImageInAnimObject()");
            for (int i = 0; i < 10; i++) {
                if (this.mImgBmp[i] != null) {
                    this.mImgBmp[i].recycle();
                    this.mImgBmp[i] = null;
                }
            }
            int nImgPngSize = this.mImgPng != null ? this.mImgPng.length : 0;
            for (int i2 = 0; i2 < nImgPngSize; i2++) {
                if ((this.mImgPng[i2] instanceof BitmapDrawable) && (b = this.mImgPng[i2].getBitmap()) != null) {
                    b.recycle();
                }
            }
        }

        private Bitmap applyMatrix(Bitmap img, Matrix matrix) {
            LOG.verboseFromObjectsClass(">> applyMatrix()");
            int width = img.getWidth();
            int height = img.getHeight();
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmap);
            canvas.drawBitmap(img, 0.0f, 0.0f, (Paint) null);
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        }

        private Bitmap decompressImage(Drawable img) {
            LOG.verboseFromObjectsClass(">> decompressImage()");
            int width = img.getIntrinsicWidth();
            int height = img.getIntrinsicHeight();
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmap);
            img.setBounds(0, 0, width, height);
            return bitmap;
        }

        private Drawable compressBitmap(Bitmap bitmap) {
            LOG.verboseFromObjectsClass(">> compressBitmap()");
            ByteArrayOutputStream bytearray = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, bytearray);
            ByteArrayInputStream in = new ByteArrayInputStream(bytearray.toByteArray());
            Drawable d = Drawable.createFromStream(in, GameActivity.JSON_NAME_IMAGES_IMG);
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return d;
        }

        private void setImgnum(int from, int to, int num, float time) {
            LOG.verboseFromObjectsClass(">> setImgnum()");
            int imgnum = to - from;
            if (num < 1) {
                num = 1;
            }
            if (imgnum == 0) {
                this.mChangeImgnum = 0.0f;
            } else {
                float rate = (1000.0f * time) / 50.0f;
                this.mChangeImgnum = (imgnum / rate) / num;
            }
            this.mImgnum = from;
            this.mFromImgnum = from;
            this.mTempImgnum = from;
            this.mToImgnum = to;
            this.mRepeatNum = num;
        }

        private boolean changeImgnum(float speedrate) {
            LOG.verboseFromObjectsClass(">> changeImgnum()");
            float f = this.mTempImgnum + (this.mChangeImgnum / speedrate);
            this.mTempImgnum = f;
            this.mImgnum = (int) f;
            if (this.mImgnum < this.mFromImgnum) {
                int i = this.mRepeatNum - 1;
                this.mRepeatNum = i;
                if (i < 1) {
                    this.mImgnum = this.mFromImgnum;
                    return false;
                }
                this.mImgnum = this.mToImgnum;
            }
            if (this.mImgnum > this.mToImgnum) {
                int i2 = this.mRepeatNum - 1;
                this.mRepeatNum = i2;
                if (i2 < 1) {
                    this.mImgnum = this.mToImgnum;
                    return false;
                }
                this.mImgnum = this.mFromImgnum;
            }
            return true;
        }

        private void targeting(float fx, float fy, float tx, float ty, float time) {
            LOG.verboseFromObjectsClass(">> targeting()");
            float unitx = Objects.this.mDisplayWidth / 100.0f;
            float unity = Objects.this.mDisplayHeight / 100.0f;
            float fx2 = (int) (unitx * fx);
            float fy2 = (int) (unity * fy);
            float tx2 = (int) (unitx * tx);
            float ty2 = (int) (unity * ty);
            float x = tx2 - fx2;
            float y = ty2 - fy2;
            double distance = Math.sqrt((x * x) + (y * y));
            if (distance == 0.0d) {
                this.mMoveX = x;
                this.mMoveY = y;
            } else {
                float rate = (1000.0f * time) / 50.0f;
                this.mMoveX = x / rate;
                this.mMoveY = y / rate;
            }
            this.mTargetX = (int) tx2;
            this.mTargetY = (int) ty2;
            this.mTempX = fx2;
            this.mTempY = fy2;
            this.mX = (int) this.mTempX;
            this.mY = (int) this.mTempY;
            int width = (int) (this.mWidth * this.mRotateWidthRate);
            int height = (int) (this.mHeight * this.mRotateHeightRate);
            int widthhalf = width / 2;
            int heighthalf = height / 2;
            int left = this.mX - widthhalf;
            int top = this.mY - heighthalf;
            this.mRect.set(left, top, left + width, top + height);
        }

        private boolean move(float speedrate) {
            LOG.verboseFromObjectsClass(">> move()");
            float f = this.mTempX + (this.mMoveX / speedrate);
            this.mTempX = f;
            this.mX = (int) f;
            float f2 = this.mTempY + (this.mMoveY / speedrate);
            this.mTempY = f2;
            this.mY = (int) f2;
            int width = (int) (this.mWidth * this.mRotateWidthRate);
            int height = (int) (this.mHeight * this.mRotateHeightRate);
            int widthhalf = width / 2;
            int heighthalf = height / 2;
            int left = this.mX - widthhalf;
            int top = this.mY - heighthalf;
            this.mRect.set(left, top, left + width, top + height);
            boolean stopx = false;
            boolean stopy = false;
            if (this.mMoveX > 0.0f) {
                if (this.mTempX >= this.mTargetX) {
                    stopx = true;
                }
            } else if (this.mTempX <= this.mTargetX) {
                stopx = true;
            }
            if (this.mMoveY > 0.0f) {
                if (this.mTempY >= this.mTargetY) {
                    stopy = true;
                }
            } else if (this.mTempY <= this.mTargetY) {
                stopy = true;
            }
            if (stopx && stopy) {
                int i = this.mTargetX;
                this.mX = i;
                this.mTempX = i;
                int i2 = this.mTargetY;
                this.mY = i2;
                this.mTempY = i2;
                return false;
            }
            return true;
        }

        private void setScale(float fw, float fh, float tw, float th, float time) {
            LOG.verboseFromObjectsClass(">> setScale()");
            float unit = Objects.this.mDisplayWidth / 100.0f;
            float fw2 = (int) (unit * fw);
            float fh2 = (int) (unit * fh);
            float tw2 = (int) (unit * tw);
            float th2 = (int) (unit * th);
            float rate = (1000.0f * time) / 50.0f;
            this.mMoveWidth = (tw2 - fw2) / rate;
            this.mMoveHeight = (th2 - fh2) / rate;
            this.mToWidth = (int) tw2;
            this.mToHeight = (int) th2;
            this.mTempWidth = fw2;
            this.mTempHeight = fh2;
            this.mWidth = (int) this.mTempWidth;
            this.mHeight = (int) this.mTempHeight;
            float width = fw2 * this.mRotateWidthRate;
            float height = fh2 * this.mRotateHeightRate;
            int left = (int) (this.mRect.centerX() - (width / 2.0f));
            int top = (int) (this.mRect.centerY() - (height / 2.0f));
            this.mRect.set(left, top, (int) (left + width), (int) (top + height));
        }

        private boolean scaling(float speedrate) {
            LOG.verboseFromObjectsClass(">> scaling()");
            float f = this.mTempWidth + (this.mMoveWidth / speedrate);
            this.mTempWidth = f;
            this.mWidth = (int) f;
            float f2 = this.mTempHeight + (this.mMoveHeight / speedrate);
            this.mTempHeight = f2;
            this.mHeight = (int) f2;
            boolean stopx = false;
            boolean stopy = false;
            if (this.mMoveWidth > 0.0f) {
                if (this.mTempWidth >= this.mToWidth) {
                    int i = this.mToWidth;
                    this.mWidth = i;
                    this.mTempWidth = i;
                    stopx = true;
                }
            } else if (this.mTempWidth <= this.mToWidth) {
                int i2 = this.mToWidth;
                this.mWidth = i2;
                this.mTempWidth = i2;
                stopx = true;
            }
            if (this.mMoveHeight > 0.0f) {
                if (this.mTempHeight >= this.mToHeight) {
                    int i3 = this.mToHeight;
                    this.mHeight = i3;
                    this.mTempHeight = i3;
                    stopy = true;
                }
            } else if (this.mTempHeight <= this.mToHeight) {
                int i4 = this.mToHeight;
                this.mHeight = i4;
                this.mTempHeight = i4;
                stopy = true;
            }
            int width = (int) (this.mWidth * this.mRotateWidthRate);
            int height = (int) (this.mHeight * this.mRotateHeightRate);
            int left = this.mRect.centerX() - (width / 2);
            int top = this.mRect.centerY() - (height / 2);
            this.mRect.set(left, top, left + width, top + height);
            if (stopx && stopy) {
                return false;
            }
            return true;
        }

        private void setAlpha(int from, int to, float time) {
            LOG.verboseFromObjectsClass(">> setAlpha()");
            int alpha = to - from;
            if (alpha == 0) {
                this.mChangeAlpha = 0;
            } else {
                float rate = (1000.0f * time) / 50.0f;
                int changealpha = (int) (alpha / rate);
                if (alpha > 0) {
                    if (changealpha < 1) {
                        changealpha = 1;
                    }
                } else if (changealpha > -1) {
                    changealpha = -1;
                }
                this.mChangeAlpha = changealpha;
            }
            this.mAlpha = from;
            this.mPaint.setAlpha(this.mAlpha);
            this.mToAlpha = to;
        }

        private boolean changeAlpha(float speedrate) {
            LOG.verboseFromObjectsClass(">> changeAlpha()");
            this.mAlpha += (int) (this.mChangeAlpha / speedrate);
            this.mPaint.setAlpha(this.mAlpha);
            if (this.mChangeAlpha == 0) {
                return false;
            }
            if (this.mChangeAlpha > 0) {
                if (this.mAlpha >= this.mToAlpha) {
                    this.mAlpha = this.mToAlpha;
                    this.mPaint.setAlpha(this.mAlpha);
                    return false;
                }
            } else if (this.mAlpha <= this.mToAlpha) {
                this.mAlpha = this.mToAlpha;
                this.mPaint.setAlpha(this.mAlpha);
                return false;
            }
            return true;
        }

        private void setRotate(int from, int to, boolean direct, float time, Bitmap[] srcimgbmp, Drawable[] srcimgpng) {
            LOG.verboseFromObjectsClass(">> setRotate()");
            int rotate = direct ? to - from : from - to;
            if (rotate < 0) {
                rotate += 360;
                this.mRotateEnd = false;
            } else {
                this.mRotateEnd = true;
            }
            if (!direct) {
                rotate = -rotate;
            }
            if (rotate == 0) {
                this.mChangeRotate = 0;
            } else {
                float rate = (1000.0f * time) / 50.0f;
                int changerotate = (int) (rotate / rate);
                if (rotate > 0) {
                    if (changerotate < 1) {
                        changerotate = 1;
                    }
                } else if (changerotate > -1) {
                    changerotate = -1;
                }
                this.mChangeRotate = changerotate;
            }
            rotate(from, srcimgbmp, srcimgpng);
            this.mRotate = from;
            this.mToRotate = to;
        }

        private boolean changeRotate(float speedrate, Bitmap[] srcimgbmp, Drawable[] srcimgpng) {
            LOG.verboseFromObjectsClass(">> changeRotate()");
            boolean result = true;
            int speed = (int) (this.mChangeRotate / speedrate);
            if (this.mChangeRotate > 0) {
                if (speed < 1) {
                    speed = 1;
                }
            } else if (speed > -1) {
                speed = -1;
            }
            this.mRotate += speed;
            if (this.mRotate < 0) {
                this.mRotate += 360;
                this.mRotateEnd = true;
            }
            if (this.mRotate >= 360) {
                this.mRotate -= 360;
                this.mRotateEnd = true;
            }
            if (this.mChangeRotate == 0) {
                result = false;
            } else if (this.mChangeRotate > 0) {
                if (this.mRotateEnd && this.mRotate >= this.mToRotate) {
                    this.mRotate = this.mToRotate;
                    result = false;
                }
            } else if (this.mRotateEnd && this.mRotate <= this.mToRotate) {
                this.mRotate = this.mToRotate;
                result = false;
            }
            rotate(this.mRotate, srcimgbmp, srcimgpng);
            return result;
        }

        private void setRotateImgRect(Bitmap srcimg, Bitmap img) {
            LOG.verboseFromObjectsClass(">> setRotateImgRect()");
            float widthrate = img.getWidth() / srcimg.getWidth();
            float heightrate = img.getHeight() / srcimg.getHeight();
            int width = (int) (this.mWidth * widthrate);
            int height = (int) (this.mHeight * heightrate);
            int left = this.mRect.centerX() - (width / 2);
            int top = this.mRect.centerY() - (height / 2);
            this.mRect.set(left, top, left + width, top + height);
            this.mRotateWidthRate = widthrate;
            this.mRotateHeightRate = heightrate;
        }

        private void rotate(int rotate, Bitmap[] srcimgbmp, Drawable[] srcimgpng) {
            int num;
            int num2;
            LOG.verboseFromObjectsClass(">> rotate()");
            if (this.mImgnum > -1 && this.mImgnum < this.mImgBmp.length) {
                if (this.mImgBmp[this.mImgnum] != null && (num2 = this.mSrcImgBmpnum[this.mImgnum]) > -1) {
                    Bitmap bitmap = srcimgbmp[num2];
                    this.mMatrix.setRotate(rotate);
                    this.mImgBmp[this.mImgnum] = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.mMatrix, true);
                    setRotateImgRect(bitmap, this.mImgBmp[this.mImgnum]);
                }
                if (this.mImgPng[this.mImgnum] != null && (num = this.mSrcImgPngnum[this.mImgnum]) > -1) {
                    Bitmap bitmap2 = decompressImage(srcimgpng[num]);
                    this.mMatrix.setRotate(rotate);
                    Bitmap bitmap3 = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), this.mMatrix, true);
                    this.mImgPng[this.mImgnum] = (BitmapDrawable) compressBitmap(bitmap3);
                    setRotateImgRect(bitmap3, this.mImgBmp[this.mImgnum]);
                    bitmap3.recycle();
                }
            }
        }

        private void setDelay(float time) {
            LOG.verboseFromObjectsClass(">> setDelay()");
            this.mDelay = (int) ((1000.0f * time) / 50.0f);
            this.mDelayCount = 0;
        }

        private boolean delay(float speedrate) {
            LOG.verboseFromObjectsClass(">> delay()");
            int i = this.mDelayCount;
            this.mDelayCount = i + 1;
            return i <= ((int) (((float) this.mDelay) / speedrate));
        }

        public boolean animation(float speedrate, Bitmap[] srcimgbmp, Drawable[] srcimgpng) {
            LOG.verboseFromObjectsClass(">> animation()");
            if (this.mAnim.mTime < 0 || this.mAnim.mTime >= this.mAnim.mOrders.length) {
                return false;
            }
            Animation.Order order = this.mAnim.mOrders[this.mAnim.mTime];
            boolean next = true;
            int totalnum = order.mData.length;
            for (int i = 0; i < totalnum; i++) {
                if (order.mData[i].mType.equals(Animation.TYPE_INITIATE)) {
                    this.mImgnum = order.mData[i].mImgnum;
                    float unitx = Objects.this.mDisplayWidth / 100.0f;
                    int i2 = (int) (order.mData[i].mX * unitx);
                    this.mX = i2;
                    this.mTempX = i2;
                    int i3 = (int) ((Objects.this.mDisplayHeight / 100.0f) * order.mData[i].mY);
                    this.mY = i3;
                    this.mTempY = i3;
                    int width = (int) (order.mData[i].mWidth * unitx);
                    int height = (int) (order.mData[i].mHeight * unitx);
                    int widthhalf = width / 2;
                    int heighthalf = height / 2;
                    int left = this.mX - widthhalf;
                    int top = this.mY - heighthalf;
                    this.mRect.set(left, top, left + width, top + height);
                    this.mWidth = width;
                    this.mHeight = height;
                    this.mAlpha = order.mData[i].mAlpha;
                    this.mPaint.setAlpha(this.mAlpha);
                    int rotate = order.mData[i].mRotate;
                    if (rotate == 0) {
                        this.mRotateWidthRate = 1.0f;
                        this.mRotateHeightRate = 1.0f;
                    }
                    rotate(rotate, srcimgbmp, srcimgpng);
                    order.mData[i].mNext = true;
                } else if (order.mData[i].mType.equals(Animation.TYPE_IMGNUM)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            setImgnum(order.mData[i].mFrom, order.mData[i].mTo, order.mData[i].mNum, order.mData[i].mTime);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!changeImgnum(speedrate)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                } else if (order.mData[i].mType.equals(Animation.TYPE_TRANSFER)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            targeting(order.mData[i].mFromX, order.mData[i].mFromY, order.mData[i].mToX, order.mData[i].mToY, order.mData[i].mTime);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!move(speedrate)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                } else if (order.mData[i].mType.equals(Animation.TYPE_SCAIL)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            setScale(order.mData[i].mFromX, order.mData[i].mFromY, order.mData[i].mToX, order.mData[i].mToY, order.mData[i].mTime);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!scaling(speedrate)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                } else if (order.mData[i].mType.equals(Animation.TYPE_ALPHA)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            setAlpha(order.mData[i].mFrom, order.mData[i].mTo, order.mData[i].mTime);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!changeAlpha(speedrate)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                } else if (order.mData[i].mType.equals(Animation.TYPE_ROTATE)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            setRotate(order.mData[i].mFrom, order.mData[i].mTo, order.mData[i].mDirect, order.mData[i].mTime, srcimgbmp, srcimgpng);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!changeRotate(speedrate, srcimgbmp, srcimgpng)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                } else if (order.mData[i].mType.equals(Animation.TYPE_DELAY)) {
                    switch (order.mData[i].mStep) {
                        case 0:
                            setDelay(order.mData[i].mTime);
                            order.mData[i].mNext = false;
                            order.mData[i].mStep++;
                            order.mData[i].mStepCount = 0;
                            break;
                        case 1:
                            if (!delay(speedrate)) {
                                order.mData[i].mNext = true;
                                order.mData[i].mStep++;
                            }
                            break;
                    }
                }
                if (!order.mData[i].mNext) {
                    next = false;
                }
                if (i == totalnum - 1 && next) {
                    this.mAnim.mTime++;
                }
            }
            return true;
        }

        public void doDraw(Canvas canvas) {
            LOG.verboseFromObjectsClass(">> doDraw()");
            int imgnum = this.mImgnum;
            if (imgnum > -1 && imgnum < 10) {
                if (this.mImgBmp[imgnum] != null) {
                    canvas.drawBitmap(this.mImgBmp[imgnum], (Rect) null, this.mRect, this.mPaint);
                }
                if (this.mImgPng[imgnum] != null) {
                    this.mImgPng[imgnum].setAlpha(this.mAlpha);
                    this.mImgPng[imgnum].setBounds(this.mRect);
                    this.mImgPng[imgnum].draw(canvas);
                }
            }
        }
    }

    public class Animation {
        public static final String DEVIDER = "|";
        public static final String DEVIDER_DATA = "/";
        public static final String DEVIDER_SUB = "&";
        public static final String DEVIDER_SUBDATA = ",";
        public static final String TYPE_ALPHA = "A";
        public static final String TYPE_DELAY = "D";
        public static final String TYPE_IMGNUM = "I";
        public static final String TYPE_INITIATE = "N";
        public static final String TYPE_ROTATE = "R";
        public static final String TYPE_SCAIL = "S";
        public static final String TYPE_TRANSFER = "T";
        public Order[] mOrders;
        public int mTime;
        public int mTimeCount;

        Animation() {
        }

        public void set(Animation animation) {
            LOG.verboseFromObjectsClass(">> set()");
            if (animation.mOrders != null) {
                this.mOrders = new Order[animation.mOrders.length];
                for (int i = 0; i < this.mOrders.length; i++) {
                    this.mOrders[i] = new Order(animation.mOrders[i]);
                }
            }
            this.mTime = animation.mTime;
            this.mTimeCount = animation.mTimeCount;
        }

        public void set(String animdata) {
            String data;
            LOG.verboseFromObjectsClass(">> set()");
            ArrayList<String> list = Objects.this.getSubTexts(animdata, "|");
            int size = list.size();
            this.mOrders = new Order[size];
            for (int i = 0; i < size; i++) {
                ArrayList<String> sublist = Objects.this.getSubTexts(list.get(i), DEVIDER_SUB);
                int subsize = sublist.size();
                this.mOrders[i] = new Order(subsize);
                for (int j = 0; j < subsize; j++) {
                    String data2 = sublist.get(j);
                    if (data2 != null) {
                        this.mOrders[i].mData[j] = Objects.this.new OrderData();
                        ArrayList<String> datalist = Objects.this.getSubTexts(data2, DEVIDER_DATA);
                        try {
                            String data3 = datalist.get(0);
                            if (data3 != null) {
                                this.mOrders[i].mData[j].mType = data3;
                                if (data3.equals(TYPE_INITIATE)) {
                                    String data4 = datalist.get(1);
                                    if (data4 != null) {
                                        this.mOrders[i].mData[j].mImgnum = Integer.parseInt(data4);
                                    }
                                    String data5 = datalist.get(2);
                                    if (data5 != null) {
                                        ArrayList<String> subdatalist = Objects.this.getSubTexts(data5, ",");
                                        String data6 = subdatalist.get(0);
                                        if (data6 != null) {
                                            this.mOrders[i].mData[j].mX = Float.parseFloat(data6);
                                        }
                                        String data7 = subdatalist.get(1);
                                        if (data7 != null) {
                                            this.mOrders[i].mData[j].mY = Float.parseFloat(data7);
                                        }
                                    }
                                    String data8 = datalist.get(3);
                                    if (data8 != null) {
                                        ArrayList<String> subdatalist2 = Objects.this.getSubTexts(data8, ",");
                                        String data9 = subdatalist2.get(0);
                                        if (data9 != null) {
                                            this.mOrders[i].mData[j].mWidth = Float.parseFloat(data9);
                                        }
                                        String data10 = subdatalist2.get(1);
                                        if (data10 != null) {
                                            this.mOrders[i].mData[j].mHeight = Float.parseFloat(data10);
                                        }
                                    }
                                    String data11 = datalist.get(4);
                                    if (data11 != null) {
                                        this.mOrders[i].mData[j].mAlpha = Integer.parseInt(data11);
                                    }
                                    String data12 = datalist.get(5);
                                    if (data12 != null) {
                                        this.mOrders[i].mData[j].mRotate = Integer.parseInt(data12);
                                    }
                                } else if (data3.equals(TYPE_IMGNUM)) {
                                    String data13 = datalist.get(1);
                                    if (data13 != null) {
                                        ArrayList<String> subdatalist3 = Objects.this.getSubTexts(data13, ",");
                                        String data14 = subdatalist3.get(0);
                                        if (data14 != null) {
                                            this.mOrders[i].mData[j].mFrom = Integer.parseInt(data14);
                                        }
                                        String data15 = subdatalist3.get(1);
                                        if (data15 != null) {
                                            this.mOrders[i].mData[j].mTo = Integer.parseInt(data15);
                                        }
                                    }
                                    String data16 = datalist.get(2);
                                    if (data16 != null) {
                                        this.mOrders[i].mData[j].mNum = Integer.parseInt(data16);
                                    }
                                    String data17 = datalist.get(3);
                                    if (data17 != null) {
                                        this.mOrders[i].mData[j].mTime = Float.parseFloat(data17);
                                    }
                                } else if (data3.equals(TYPE_TRANSFER)) {
                                    String data18 = datalist.get(1);
                                    if (data18 != null) {
                                        ArrayList<String> subdatalist4 = Objects.this.getSubTexts(data18, ",");
                                        String data19 = subdatalist4.get(0);
                                        if (data19 != null) {
                                            this.mOrders[i].mData[j].mFromX = Float.parseFloat(data19);
                                        }
                                        String data20 = subdatalist4.get(1);
                                        if (data20 != null) {
                                            this.mOrders[i].mData[j].mFromY = Float.parseFloat(data20);
                                        }
                                    }
                                    String data21 = datalist.get(2);
                                    if (data21 != null) {
                                        ArrayList<String> subdatalist5 = Objects.this.getSubTexts(data21, ",");
                                        String data22 = subdatalist5.get(0);
                                        if (data22 != null) {
                                            this.mOrders[i].mData[j].mToX = Float.parseFloat(data22);
                                        }
                                        String data23 = subdatalist5.get(1);
                                        if (data23 != null) {
                                            this.mOrders[i].mData[j].mToY = Float.parseFloat(data23);
                                        }
                                    }
                                    String data24 = datalist.get(3);
                                    if (data24 != null) {
                                        this.mOrders[i].mData[j].mTime = Float.parseFloat(data24);
                                    }
                                } else if (data3.equals(TYPE_SCAIL)) {
                                    String data25 = datalist.get(1);
                                    if (data25 != null) {
                                        ArrayList<String> subdatalist6 = Objects.this.getSubTexts(data25, ",");
                                        String data26 = subdatalist6.get(0);
                                        if (data26 != null) {
                                            this.mOrders[i].mData[j].mFromX = Float.parseFloat(data26);
                                        }
                                        String data27 = subdatalist6.get(1);
                                        if (data27 != null) {
                                            this.mOrders[i].mData[j].mFromY = Float.parseFloat(data27);
                                        }
                                    }
                                    String data28 = datalist.get(2);
                                    if (data28 != null) {
                                        ArrayList<String> subdatalist7 = Objects.this.getSubTexts(data28, ",");
                                        String data29 = subdatalist7.get(0);
                                        if (data29 != null) {
                                            this.mOrders[i].mData[j].mToX = Float.parseFloat(data29);
                                        }
                                        String data30 = subdatalist7.get(1);
                                        if (data30 != null) {
                                            this.mOrders[i].mData[j].mToY = Float.parseFloat(data30);
                                        }
                                    }
                                    String data31 = datalist.get(3);
                                    if (data31 != null) {
                                        this.mOrders[i].mData[j].mTime = Float.parseFloat(data31);
                                    }
                                } else if (data3.equals(TYPE_ALPHA)) {
                                    String data32 = datalist.get(1);
                                    if (data32 != null) {
                                        ArrayList<String> subdatalist8 = Objects.this.getSubTexts(data32, ",");
                                        String data33 = subdatalist8.get(0);
                                        if (data33 != null) {
                                            this.mOrders[i].mData[j].mFrom = Integer.parseInt(data33);
                                        }
                                        String data34 = subdatalist8.get(1);
                                        if (data34 != null) {
                                            this.mOrders[i].mData[j].mTo = Integer.parseInt(data34);
                                        }
                                    }
                                    String data35 = datalist.get(2);
                                    if (data35 != null) {
                                        this.mOrders[i].mData[j].mTime = Float.parseFloat(data35);
                                    }
                                } else if (data3.equals(TYPE_ROTATE)) {
                                    String data36 = datalist.get(1);
                                    if (data36 != null) {
                                        ArrayList<String> subdatalist9 = Objects.this.getSubTexts(data36, ",");
                                        String data37 = subdatalist9.get(0);
                                        if (data37 != null) {
                                            this.mOrders[i].mData[j].mFrom = Integer.parseInt(data37);
                                        }
                                        String data38 = subdatalist9.get(1);
                                        if (data38 != null) {
                                            this.mOrders[i].mData[j].mTo = Integer.parseInt(data38);
                                        }
                                    }
                                    String data39 = datalist.get(2);
                                    if (data39 != null) {
                                        this.mOrders[i].mData[j].mDirect = data39.equals("+");
                                    }
                                    String data40 = datalist.get(3);
                                    if (data40 != null) {
                                        this.mOrders[i].mData[j].mTime = Float.parseFloat(data40);
                                    }
                                } else if (data3.equals(TYPE_DELAY) && (data = datalist.get(1)) != null) {
                                    this.mOrders[i].mData[j].mTime = Float.parseFloat(data);
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                }
            }
        }

        public void initiateData() {
            LOG.verboseFromObjectsClass(">> initiateData()");
            this.mTime = 0;
            int totalnum = this.mOrders.length;
            for (int i = 0; i < totalnum; i++) {
                Order order = this.mOrders[i];
                int datatotalnum = order.mData.length;
                for (int j = 0; j < datatotalnum; j++) {
                    order.mData[j].mStep = 0;
                }
            }
        }

        class Order {
            public OrderData[] mData;

            public Order(int size) {
                LOG.verboseFromObjectsClass(">> Order()");
                this.mData = new OrderData[size];
            }

            public Order(Order order) {
                LOG.verboseFromObjectsClass(">> Order()");
                this.mData = new OrderData[order.mData.length];
                set(order);
            }

            public void set(Order order) {
                LOG.verboseFromObjectsClass(">> Order()");
                for (int i = 0; i < this.mData.length; i++) {
                    this.mData[i] = Objects.this.new OrderData(order.mData[i]);
                }
            }
        }
    }

    class OrderData {
        public int mAlpha;
        public boolean mDirect;
        public int mFrom;
        public float mFromX;
        public float mFromY;
        public float mHeight;
        public int mImgnum;
        public boolean mNext;
        public int mNum;
        public int mRotate;
        public int mStep;
        public int mStepCount;
        public float mTime;
        public int mTo;
        public float mToX;
        public float mToY;
        public String mType;
        public float mWidth;
        public float mX;
        public float mY;

        public OrderData() {
            LOG.verboseFromObjectsClass(">> OrderData()");
        }

        public OrderData(OrderData orderdata) {
            LOG.verboseFromObjectsClass(">> OrderData()");
            set(orderdata);
        }

        public void set(OrderData orderdata) {
            LOG.verboseFromObjectsClass(">> set()");
            this.mType = orderdata.mType;
            this.mImgnum = orderdata.mImgnum;
            this.mAlpha = orderdata.mAlpha;
            this.mRotate = orderdata.mRotate;
            this.mX = orderdata.mX;
            this.mY = orderdata.mY;
            this.mWidth = orderdata.mWidth;
            this.mHeight = orderdata.mHeight;
            this.mFromX = orderdata.mFromX;
            this.mFromY = orderdata.mFromY;
            this.mToX = orderdata.mToX;
            this.mToY = orderdata.mToY;
            this.mFrom = orderdata.mFrom;
            this.mTo = orderdata.mTo;
            this.mNum = orderdata.mNum;
            this.mDirect = orderdata.mDirect;
            this.mTime = orderdata.mTime;
            this.mStep = orderdata.mStep;
            this.mStepCount = orderdata.mStepCount;
            this.mNext = orderdata.mNext;
        }
    }

    public void saveChracters(DBAdapter dbadapter, String nickname) {
        LOG.verboseFromObjectsClass(">> saveChracters()");
        int[] intvalues = {0, this.mCharacter[0].mBodyNum, 0};
        String[] strvalues = new String[2];
        strvalues[0] = nickname;
        dbadapter.updateCharacters(0L, intvalues, strvalues);
    }

    public void loadChracters(DBAdapter dbadapter) {
        LOG.verboseFromObjectsClass(">> loadChracters()");
        Cursor c = dbadapter.fetchCharacters(0L);
        if (c != null) {
            if (c.getCount() != 0) {
                this.mCharacter[0].mName = c.getString(c.getColumnIndexOrThrow(DBAdapter.FIELD_CHARACTERS_NAME));
                this.mCharacter[0].mBodyType = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_CHARACTERS_BODYTYPE));
                this.mCharacter[0].mBodyNum = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_CHARACTERS_BODYNUM));
                this.mCharacter[0].mFaceImgnum = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_CHARACTERS_FACEIMGNUM));
                this.mCharacter[0].mFaceImgPath = c.getString(c.getColumnIndexOrThrow(DBAdapter.FIELD_CHARACTERS_FACEIMGPATH));
            }
            c.close();
        }
    }

    public void loadCharactersImage(Context context) {
        LOG.verboseFromObjectsClass(">> loadCharactersImage()");
        int length = this.mCharacter.length;
        for (int i = 0; i < length; i++) {
            this.mCharacter[i].loadImage(context);
        }
    }

    public void setCharactersImgnum(int imgnum) {
        LOG.verboseFromObjectsClass(">> setCharactersImgnum()");
        int length = this.mCharacter.length;
        for (int i = 0; i < length; i++) {
            this.mCharacter[i].setImgnum(imgnum);
        }
    }

    private void createCharacterData() {
        LOG.verboseFromObjectsClass(">> createCharacterData()");
        mCharacterDatas = new CharacterData[4];
        mCharacterDatas[0] = new CharacterData(3, 3);
        int[] joinimgids = {R.drawable.join_charac_1, R.drawable.join_charac_2, R.drawable.join_charac_3};
        int[] bodyimgids = {R.drawable.charac_1_body_0, R.drawable.charac_2_body_0, R.drawable.charac_3_body_0};
        int[] headimgids = {R.drawable.charac2_1_head_0, R.drawable.charac2_2_head_0, R.drawable.charac2_3_head_0};
        int[] normalactionimgids = {R.drawable.charac_1_pose_1_0, R.drawable.charac_2_pose_1_0, R.drawable.charac_3_pose_1_0};
        int[] readyactionimgids = {R.drawable.charac_1_pose_2_0, R.drawable.charac_2_pose_2_0, R.drawable.charac_3_pose_2_0};
        int[] winactionimgids = {R.drawable.charac_1_pose_3_0, R.drawable.charac_2_pose_3_0, R.drawable.charac_3_pose_3_0};
        mCharacterDatas[0].mJoinImgIds = joinimgids;
        mCharacterDatas[0].mBodyImgIds = bodyimgids;
        mCharacterDatas[0].mHeadImgIds = headimgids;
        mCharacterDatas[0].mNormalActionImgIds = normalactionimgids;
        mCharacterDatas[0].mReadyActionImgIds = readyactionimgids;
        mCharacterDatas[0].mWinActionImgIds = winactionimgids;
        mCharacterDatas[1] = new CharacterData(1, 1);
        int[] aibodyimgids = {R.drawable.charac_0_body_0};
        int[] aiheadimgids = {R.drawable.charac2_0_head_0};
        int[] ainormalactionimgids = {R.drawable.charac_0_pose_1_0};
        int[] aireadyactionimgids = {R.drawable.charac_0_pose_2_0};
        mCharacterDatas[1].mBodyImgIds = aibodyimgids;
        mCharacterDatas[1].mHeadImgIds = aiheadimgids;
        mCharacterDatas[1].mNormalActionImgIds = ainormalactionimgids;
        mCharacterDatas[1].mReadyActionImgIds = aireadyactionimgids;
        mCharacterDatas[2] = new CharacterData(20, 0);
        mCharacterDatas[3] = new CharacterData(20, 0);
    }

    class CharacterData {
        public int[] mBodyImgIds;
        public String[] mBodyImgPaths;
        public int[] mHeadImgIds;
        public String[] mHeadImgPaths;
        public int[] mJoinImgIds;
        public String[] mJoinImgPaths;
        public int[] mNormalActionImgIds;
        public String[] mNormalActionImgPaths;
        public int[] mReadyActionImgIds;
        public String[] mReadyActionImgPaths;
        public int mTotalnum;
        public int[] mWinActionImgIds;
        public String[] mWinActionImgPaths;

        public CharacterData(int size, int totalnum) {
            LOG.verboseFromObjectsClass(">> CharacterData()");
            this.mJoinImgIds = new int[size];
            this.mBodyImgIds = new int[size];
            this.mHeadImgIds = new int[size];
            this.mNormalActionImgIds = new int[size];
            this.mReadyActionImgIds = new int[size];
            this.mWinActionImgIds = new int[size];
            Arrays.fill(this.mJoinImgIds, 0);
            Arrays.fill(this.mBodyImgIds, 0);
            Arrays.fill(this.mHeadImgIds, 0);
            Arrays.fill(this.mNormalActionImgIds, 0);
            Arrays.fill(this.mReadyActionImgIds, 0);
            Arrays.fill(this.mWinActionImgIds, 0);
            this.mJoinImgPaths = new String[size];
            this.mBodyImgPaths = new String[size];
            this.mHeadImgPaths = new String[size];
            this.mNormalActionImgPaths = new String[size];
            this.mReadyActionImgPaths = new String[size];
            this.mWinActionImgPaths = new String[size];
            Arrays.fill(this.mJoinImgPaths, (Object) null);
            Arrays.fill(this.mBodyImgPaths, (Object) null);
            Arrays.fill(this.mHeadImgPaths, (Object) null);
            Arrays.fill(this.mNormalActionImgPaths, (Object) null);
            Arrays.fill(this.mReadyActionImgPaths, (Object) null);
            Arrays.fill(this.mWinActionImgPaths, (Object) null);
            this.mTotalnum = totalnum;
        }
    }

    class Character {
        public static final int ANIM_START_END = -1;
        public static final int ANIM_START_FLICKER = 0;
        public static final int CHARACTER_IMAGE_TOTALNUM = 4;
        public static final int IMAGE_HEAD = 3;
        public static final int IMAGE_NORMAL = 0;
        public static final int IMAGE_READY = 1;
        public static final int IMAGE_WIN = 2;
        public int[] mAlpha;
        public int mBodyNum;
        public int mBodyType;
        public String mFaceImgPath;
        public int mFaceImgnum;
        public Drawable[] mImgPng;
        public int mImgnum;
        public String mName;
        public Rect[] mRect;
        public int mTime;
        public int mTimeCount;
        public int mTimeCount1;

        public Character(Context context, int bodytype, int bodynum, int facenum) {
            LOG.verboseFromObjectsClass(">> Character()");
            this.mImgPng = new Drawable[4];
            this.mRect = new Rect[4];
            for (int i = 0; i < 4; i++) {
                this.mRect[i] = new Rect();
            }
            this.mTime = -1;
            this.mAlpha = new int[4];
            Arrays.fill(this.mAlpha, -1);
            this.mFaceImgPath = null;
            this.mFaceImgnum = facenum;
            this.mBodyType = bodytype;
            this.mBodyNum = bodynum;
            this.mName = "AI";
            setImgnum(0);
        }

        public void setImgnum(int imgnum) {
            LOG.verboseFromObjectsClass(">> setImgnum()");
            int preimgnum = this.mImgnum;
            if (preimgnum > -1 && preimgnum < 4) {
                this.mRect[imgnum].set(this.mRect[preimgnum]);
                this.mAlpha[imgnum] = this.mAlpha[preimgnum];
            }
            this.mImgnum = imgnum;
        }

        public void setRect(int left, int top, int right, int bottom) {
            LOG.verboseFromObjectsClass(">> setRect()");
            this.mRect[this.mImgnum].set(left, top, right, bottom);
        }

        public Rect getRect() {
            LOG.verboseFromObjectsClass(">> getRect()");
            return this.mRect[this.mImgnum];
        }

        public void setAlpha(int alpha) {
            LOG.verboseFromObjectsClass(">> setAlpha()");
            this.mAlpha[this.mImgnum] = alpha;
        }

        public int getAlpha() {
            LOG.verboseFromObjectsClass(">> getAlpha()");
            return this.mAlpha[this.mImgnum];
        }

        public void loadImage(Context context) {
            Drawable bodyimg;
            Drawable faceimg;
            Drawable faceimg2;
            Drawable headimg;
            LOG.verboseFromObjectsClass(">> loadImage()");
            float widthrate = Objects.this.mDisplayWidth / 1280.0f;
            float heightrate = Objects.this.mDisplayHeight / 800.0f;
            int index = this.mBodyNum;
            CharacterData data = Objects.mCharacterDatas[this.mBodyType];
            if (data.mBodyImgPaths[index] == null) {
                bodyimg = context.getResources().getDrawable(data.mBodyImgIds[index]);
            } else {
                bodyimg = Drawable.createFromPath(data.mBodyImgPaths[index]);
            }
            if (this.mFaceImgPath == null) {
                if (data.mBodyImgPaths[index] == null) {
                    faceimg = context.getResources().getDrawable(Objects.this.mBodyFaceImgIds[this.mFaceImgnum]);
                } else {
                    faceimg = Drawable.createFromPath(Objects.this.mBodyFaceImgPaths[this.mFaceImgnum]);
                }
            } else {
                faceimg = Drawable.createFromPath(this.mFaceImgPath);
            }
            Drawable poseimg = null;
            if (data.mNormalActionImgPaths[index] == null) {
                if (data.mNormalActionImgIds[index] != 0) {
                    poseimg = context.getResources().getDrawable(data.mNormalActionImgIds[index]);
                }
            } else {
                poseimg = Drawable.createFromPath(data.mNormalActionImgPaths[index]);
            }
            if (poseimg != null) {
                this.mImgPng[0] = compressBitmap(drawImg(bodyimg, poseimg, faceimg, widthrate, heightrate));
            }
            Drawable poseimg2 = null;
            if (data.mReadyActionImgPaths[index] == null) {
                if (data.mReadyActionImgIds[index] != 0) {
                    poseimg2 = context.getResources().getDrawable(data.mReadyActionImgIds[index]);
                }
            } else {
                poseimg2 = Drawable.createFromPath(data.mReadyActionImgPaths[index]);
            }
            if (poseimg2 != null) {
                this.mImgPng[1] = compressBitmap(drawImg(bodyimg, poseimg2, faceimg, widthrate, heightrate));
            }
            Drawable poseimg3 = null;
            if (data.mWinActionImgPaths[index] == null) {
                if (data.mWinActionImgIds[index] != 0) {
                    poseimg3 = context.getResources().getDrawable(data.mWinActionImgIds[index]);
                }
            } else {
                poseimg3 = Drawable.createFromPath(data.mWinActionImgPaths[index]);
            }
            if (poseimg3 != null) {
                this.mImgPng[2] = compressBitmap(drawImg(bodyimg, poseimg3, faceimg, widthrate, heightrate));
            }
            if (this.mFaceImgPath == null) {
                if (data.mBodyImgPaths[index] == null) {
                    faceimg2 = context.getResources().getDrawable(Objects.this.mHeadFaceImgIds[this.mFaceImgnum]);
                } else {
                    faceimg2 = Drawable.createFromPath(Objects.this.mHeadFaceImgPaths[this.mFaceImgnum]);
                }
            } else {
                faceimg2 = Drawable.createFromPath(this.mFaceImgPath);
            }
            if (data.mHeadImgPaths[index] == null) {
                headimg = context.getResources().getDrawable(data.mHeadImgIds[index]);
            } else {
                headimg = Drawable.createFromPath(data.mHeadImgPaths[index]);
            }
            Bitmap bitmap = drawImg(headimg, faceimg2, widthrate, heightrate);
            this.mImgPng[3] = compressBitmap(bitmap);
            if (bitmap != null) {
                bitmap.recycle();
            }
        }

        private Bitmap drawImg(Drawable bodyimg, Drawable poseimg, Drawable faceimg, float widthrate, float heightrate) {
            LOG.verboseFromObjectsClass(">> drawImg()");
            int imgwidth = (int) (360.0f * widthrate);
            int imgheight = (int) (500.0f * heightrate);
            Bitmap bitmap = Bitmap.createBitmap(imgwidth, imgheight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmap);
            faceimg.setBounds((int) (113.0f * widthrate), (int) (84.0f * heightrate), (int) (249.0f * widthrate), (int) (206.0f * heightrate));
            faceimg.draw(canvas);
            bodyimg.setBounds(0, 0, imgwidth, imgheight);
            bodyimg.draw(canvas);
            poseimg.setBounds(0, 0, imgwidth, (int) (396.0f * heightrate));
            poseimg.draw(canvas);
            return bitmap;
        }

        private Bitmap drawImg(Drawable headimg, Drawable faceimg, float widthrate, float heightrate) {
            LOG.verboseFromObjectsClass(">> drawImg()");
            int imgwidth = (int) (135.0f * widthrate);
            int imgheight = (int) (112.0f * heightrate);
            Bitmap bitmap = Bitmap.createBitmap(imgwidth, imgheight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmap);
            faceimg.setBounds((int) (22.0f * widthrate), (int) (31.0f * heightrate), (int) (104.0f * widthrate), (int) (104.0f * heightrate));
            faceimg.draw(canvas);
            headimg.setBounds(0, 0, imgwidth, imgheight);
            headimg.draw(canvas);
            return bitmap;
        }

        private Drawable compressBitmap(Bitmap bitmap) {
            LOG.verboseFromObjectsClass(">> compressBitmap()");
            ByteArrayOutputStream bytearray = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, bytearray);
            ByteArrayInputStream in = new ByteArrayInputStream(bytearray.toByteArray());
            return Drawable.createFromStream(in, GameActivity.JSON_NAME_IMAGES_IMG);
        }

        public void animation(float speedrate) {
            LOG.verboseFromObjectsClass(">> animation()");
            switch (this.mTime) {
                case 0:
                    this.mAlpha[this.mImgnum] = 250;
                    this.mTimeCount = 0;
                    this.mTimeCount1 = 0;
                    this.mTime++;
                    break;
                case 1:
                    int i = this.mTimeCount;
                    this.mTimeCount = i + 1;
                    if (i < 10.0f / speedrate) {
                        int alpha = this.mAlpha[this.mImgnum] - ((int) (25.0f * speedrate));
                        if (alpha > 0) {
                            this.mAlpha[this.mImgnum] = alpha;
                        } else {
                            this.mAlpha[this.mImgnum] = 0;
                        }
                    } else {
                        int i2 = this.mTimeCount;
                        this.mTimeCount = i2 + 1;
                        if (i2 < 20.0f / speedrate) {
                            int alpha2 = this.mAlpha[this.mImgnum] + ((int) (25.0f * speedrate));
                            if (alpha2 < 250) {
                                this.mAlpha[this.mImgnum] = alpha2;
                            } else {
                                this.mAlpha[this.mImgnum] = 0;
                            }
                        } else {
                            this.mTimeCount = 0;
                            int i3 = this.mTimeCount1;
                            this.mTimeCount1 = i3 + 1;
                            if (i3 > 5) {
                                this.mAlpha[this.mImgnum] = -1;
                                this.mTimeCount1 = 0;
                                this.mTime = -1;
                            }
                        }
                    }
                    break;
            }
        }

        public void doDraw(Canvas canvas) {
            LOG.verboseFromObjectsClass(">> doDraw()");
            if (this.mImgnum > -1 && this.mImgnum < 4 && this.mImgPng[this.mImgnum] != null) {
                this.mImgPng[this.mImgnum].setAlpha(this.mAlpha[this.mImgnum]);
                this.mImgPng[this.mImgnum].setBounds(this.mRect[this.mImgnum]);
                this.mImgPng[this.mImgnum].draw(canvas);
            }
        }
    }
}
