package com.findit.battle;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.findit.battle.Items;
import com.findit.battle.Objects;
import com.findit.battle.finals.LOG;
import com.findit.battle.iap.activity.InAppBillingActivity;
import com.findit.battle.iap.util.IabHelper;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.OnInAppListener;
import com.kt.olleh.inapp.net.InAppError;
import com.kt.olleh.inapp.net.NetError;
import com.kt.olleh.inapp.net.Response;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class InventoryActivity_Google extends InAppBillingActivity {
    private static final int ANIMAION_DOWN = 0;
    private static final int ANIMAION_SCALE = 2;
    private static final int ANIMAION_UP = 1;
    private static final int BERRYSLOT_RECT = 2;
    private static final String CHARACTER_FILENAME = "/CharacterImage";
    private static final String ITEM_ID_COIN1000 = "000001005358";
    private static final String ITEM_ID_COIN2500 = "000001005359";
    private static final String ITEM_ID_COIN5500 = "000001005360";
    private static final String ITEM_ID_COIN8500 = "000001005361";
    private static final String[] ITEM_ID_COIN_COLLECTION = {"000001005358", "000001005359", "000001005360", "000001005361"};
    private static final String JSON_NAME_RESULT = "result";
    private static final String JSON_VALUE_RESULT_PASS = "000";
    public static final String KEY_ACTIONIMGID = "actionimgid";
    public static final String KEY_ACTIONIMGPATH = "actionimgpath";
    public static final String KEY_BODYIMGID = "bodyimgid";
    public static final String KEY_BODYIMGPATH = "bodyimgpath";
    public static final String KEY_COIN = "coin";
    public static final String KEY_DISPLAYHEIGHT = "displayheight";
    public static final String KEY_DISPLAYWIDTH = "displaywidth";
    public static final String KEY_FACEIMGID = "faceimgid";
    public static final String KEY_FACEIMGPATH = "faceimgpath";
    public static final String KEY_LEVEL = "level";
    public static final String KEY_LOGIN = "login";
    public static final String KEY_POINT = "point";
    public static final String KEY_SCORE = "score";
    public static final String KEY_SOUNDON = "soundon";
    private static final int MENUSLOTWINDOW_COLUM = 3;
    private static final int MENUSLOTWINDOW_ROW = 2;
    private static final String PARAMETER_COIN = "coin";
    private static final String PARAMETER_ID = "userId";
    private static final String PARAMETER_ITMENO = "itemNo";
    private static final String PARAMETER_POINT = "point";
    private static final String PARAMETER_QUANTITY = "quantity";
    private static final String PARAMETER_SKILLID = "skillId";
    private static final int PENSLOT_RECT = 0;
    private static final int POTIONSLOT_RECT = 3;
    private static final int REQUEST_ALBUM = 200;
    private static final int REQUEST_CAMERA = 100;
    public static final int REQUEST_CROP = 300;
    private static final int RINGSLOT_RECT = 1;
    private static final String SERVER_DOMAIN = Property.SERVER_DOMAIN;
    private static final String SERVER_FILE_ADDCOIN = "app/member/addCoin.json";
    private static final String SERVER_FILE_BUYITEM = "app/member/buyItemAndSpendCoin.json";
    private static final String SERVER_FILE_LEARNSKILL = "app/member/buySkillAndSpendPoint.json";
    private static final String SERVER_FILE_SPENDCOIN = "app/member/spendCoin.json";
    private static final int SLOTIMAGE_ALPHA = 220;
    private static final int SLOTWINDOW_COLUM = 5;
    private static final int SLOTWINDOW_ROW = 3;
    public static final int SOUND_SHOPPAGE = 0;
    private static final float SOUND_VOLUME = 0.5f;
    private static final int TAB_ACTIVE = 0;
    private static final int TAB_INACTIVE = 1;
    private static final int TAB_ITEM = 0;
    private static final int TAB_SHOP = 1;
    private static final int TAB_SKILL = 2;
    private Drawable mActionImg;
    int mActionImgId;
    String mActionImgPath;
    private Animation[] mAnimation;
    private int mAttack;
    private TextView mAttackTextView;
    private Drawable mBodyImg;
    int mBodyImgId;
    String mBodyImgPath;
    private Dialog mBuyItemDlg;
    private ImageView mBuyItemImageView;
    private String mBuyItemText;
    private String mBuyItemText1;
    private TextView mBuyItemTextView;
    private Dialog mBuyListDlg;
    private String mBuyListTitleText;
    private TextView mBuyListTitleTextView;
    private ListView mBuyListView;
    private ImageView mCharacterImageView;
    private long mCoin;
    private TextView mCoinNumTextView;
    private CommonDialog mCommonDialog;
    private ConnectNetwork mConnectNetwork;
    private Drawable mCoverImg;
    private String mCutImagePath;
    private DBAdapter mDbhelper;
    private int mDefense;
    private TextView mDefenseTextView;
    private Dialog mDeleteItemDlg;
    private ImageView mDeleteItemImageView;
    private TextView mExplainTextView;
    private Drawable mFaceImg;
    int mFaceImgId;
    String mFaceImgPath;
    private float mFirstTouchX;
    private float mFirstTouchY;
    private float mHeightRate;
    private RelativeLayout mItemLayout;
    private Button mItemTabButton;
    private BitmapDrawable[] mItemTabImg;
    private Items mItems;
    private Dialog mLearnSkillDlg;
    private ImageView mLearnSkillImageView;
    private String mLearnSkillText;
    private TextView mLearnSkillTextView;
    private int mLevel;
    private int[] mLevelScoreTable;
    private TextView mLevelTextView;
    private boolean mLoadingView;
    private MoveView mMoveItemView;
    private float mMoveStandard;
    private int mPoint;
    private String mPurchaseId;
    private String[] mPurchaseItemKey;
    private HashMap<String, Items.Item> mPurchaseItemMap;
    private long mScore;
    private TextView mScoreTextView;
    private int[] mSetItemTypeTable;
    private RelativeLayout[] mSetSlotsLayout;
    private TextView mShopCoinNumTextView;
    private TextView mShopExplainTextView;
    private int mShopItemSlotNum;
    private int mShopItemSlotWindowNum;
    private int mShopItemSlotWindowTotalNum;
    private int mShopItemSlotWindowWidth;
    private RelativeLayout[] mShopItemSlotsLayout;
    private HorizontalScrollView mShopItemSlotsScrollView;
    private int mShopItemTypeSlotNum;
    private RelativeLayout mShopLayout;
    private TextView mShopLevelTextView;
    private TextView mShopScoreTextView;
    private RelativeLayout[] mShopSlotsLayout;
    private Button mShopTabButton;
    private BitmapDrawable[] mShopTabImg;
    private TextView mSkillExplainTextView;
    private RelativeLayout mSkillLayout;
    private TextView mSkillPointNumTextView;
    private int mSkillSlotNum;
    private int mSkillSlotWindowNum;
    private int mSkillSlotWindowTotalNum;
    private int mSkillSlotWindowWidth;
    private RelativeLayout[] mSkillSlotsLayout;
    private HorizontalScrollView mSkillSlotsScrollView;
    private Button mSkillTabButton;
    private BitmapDrawable[] mSkillTabImg;
    private Objects.Skills mSkills;
    private int mSlotNum;
    private int mSlotWindowNum;
    private int mSlotWindowTotalNum;
    private int mSlotWindowWidth;
    private int mSlotWindowX;
    private int mSlotWindowY;
    private RelativeLayout[] mSlotsLayout;
    private HorizontalScrollView mSlotsScrollView;
    private boolean mSoundon;
    private int mTabNum;
    private String mUserId;
    private float mWidthRate;
    public HashMap<Integer, Integer> mSoundPoolMap = null;
    public SoundPool mSoundpool = null;
    OnInAppListener mInAPInformationListener = new OnInAppListener() { // from class: com.findit.battle.InventoryActivity_Google.1
        public void OnResultPurchase(String tr_id) {
            LOG.verbose(">> OnResultPurchase()");
            InventoryActivity_Google.this.applyPurchaseItem((Items.Item) InventoryActivity_Google.this.mPurchaseItemMap.get(tr_id));
            Toast.makeText(InventoryActivity_Google.this.getApplicationContext(), "결제 완료", 0).show();
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultAPI(String api, Response data) {
            LOG.verbose(">> OnResultAPI()");
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnError(String errorCode, String msg) {
            LOG.verbose(">> OnError()");
            Toast.makeText(InventoryActivity_Google.this.getApplicationContext(), msg, 0).show();
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultOLDAPI(String code, String message) {
            LOG.verbose(">> OnResultOLDAPI()");
            Toast.makeText(InventoryActivity_Google.this.getApplicationContext(), String.valueOf(code) + " : " + message, 0).show();
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultFileURL(String code, String url) {
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultPurchase(String arg0, String arg1, String arg2) {
        }
    };
    public Handler mBuyResultHandler = new Handler() { // from class: com.findit.battle.InventoryActivity_Google.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            String data;
            LOG.verbose(">> mBuyResultHandler::handleMessage()");
            InventoryActivity_Google.this.mCommonDialog.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (!value) {
                InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.notice_msg_buyfail);
                return;
            }
            JSONObject jsonobject = InventoryActivity_Google.this.mConnectNetwork.getJSONObject();
            if (jsonobject != null) {
                try {
                    String result = jsonobject.getString("result");
                    if (result.equals("000") && (data = msg.getData().getString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING)) != null) {
                        String[] datas = data.split(",");
                        int type = Integer.parseInt(datas[0]);
                        int subtype = Integer.parseInt(datas[1]);
                        Items.Item typeitem = InventoryActivity_Google.this.mItems.mTypeItem[type].mSubItem[subtype];
                        ImageView imageview = (ImageView) InventoryActivity_Google.this.mShopItemSlotsLayout[subtype].getChildAt(0);
                        imageview.startAnimation(InventoryActivity_Google.this.mAnimation[2]);
                        Items.Item item = InventoryActivity_Google.this.mItems.checkOverlap(type, subtype);
                        if (item == null) {
                            Items.Item item2 = InventoryActivity_Google.this.mItems.createItem(type, subtype);
                            InventoryActivity_Google.this.setItemSlot(item2);
                            InventoryActivity_Google.this.calculateCoin(item2.mPrice);
                            return;
                        }
                        item.mNum += typeitem.mNum;
                        if (item.mNum > 99) {
                            item.mNum = 99;
                        }
                        if (item.mSet) {
                            InventoryActivity_Google.this.setItemSetSlot(type, item);
                        } else if (item.mSlotnum > -1) {
                            InventoryActivity_Google.this.setItemSlot(item.mSlotnum, item);
                        }
                        InventoryActivity_Google.this.calculateCoin(item.mPrice);
                    }
                } catch (JSONException e) {
                    InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(InventoryActivity_Google.this.getApplicationContext(), R.string.notice_msg_buyfail, "[1]");
                }
            }
        }
    };
    public Handler mLearnResultHandler = new Handler() { // from class: com.findit.battle.InventoryActivity_Google.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            String data;
            LOG.verbose(">> mLearnResultHandler::handleMessage()");
            InventoryActivity_Google.this.mCommonDialog.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (!value) {
                InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.notice_msg_buyfail);
                return;
            }
            JSONObject jsonobject = InventoryActivity_Google.this.mConnectNetwork.getJSONObject();
            if (jsonobject != null) {
                try {
                    String result = jsonobject.getString("result");
                    if (result.equals("000") && (data = msg.getData().getString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING)) != null) {
                        int index = Integer.parseInt(data);
                        ImageView imageview = (ImageView) InventoryActivity_Google.this.mSkillSlotsLayout[index].getChildAt(0);
                        imageview.setImageDrawable(null);
                        imageview.startAnimation(InventoryActivity_Google.this.mAnimation[2]);
                        InventoryActivity_Google.this.mSkills.mSkill[index].mBuy = true;
                        InventoryActivity_Google.this.mSkills.mSkill[index].mSetNum = -1;
                        InventoryActivity_Google.this.mSkills.mSkill[index].mNum = InventoryActivity_Google.this.mSkills.getEmptySlotNum();
                        InventoryActivity_Google.this.mPoint -= InventoryActivity_Google.this.mSkills.mSkill[index].mPoint;
                        InventoryActivity_Google.this.mSkillPointNumTextView.setText(new StringBuilder().append(InventoryActivity_Google.this.mPoint).toString());
                        InventoryActivity_Google.this.setSkillSlot(index);
                    }
                } catch (JSONException e) {
                    InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(InventoryActivity_Google.this.getApplicationContext(), R.string.notice_msg_buyfail, "[1]");
                }
            }
        }
    };
    public Handler mCoinResultHandler = new Handler() { // from class: com.findit.battle.InventoryActivity_Google.4
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            String data;
            LOG.verbose(">> mCoinResultHandler::handleMessage()");
            InventoryActivity_Google.this.mCommonDialog.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = InventoryActivity_Google.this.mConnectNetwork.getJSONObject();
                try {
                    String result = jsonobject.getString("result");
                    if (result == null) {
                        InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(InventoryActivity_Google.this, R.string.notice_msg_networkfail, "[0]");
                    } else if (result.equals("000") && (data = msg.getData().getString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING)) != null) {
                        InventoryActivity_Google.this.calculateCoin(Integer.parseInt(data));
                    }
                } catch (JSONException e) {
                    InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(InventoryActivity_Google.this.getApplicationContext(), R.string.notice_msg_networkfail, "[1]");
                }
            }
        }
    };

    @Override // com.findit.battle.iap.activity.InAppBillingActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LOG.verbose(">> onCreate()");
        requestWindowFeature(1);
        setContentView(R.layout.inventory);
        getWindow().setLayout(FindItApplication.getDisplayScreenWidth(), FindItApplication.getDisplayScreenHeight());
        setVolumeControlStream(3);
        this.mCommonDialog = new CommonDialog(this);
        this.mBuyListTitleText = getResources().getString(R.string.buylist_title);
        this.mLevelScoreTable = getResources().getIntArray(R.array.level_score);
        this.mCharacterImageView = (ImageView) findViewById(R.id.CharacterImageView);
        this.mAttackTextView = (TextView) findViewById(R.id.AttackTextView);
        this.mDefenseTextView = (TextView) findViewById(R.id.DefenseTextView);
        this.mLevelTextView = (TextView) findViewById(R.id.LevelTextView);
        this.mShopLevelTextView = (TextView) findViewById(R.id.ShopLevelTextView);
        this.mScoreTextView = (TextView) findViewById(R.id.ScoreTextView);
        this.mShopScoreTextView = (TextView) findViewById(R.id.ShopScoreTextView);
        this.mCoinNumTextView = (TextView) findViewById(R.id.CoinNumTextView);
        this.mShopCoinNumTextView = (TextView) findViewById(R.id.ShopCoinNumTextView);
        this.mExplainTextView = (TextView) findViewById(R.id.ExplainTextView);
        this.mShopExplainTextView = (TextView) findViewById(R.id.ShopExplainTextView);
        this.mSkillExplainTextView = (TextView) findViewById(R.id.SkillExplainTextView);
        this.mAnimation = new Animation[3];
        this.mAnimation[0] = AnimationUtils.loadAnimation(this, R.anim.move_down1);
        this.mAnimation[1] = AnimationUtils.loadAnimation(this, R.anim.move_up1);
        this.mAnimation[2] = AnimationUtils.loadAnimation(this, R.anim.scale_xy);
        this.mCoverImg = getResources().getDrawable(R.drawable.slot_skill_disable);
        this.mCoverImg.setAlpha(SLOTIMAGE_ALPHA);
        this.mItems = new Items(this);
        Objects objects = new Objects(this, 0, 0, 0.0f);
        this.mSkills = objects.mSkills;
        Items.TypeItem[] titem = this.mItems.mTypeItem;
        this.mPurchaseItemKey = ITEM_ID_COIN_COLLECTION;
        Items.Item[] items = {titem[4].mSubItem[0], titem[4].mSubItem[1], titem[4].mSubItem[2], titem[4].mSubItem[3]};
        this.mPurchaseItemMap = new HashMap<>();
        for (int i = 0; i < ITEM_ID_COIN_COLLECTION.length; i++) {
            this.mPurchaseItemMap.put(ITEM_ID_COIN_COLLECTION[i], items[i]);
        }
        Bundle extra = getIntent().getExtras();
        if (extra != null) {
            float widthrate = extra.getInt("displaywidth") / 1280.0f;
            float heightrate = extra.getInt("displayheight") / 800.0f;
            this.mBodyImgId = extra.getInt("bodyimgid");
            this.mActionImgId = extra.getInt("actionimgid");
            this.mFaceImgId = extra.getInt("faceimgid");
            this.mBodyImgPath = extra.getString("bodyimgpath");
            this.mActionImgPath = extra.getString("actionimgpath");
            this.mFaceImgPath = extra.getString("faceimgpath");
            this.mMoveStandard = widthrate * heightrate * 3.0f;
            this.mWidthRate = widthrate;
            this.mHeightRate = heightrate;
            coordinateLayout(findViewById(R.id.BgLayout), getResources().getStringArray(R.array.inventory_rect));
            coordinateLayout(findViewById(R.id.ItemLayout), getResources().getStringArray(R.array.inventory_item_rect));
            coordinateLayout(findViewById(R.id.ShopLayout), getResources().getStringArray(R.array.inventory_shop_rect));
            coordinateLayout(findViewById(R.id.ShopSub0Layout), getResources().getStringArray(R.array.inventory_shop_sub0_rect));
            coordinateLayout(findViewById(R.id.ShopSub1Layout), getResources().getStringArray(R.array.inventory_shop_sub1_rect));
            coordinateLayout(findViewById(R.id.SkillLayout), getResources().getStringArray(R.array.inventory_skill_rect));
            createItemSlots(widthrate, heightrate);
            createShopSlots(widthrate, heightrate);
            createSkillSlots(widthrate, heightrate);
            setItemText();
        }
        createDeleteItemDlg();
        createLearnSkillDlg();
        createBuyItemDlg();
        createBuyListDlg();
        setTab();
        this.mTabNum = 0;
        this.mLoadingView = false;
        this.mConnectNetwork = new ConnectNetwork(this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        loadImages();
        DBAdapter dbhelper = new DBAdapter(this);
        dbhelper.open();
        this.mDbhelper = dbhelper;
        loadState(0L);
        setItemText();
        setSkillText();
        this.mSoundpool = new SoundPool(10, 3, Objects.FINDIMAGE_TOTALNUM);
        this.mSoundPoolMap = new HashMap<>();
        this.mSoundPoolMap.put(0, Integer.valueOf(this.mSoundpool.load(this, R.raw.shoppage, 1)));
        switch (this.mTabNum) {
            case 0:
                setItemTab();
                break;
            case 1:
                setShopTab();
                break;
            case 2:
                setSkillTab();
                break;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (isFinishing()) {
            saveStatusToDB();
        }
        super.onPause();
    }

    private void saveStatusToDB() {
        if (this.mDbhelper != null) {
            saveState(0L);
            this.mDbhelper.close();
            this.mDbhelper = null;
        }
    }

    private void clearData() {
        LOG.verbose(">> clearData()");
        if (this.mSoundPoolMap != null) {
            this.mSoundPoolMap.clone();
            this.mSoundPoolMap = null;
        }
        if (this.mSoundpool != null) {
            this.mSoundpool.release();
            this.mSoundpool = null;
        }
        recycleImages();
        if (this.mLoadingView && !isFinishing()) {
            createLoadingView();
        }
    }

    @Override // com.findit.battle.iap.activity.InAppBillingActivity, android.app.Activity
    public void onDestroy() {
        LOG.verbose(">> onDestroy()");
        clearData();
        if (this.mPurchaseItemMap != null) {
            this.mPurchaseItemMap.clear();
            this.mPurchaseItemMap = null;
        }
        System.gc();
        super.onDestroy();
    }

    public void coordinateLayout(View view, String[] rects) {
        int width;
        LOG.verbose(">> coordinateLayout()");
        float widthrate = this.mWidthRate;
        float heightrate = this.mHeightRate;
        RelativeLayout layout = (RelativeLayout) view;
        int count = layout.getChildCount();
        for (int i = 0; i < count; i++) {
            String[] data = rects[i].split(",");
            boolean apply = true;
            int width2 = Integer.parseInt(data[2]);
            int height = Integer.parseInt(data[3]);
            switch (width2) {
                case NetError.WRONG_URL_FORMAT /* -3 */:
                    width = (int) (height * heightrate);
                    height = width;
                    apply = false;
                    break;
                case -2:
                    width = -2;
                    break;
                case -1:
                    width = -1;
                    break;
                default:
                    width = (int) (width2 * widthrate);
                    break;
            }
            if (apply) {
                switch (height) {
                    case NetError.WRONG_URL_FORMAT /* -3 */:
                        height = width;
                        break;
                    case -2:
                        height = -2;
                        break;
                    case -1:
                        height = -1;
                        break;
                    default:
                        height = (int) (height * heightrate);
                        break;
                }
            }
            RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(width, height);
            params.leftMargin = (int) (Integer.parseInt(data[0]) * widthrate);
            params.topMargin = (int) (Integer.parseInt(data[1]) * heightrate);
            layout.getChildAt(i).setLayoutParams(params);
        }
    }

    private void loadImages() {
        Drawable bodyimg;
        Drawable poseimg;
        Drawable faceimg;
        LOG.verbose(">> loadImages()");
        findViewById(R.id.BgLayout).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.bg)));
        findViewById(R.id.TitleImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.title_character)));
        findViewById(R.id.PenTextImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_text1)));
        findViewById(R.id.PenIconSlotLayout).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_item1)));
        findViewById(R.id.RingTextImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_text3)));
        findViewById(R.id.RingIconSlotLayout).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_item3)));
        findViewById(R.id.BerryTextImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_text2)));
        findViewById(R.id.BerryIconSlotLayout).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_item2)));
        findViewById(R.id.PotionTextImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_text4)));
        findViewById(R.id.PotionIconSlotLayout).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_item4)));
        this.mItemTabImg = new BitmapDrawable[2];
        this.mItemTabImg[0] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_item_1));
        this.mItemTabImg[1] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_item_2));
        this.mShopTabImg = new BitmapDrawable[2];
        this.mShopTabImg[0] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_shop_1));
        this.mShopTabImg[1] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_shop_2));
        this.mSkillTabImg = new BitmapDrawable[2];
        this.mSkillTabImg[0] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_skill_1));
        this.mSkillTabImg[1] = new BitmapDrawable(getResources().openRawResource(R.drawable.tab_skill_2));
        findViewById(R.id.ItemTabButton).setBackgroundDrawable(this.mItemTabImg[0]);
        findViewById(R.id.ShopTabButton).setBackgroundDrawable(this.mShopTabImg[1]);
        findViewById(R.id.SkillTabButton).setBackgroundDrawable(this.mSkillTabImg[1]);
        findViewById(R.id.Line0ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        findViewById(R.id.SlotPreButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_pre)));
        findViewById(R.id.SlotNextButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_next)));
        findViewById(R.id.Line1ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        findViewById(R.id.ShopLine0ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        findViewById(R.id.ShopSlotPreButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_pre)));
        findViewById(R.id.ShopSlotNextButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_next)));
        findViewById(R.id.ShopLine1ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        findViewById(R.id.SkillLine0ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        findViewById(R.id.SkillSlotPreButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_pre)));
        findViewById(R.id.SkillSlotNextButton).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.slot_next)));
        findViewById(R.id.SkillLine1ImageView).setBackgroundDrawable(new BitmapDrawable(getResources().openRawResource(R.drawable.line_hr_0)));
        if (this.mBodyImgPath == null) {
            bodyimg = getResources().getDrawable(this.mBodyImgId);
        } else {
            bodyimg = Drawable.createFromPath(this.mBodyImgPath);
        }
        if (this.mBodyImgPath == null) {
            poseimg = getResources().getDrawable(this.mActionImgId);
        } else {
            poseimg = Drawable.createFromPath(this.mActionImgPath);
        }
        if (this.mBodyImgPath == null) {
            faceimg = getResources().getDrawable(this.mFaceImgId);
        } else {
            faceimg = Drawable.createFromPath(this.mFaceImgPath);
        }
        Bitmap bitmap = drawImg(bodyimg, poseimg, faceimg, this.mWidthRate, this.mHeightRate);
        this.mCharacterImageView.setBackgroundDrawable(compressBitmap(bitmap));
        bitmap.recycle();
    }

    private void recycleImages() {
        LOG.verbose(">> recycleImages()");
        int length = this.mItemTabImg.length;
        for (int i = 0; i < length; i++) {
            Bitmap bitmap = this.mItemTabImg[i].getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        int length2 = this.mShopTabImg.length;
        for (int i2 = 0; i2 < length2; i2++) {
            Bitmap bitmap2 = this.mShopTabImg[i2].getBitmap();
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
        }
        int length3 = this.mSkillTabImg.length;
        for (int i3 = 0; i3 < length3; i3++) {
            Bitmap bitmap3 = this.mSkillTabImg[i3].getBitmap();
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
        }
        recycleView(this.mCharacterImageView);
        RelativeLayout layout = (RelativeLayout) findViewById(R.id.BgLayout);
        recycleView(layout);
        int length4 = layout.getChildCount();
        for (int i4 = 0; i4 < length4; i4++) {
            try {
                RelativeLayout sublayout = (RelativeLayout) layout.getChildAt(i4);
                recycleView(sublayout);
                int sublength = sublayout.getChildCount();
                for (int j = 0; j < sublength; j++) {
                    recycleView(sublayout.getChildAt(i4));
                }
            } catch (Exception e) {
                recycleView(layout.getChildAt(i4));
            }
        }
    }

    private void recycleView(View view) {
        Drawable bg;
        LOG.verbose(">> recycleView()");
        Object tag = view.getTag();
        if ((tag == null || (tag != null && !tag.toString().equals("not"))) && (bg = view.getBackground()) != null) {
            try {
                bg.setCallback(null);
                ((BitmapDrawable) bg).getBitmap().recycle();
                view.setBackgroundDrawable(null);
            } catch (Exception e) {
            }
        }
    }

    public void saveState(long rowid) {
        LOG.verbose(">> saveState()");
        String[] strvalues = {GameView.CHARACTER_AI, GameView.CHARACTER_AI};
        long[] longvalues = {this.mScore, this.mCoin};
        int[] intvalues = {this.mPoint};
        strvalues[0] = String.valueOf(strvalues[0]) + (char) 1;
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (this.mSkills.mSetSkillActiveIndexTable[0] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (this.mSkills.mSetSkillActiveIndexTable[1] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (this.mSkills.mSetSkillActiveIndexTable[2] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) (this.mSkills.mSetSkillActiveIndexTable[3] ? 1 : 0));
        strvalues[0] = String.valueOf(strvalues[0]) + ((char) this.mSkills.mSkillTotalnum);
        for (int i = 0; i < this.mSkills.mSkillTotalnum; i++) {
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) this.mSkills.mSkill[i].mNum);
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) this.mSkills.mSkill[i].mSetNum);
            strvalues[0] = String.valueOf(strvalues[0]) + ((char) (this.mSkills.mSkill[i].mBuy ? 1 : 0));
        }
        strvalues[1] = String.valueOf(strvalues[1]) + (char) 1;
        for (int i2 = 0; i2 < 6; i2++) {
            int totalnum = this.mItems.mTypeItem[i2].mSubItemTotalnum;
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) totalnum);
            for (int j = 0; j < totalnum; j++) {
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mType);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mSubType);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mSlotnum);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mNum);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mPower);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mPrice);
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mTypeItem[i2].mSubItem[j].mMoney);
            }
        }
        int totalnum2 = this.mItems.mItemTotalnum;
        strvalues[1] = String.valueOf(strvalues[1]) + ((char) totalnum2);
        for (int i3 = 0; i3 < totalnum2; i3++) {
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mItem[i3].mType);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mItem[i3].mSubType);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mItem[i3].mSlotnum);
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) (this.mItems.mItem[i3].mSet ? 1 : 0));
            strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mItem[i3].mNum);
            if (this.mItems.mItem[i3].mSeqs == null) {
                strvalues[1] = String.valueOf(strvalues[1]) + (char) 0;
            } else {
                strvalues[1] = String.valueOf(strvalues[1]) + ((char) this.mItems.mItem[i3].mSeqs.length());
                strvalues[1] = String.valueOf(strvalues[1]) + this.mItems.mItem[i3].mSeqs;
            }
        }
        this.mDbhelper.updateStateForInven(rowid, intvalues, longvalues, strvalues);
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
    public void loadState(long j) {
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
        LOG.verbose(">> loadState()");
        Cursor cursorFetchState = this.mDbhelper.fetchState(j);
        if (cursorFetchState != null) {
            if (cursorFetchState.getCount() != 0) {
                try {
                    this.mLevel = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_LEVEL));
                    if (this.mLevel < 1) {
                        this.mLevel = 1;
                    }
                    this.mLevelTextView.setText(new StringBuilder().append(this.mLevel).toString());
                    this.mShopLevelTextView.setText(new StringBuilder().append(this.mLevel).toString());
                    this.mScore = cursorFetchState.getLong(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_SCORE));
                    String str = Objects.Animation.DEVIDER_DATA + this.mLevelScoreTable[this.mLevel];
                    this.mScoreTextView.setText(this.mScore + str);
                    this.mShopScoreTextView.setText(this.mScore + str);
                    this.mCoin = cursorFetchState.getLong(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_COIN));
                    this.mCoinNumTextView.setText(new StringBuilder().append(this.mCoin).toString());
                    this.mShopCoinNumTextView.setText(new StringBuilder().append(this.mCoin).toString());
                    this.mPoint = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_POINT));
                    String string = cursorFetchState.getString(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_SKILLS));
                    if (string != null && string.length() > 0) {
                        char[] cArr = new char[string.length()];
                        char[] charArray = string.toCharArray();
                        int i13 = 0 + 1;
                        int i14 = i13 + 1;
                        this.mSkills.mSetSkillActiveIndexTable[0] = charArray[i13] == 1;
                        int i15 = i14 + 1;
                        this.mSkills.mSetSkillActiveIndexTable[1] = charArray[i14] == 1;
                        int i16 = i15 + 1;
                        this.mSkills.mSetSkillActiveIndexTable[2] = charArray[i15] == 1;
                        int i17 = i16 + 1;
                        this.mSkills.mSetSkillActiveIndexTable[3] = charArray[i16] == 1;
                        int i18 = i17 + 1;
                        char c = charArray[i17];
                        int i19 = 0;
                        while (i19 < c) {
                            Objects.Skills.Skill skill = this.mSkills.mSkill[i19];
                            if (charArray[i18] > 32767) {
                                int i20 = charArray[i18] - 0;
                                i9 = i18 + 1;
                                i10 = i20;
                            } else {
                                char c2 = charArray[i18];
                                i9 = i18 + 1;
                                i10 = c2;
                            }
                            skill.mNum = i10 != 0 ? 1 : 0;
                            Objects.Skills.Skill skill2 = this.mSkills.mSkill[i19];
                            if (charArray[i9] > 32767) {
                                int i21 = charArray[i9] - 0;
                                i11 = i9 + 1;
                                i12 = i21;
                            } else {
                                char c3 = charArray[i9];
                                i11 = i9 + 1;
                                i12 = c3;
                            }
                            skill2.mSetNum = i12 != 0 ? 1 : 0;
                            int i22 = i11 + 1;
                            this.mSkills.mSkill[i19].mBuy = charArray[i11] == 1;
                            setSkillSlot(i19);
                            i19++;
                            i18 = i22;
                        }
                        for (int i23 = c; i23 < this.mSkills.mSkillTotalnum; i23++) {
                            setSkillSlot(i23);
                        }
                    }
                    String string2 = cursorFetchState.getString(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_ITEMS));
                    if (string2 != null && string2.length() > 0) {
                        char[] cArr2 = new char[string2.length()];
                        char[] charArray2 = string2.toCharArray();
                        int i24 = 0;
                        int i25 = 0 + 1;
                        while (i24 < 6) {
                            int i26 = i25 + 1;
                            for (int i27 = 0; i27 < charArray2[i25]; i27++) {
                                i26 = i26 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
                            }
                            i24++;
                            i25 = i26;
                        }
                        this.mItems.mItemTotalnum = 0;
                        char c4 = charArray2[i25];
                        int i28 = 0;
                        int i29 = i25 + 1;
                        while (i28 < c4) {
                            if (charArray2[i29] > 32767) {
                                int i30 = charArray2[i29] - 0;
                                i = i29 + 1;
                                i2 = i30;
                            } else {
                                char c5 = charArray2[i29];
                                i = i29 + 1;
                                i2 = c5;
                            }
                            if (charArray2[i] > 32767) {
                                int i31 = charArray2[i] - 0;
                                i3 = i + 1;
                                i4 = i31;
                            } else {
                                char c6 = charArray2[i];
                                i3 = i + 1;
                                i4 = c6;
                            }
                            this.mItems.createItem(i2 != 0 ? 1 : 0, i4);
                            Items.Item item = this.mItems.mItem[i28];
                            if (charArray2[i3] > 32767) {
                                int i32 = charArray2[i3] - 0;
                                i5 = i3 + 1;
                                i6 = i32;
                            } else {
                                char c7 = charArray2[i3];
                                i5 = i3 + 1;
                                i6 = c7;
                            }
                            item.mSlotnum = i6 != 0 ? 1 : 0;
                            int i33 = i5 + 1;
                            this.mItems.mItem[i28].mSet = charArray2[i5] == 1;
                            Items.Item item2 = this.mItems.mItem[i28];
                            if (charArray2[i33] > 32767) {
                                i7 = i33 + 1;
                                i8 = charArray2[i33] - 0;
                            } else {
                                i7 = i33 + 1;
                                i8 = charArray2[i33];
                            }
                            item2.mNum = i8 != 0 ? 1 : 0;
                            int i34 = i7 + 1;
                            char c8 = charArray2[i7];
                            if (c8 == 0) {
                                this.mItems.mItem[i28].mSeqs = null;
                            } else {
                                this.mItems.mItem[i28].mSeqs = GameView.CHARACTER_AI;
                                int i35 = 0;
                                int i36 = i34;
                                while (i35 < c8) {
                                    Items.Item item3 = this.mItems.mItem[i28];
                                    item3.mSeqs = String.valueOf(item3.mSeqs) + charArray2[i36];
                                    i35++;
                                    i36++;
                                }
                                i34 = i36;
                            }
                            if (this.mItems.mItem[i28].mSet) {
                                setItemSetSlot(this.mItems.mItem[i28].mType, i28);
                            } else {
                                int i37 = this.mItems.mItem[i28].mSlotnum;
                                if (i37 < 0) {
                                    setItemSlot(this.mItems.mItem[i28]);
                                } else {
                                    setItemSlot(i37, i28);
                                }
                            }
                            i28++;
                            i29 = i34;
                        }
                        this.mItems.setSetTable();
                    }
                    this.mAttack = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_ATTACK));
                    setAttackText();
                    this.mDefense = cursorFetchState.getInt(cursorFetchState.getColumnIndexOrThrow(DBAdapter.FIELD_DEFENSE));
                    setDefenseText();
                } catch (Exception e) {
                }
            }
            cursorFetchState.close();
        }
        Cursor cursorFetchSetup = this.mDbhelper.fetchSetup(0L);
        if (cursorFetchSetup != null && cursorFetchSetup.getCount() != 0) {
            this.mUserId = cursorFetchSetup.getString(cursorFetchSetup.getColumnIndexOrThrow(DBAdapter.FIELD_LOGIN_ID));
        }
    }

    public void playSound(int id) {
        LOG.verbose(">> playSound()");
        if (this.mSoundon && this.mSoundpool != null && this.mSoundPoolMap != null) {
            this.mSoundpool.play(this.mSoundPoolMap.get(Integer.valueOf(id)).intValue(), SOUND_VOLUME, SOUND_VOLUME, 1, 0, 1.0f);
        }
    }

    private void setTab() {
        LOG.verbose(">> setTab()");
        this.mItemLayout = (RelativeLayout) findViewById(R.id.ItemLayout);
        this.mShopLayout = (RelativeLayout) findViewById(R.id.ShopLayout);
        this.mSkillLayout = (RelativeLayout) findViewById(R.id.SkillLayout);
        Button button = (Button) findViewById(R.id.ItemTabButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.5
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                InventoryActivity_Google.this.setItemTab();
            }
        });
        this.mItemTabButton = button;
        Button button2 = (Button) findViewById(R.id.ShopTabButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.6
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                InventoryActivity_Google.this.setShopTab();
            }
        });
        this.mShopTabButton = button2;
        Button button3 = (Button) findViewById(R.id.SkillTabButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.7
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                InventoryActivity_Google.this.setSkillTab();
            }
        });
        this.mSkillTabButton = button3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemTab() {
        LOG.verbose(">> setItemTab()");
        this.mItemTabButton.setBackgroundDrawable(this.mItemTabImg[0]);
        this.mShopTabButton.setBackgroundDrawable(this.mShopTabImg[1]);
        this.mSkillTabButton.setBackgroundDrawable(this.mSkillTabImg[1]);
        this.mItemLayout.setVisibility(0);
        this.mShopLayout.setVisibility(4);
        this.mSkillLayout.setVisibility(4);
        this.mTabNum = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShopTab() {
        LOG.verbose(">> setShopTab()");
        this.mItemTabButton.setBackgroundDrawable(this.mItemTabImg[1]);
        this.mShopTabButton.setBackgroundDrawable(this.mShopTabImg[0]);
        this.mSkillTabButton.setBackgroundDrawable(this.mSkillTabImg[1]);
        this.mItemLayout.setVisibility(4);
        this.mShopLayout.setVisibility(0);
        this.mSkillLayout.setVisibility(4);
        this.mTabNum = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSkillTab() {
        LOG.verbose(">> setSkillTab()");
        this.mItemTabButton.setBackgroundDrawable(this.mItemTabImg[1]);
        this.mShopTabButton.setBackgroundDrawable(this.mShopTabImg[1]);
        this.mSkillTabButton.setBackgroundDrawable(this.mSkillTabImg[0]);
        this.mItemLayout.setVisibility(4);
        this.mShopLayout.setVisibility(4);
        this.mSkillLayout.setVisibility(0);
        this.mSkillPointNumTextView.setText(new StringBuilder().append(this.mPoint).toString());
        this.mTabNum = 2;
    }

    private void setAttackText() {
        LOG.verbose(">> setAttackText()");
        int power = 0;
        int index = this.mItems.getSetIndex(0);
        if (index > -1) {
            power = this.mItems.mItem[index].mPower;
        }
        this.mAttackTextView.setText(String.valueOf(this.mAttack) + "(+" + power + ")");
    }

    private void setDefenseText() {
        LOG.verbose(">> setDefenseText()");
        int power = 0;
        int index = this.mItems.getSetIndex(1);
        if (index > -1) {
            power = this.mItems.mItem[index].mPower;
        }
        this.mDefenseTextView.setText(String.valueOf(this.mDefense) + "(+" + power + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemSlotWindowLocation(int num) {
        LOG.verbose(">> setItemSlotWindowLocation()");
        if (num > -1 && num < this.mSlotWindowTotalNum) {
            this.mSlotsScrollView.postDelayed(new ActionRunnable(this.mSlotWindowWidth * num), 150L);
            this.mSlotWindowNum = num;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSkillSlotWindowLocation(int num) {
        LOG.verbose(">> setSkillSlotWindowLocation()");
        if (num > -1 && num < this.mSkillSlotWindowTotalNum) {
            this.mSkillSlotsScrollView.postDelayed(new ActionRunnable(this.mSkillSlotWindowWidth * num), 150L);
            this.mSkillSlotWindowNum = num;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShopItemSlotWindowLocation(int num) {
        LOG.verbose(">> setShopItemSlotWindowLocation()");
        if (num > -1 && num < this.mShopItemSlotWindowTotalNum) {
            this.mShopItemSlotsScrollView.postDelayed(new ActionRunnable(this.mShopItemSlotWindowWidth * num), 150L);
            this.mShopItemSlotWindowNum = num;
        }
    }

    private void createItemSlots(float widthrate, float heightrate) {
        LOG.verbose(">> createItemSlots()");
        int i = 5 * 3;
        int size = (int) (112.0f * heightrate);
        int textsize = size / 8;
        this.mSlotsLayout = new RelativeLayout[15];
        int slotwindowwidth = size * 5;
        this.mSlotWindowNum = 0;
        this.mSlotWindowTotalNum = 1;
        this.mSlotNum = 0;
        this.mMoveItemView = new MoveView((ImageView) findViewById(R.id.MoveIconImageView), size, 5, 3);
        this.mSlotWindowX = (int) (625.0f * widthrate);
        this.mSlotWindowY = (int) (225.0f * heightrate);
        int width = (int) (112.0f * widthrate);
        int height = (int) (112.0f * heightrate);
        int left1 = (int) (43.0f * widthrate);
        int left2 = (int) (431.0f * widthrate);
        int right1 = left1 + width;
        int right2 = left2 + width;
        int top1 = (int) (447.0f * heightrate);
        int top2 = (int) (598.0f * heightrate);
        int bottom1 = top1 + height;
        int bottom2 = top2 + height;
        this.mMoveItemView.mRect[0] = new Rect(left1, top1, right1, bottom1);
        this.mMoveItemView.mRect[2] = new Rect(left2, top1, right2, bottom1);
        this.mMoveItemView.mRect[1] = new Rect(left1, top2, right1, bottom2);
        this.mMoveItemView.mRect[3] = new Rect(left2, top2, right2, bottom2);
        RelativeLayout.LayoutParams slotparams1 = new RelativeLayout.LayoutParams(size, size);
        slotparams1.rightMargin = (int) (textsize * 1.2f);
        slotparams1.bottomMargin = (int) (textsize * 0.8f);
        int[] setitemtypetable = {0, 1, 2, 3};
        int[] setslotlayoutidtable = {R.id.PenIconSlotLayout, R.id.RingIconSlotLayout, R.id.BerryIconSlotLayout, R.id.PotionIconSlotLayout};
        this.mSetSlotsLayout = new RelativeLayout[setslotlayoutidtable.length];
        for (int i2 = 0; i2 < setitemtypetable.length; i2++) {
            RelativeLayout layout = (RelativeLayout) findViewById(setslotlayoutidtable[i2]);
            TextView textview = (TextView) layout.getChildAt(1);
            textview.setTextSize(textsize);
            textview.setGravity(85);
            textview.setLayoutParams(slotparams1);
            this.mSetSlotsLayout[setitemtypetable[i2]] = layout;
        }
        this.mSetItemTypeTable = setitemtypetable;
        HorizontalScrollView slotscrollview = (HorizontalScrollView) findViewById(R.id.SlotHorizontalScrollView);
        slotscrollview.setLayoutParams(new LinearLayout.LayoutParams(slotwindowwidth, -1));
        slotscrollview.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.InventoryActivity_Google.8
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                int index;
                LOG.verbose(">> slotscrollview::onTouch()");
                int touchx = (int) event.getX();
                int touchy = (int) event.getY();
                switch (event.getAction()) {
                    case 1:
                        int index2 = InventoryActivity_Google.this.mMoveItemView.mIndex;
                        if (index2 > -1) {
                            InventoryActivity_Google.this.mMoveItemView.move(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX, InventoryActivity_Google.this.mSlotWindowY);
                            InventoryActivity_Google.this.setSlotImageAlpha(index2, false);
                            if (!InventoryActivity_Google.this.changeSetItemSlots(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX, InventoryActivity_Google.this.mSlotWindowY, index2)) {
                                if (touchx >= 0) {
                                    InventoryActivity_Google.this.changeItemSlots(touchx, touchy, 0, 0, index2);
                                } else {
                                    InventoryActivity_Google.this.setDeleteItem(index2);
                                    InventoryActivity_Google.this.mDeleteItemDlg.show();
                                }
                            }
                        }
                        InventoryActivity_Google.this.mMoveItemView.fadeView();
                        InventoryActivity_Google.this.setFirstTouch(-1, -1, 0, 0);
                        return true;
                    case 2:
                        if (InventoryActivity_Google.this.isActionMove(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX, InventoryActivity_Google.this.mSlotWindowY) && (index = InventoryActivity_Google.this.mMoveItemView.mIndex) > -1) {
                            InventoryActivity_Google.this.mMoveItemView.move(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX, InventoryActivity_Google.this.mSlotWindowY);
                            InventoryActivity_Google.this.mMoveItemView.appearView();
                            InventoryActivity_Google.this.setSlotImageAlpha(index, true);
                        }
                        return true;
                    default:
                        return true;
                }
            }
        });
        this.mSlotsScrollView = slotscrollview;
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        ViewGroup.LayoutParams slotparams = new RelativeLayout.LayoutParams(size, size);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.SlotsLayout);
        this.mSlotWindowWidth = slotwindowwidth;
        for (int i3 = 0; i3 < 1; i3++) {
            for (int j = 0; j < 5; j++) {
                LinearLayout sublayout = new LinearLayout(this);
                sublayout.setOrientation(1);
                for (int z = 0; z < 3; z++) {
                    int num = (j * 3) + z + (i3 * 15);
                    RelativeLayout slotlayout = new RelativeLayout(this);
                    slotlayout.setTag(new StringBuilder().append(num).toString());
                    if (num == 0) {
                        slotlayout.setBackgroundResource(R.drawable.slot_s);
                    } else {
                        slotlayout.setBackgroundResource(R.drawable.slot_n);
                    }
                    slotlayout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.9
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            LOG.verbose(">> slotlayout::setOnClickListener()");
                            RelativeLayout layout2 = (RelativeLayout) v;
                            int slotnum = Integer.parseInt(layout2.getTag().toString());
                            if (InventoryActivity_Google.this.mSlotNum != slotnum) {
                                layout2.setBackgroundResource(R.drawable.slot_s);
                                InventoryActivity_Google.this.mSlotsLayout[InventoryActivity_Google.this.mSlotNum].setBackgroundResource(R.drawable.slot_n);
                                InventoryActivity_Google.this.mSlotNum = slotnum;
                                InventoryActivity_Google.this.setItemText();
                            }
                        }
                    });
                    slotlayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.InventoryActivity_Google.10
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View v, MotionEvent event) {
                            LOG.verbose(">> slotlayout::onTouch()");
                            int touchx = (int) event.getX();
                            int touchy = (int) event.getY();
                            int slotnum = Integer.parseInt(v.getTag().toString());
                            switch (event.getAction()) {
                                case 0:
                                    InventoryActivity_Google.this.setMoveItemImage(InventoryActivity_Google.this.mItems.getIndex(slotnum));
                                    InventoryActivity_Google.this.setFirstTouch(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX + InventoryActivity_Google.this.mMoveItemView.getTileStandardX(slotnum), InventoryActivity_Google.this.mSlotWindowY + InventoryActivity_Google.this.mMoveItemView.getTileStandardY(slotnum));
                                    break;
                                case 1:
                                    int index = InventoryActivity_Google.this.mMoveItemView.mIndex;
                                    if (index > -1) {
                                        int x = InventoryActivity_Google.this.mSlotWindowX + InventoryActivity_Google.this.mMoveItemView.getTileStandardX(slotnum);
                                        int y = InventoryActivity_Google.this.mSlotWindowY + InventoryActivity_Google.this.mMoveItemView.getTileStandardY(slotnum);
                                        InventoryActivity_Google.this.mMoveItemView.move(touchx, touchy, x, y);
                                        InventoryActivity_Google.this.setSlotImageAlpha(index, false);
                                        if (!InventoryActivity_Google.this.changeSetItemSlots(touchx, touchy, x, y, index)) {
                                            InventoryActivity_Google.this.changeItemSlots(touchx, touchy, InventoryActivity_Google.this.mMoveItemView.getTileStandardX(slotnum), InventoryActivity_Google.this.mMoveItemView.getTileStandardY(slotnum), index);
                                        }
                                    }
                                    InventoryActivity_Google.this.mMoveItemView.fadeView();
                                    InventoryActivity_Google.this.setFirstTouch(-1, -1, 0, 0);
                                    break;
                                case 2:
                                    if (InventoryActivity_Google.this.isActionMove(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX + InventoryActivity_Google.this.mMoveItemView.getTileStandardX(slotnum), InventoryActivity_Google.this.mSlotWindowY + InventoryActivity_Google.this.mMoveItemView.getTileStandardY(slotnum))) {
                                        int index2 = InventoryActivity_Google.this.mMoveItemView.mIndex;
                                        if (index2 > -1) {
                                            InventoryActivity_Google.this.mMoveItemView.move(touchx, touchy, InventoryActivity_Google.this.mSlotWindowX + InventoryActivity_Google.this.mMoveItemView.getTileStandardX(slotnum), InventoryActivity_Google.this.mSlotWindowY + InventoryActivity_Google.this.mMoveItemView.getTileStandardY(slotnum));
                                            InventoryActivity_Google.this.mMoveItemView.appearView();
                                            InventoryActivity_Google.this.setSlotImageAlpha(index2, true);
                                        }
                                        InventoryActivity_Google.this.setFirstTouch(-1, -1, 0, 0);
                                    }
                                    break;
                            }
                            return false;
                        }
                    });
                    ImageView imageview = new ImageView(this);
                    slotlayout.addView(imageview, slotparams);
                    TextView textview2 = new TextView(this);
                    textview2.setTextSize(textsize);
                    textview2.setGravity(85);
                    slotlayout.addView(textview2, slotparams1);
                    sublayout.addView(slotlayout, slotparams);
                    this.mSlotsLayout[num] = slotlayout;
                }
                linearLayout.addView(sublayout, params);
            }
        }
        Button button = (Button) findViewById(R.id.SlotPreButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.11
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> SlotPreButton::setOnClickListener()");
                InventoryActivity_Google.this.setItemSlotWindowLocation(InventoryActivity_Google.this.mSlotWindowNum - 1);
            }
        });
        Button button2 = (Button) findViewById(R.id.SlotNextButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.12
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> SlotNextButton::setOnClickListener()");
                InventoryActivity_Google.this.setItemSlotWindowLocation(InventoryActivity_Google.this.mSlotWindowNum + 1);
            }
        });
    }

    private void createShopSlots(float widthrate, float heightrate) {
        LOG.verbose(">> createShopSlots()");
        int i = 3 * 2;
        int size = (int) (180.0f * heightrate);
        if (heightrate / (widthrate / 2.0f) > 1.2f) {
            size = (int) (170.0f * heightrate);
        }
        int[] menuslotimgid = {R.drawable.shop_btn_1, R.drawable.shop_btn_4, R.drawable.shop_btn_2, R.drawable.shop_btn_5, R.drawable.shop_btn_3, R.drawable.shop_btn_6};
        ViewGroup.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        ViewGroup.LayoutParams slotparams = new RelativeLayout.LayoutParams((int) (size * 1.089f), size);
        this.mShopSlotsLayout = new RelativeLayout[2];
        this.mShopSlotsLayout[0] = (RelativeLayout) findViewById(R.id.ShopSub0Layout);
        this.mShopSlotsLayout[1] = (RelativeLayout) findViewById(R.id.ShopSub1Layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ShopMenuSlotsLayout);
        for (int i2 = 0; i2 < 1; i2++) {
            for (int j = 0; j < 3; j++) {
                LinearLayout linearLayout2 = new LinearLayout(this);
                linearLayout2.setOrientation(1);
                for (int z = 0; z < 2; z++) {
                    int num = (j * 2) + z + (i2 * 6);
                    RelativeLayout slotlayout = new RelativeLayout(this);
                    slotlayout.setTag(new StringBuilder().append(num).toString());
                    slotlayout.setBackgroundResource(R.drawable.slot_n);
                    slotlayout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.13
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            LOG.verbose(">> slotlayout::onClick()");
                            int slotnum = Integer.parseInt(v.getTag().toString());
                            InventoryActivity_Google.this.mShopSlotsLayout[0].setVisibility(4);
                            InventoryActivity_Google.this.mShopSlotsLayout[1].setVisibility(0);
                            InventoryActivity_Google.this.mShopSlotsLayout[0].startAnimation(InventoryActivity_Google.this.mAnimation[0]);
                            InventoryActivity_Google.this.mShopSlotsLayout[1].startAnimation(InventoryActivity_Google.this.mAnimation[1]);
                            int totalnum = InventoryActivity_Google.this.mItems.mTypeItem[InventoryActivity_Google.this.mShopItemTypeSlotNum].mSubItemTotalnum;
                            for (int i3 = 0; i3 < totalnum; i3++) {
                                InventoryActivity_Google.this.clearShopSlot(i3);
                            }
                            InventoryActivity_Google.this.mShopExplainTextView.setText(GameView.CHARACTER_AI);
                            int totalnum2 = InventoryActivity_Google.this.mItems.mTypeItem[slotnum].mSubItemTotalnum;
                            for (int i4 = 0; i4 < totalnum2; i4++) {
                                InventoryActivity_Google.this.setShopSlot(slotnum, i4);
                            }
                            InventoryActivity_Google.this.playSound(0);
                            InventoryActivity_Google.this.mShopItemTypeSlotNum = slotnum;
                            InventoryActivity_Google.this.selectShopItemSlot(InventoryActivity_Google.this.mShopItemSlotsLayout[0], 0);
                        }
                    });
                    slotlayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.InventoryActivity_Google.14
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View v, MotionEvent event) {
                            LOG.verbose(">> slotlayout::onTouch()");
                            switch (event.getAction()) {
                                case 0:
                                    v.setBackgroundResource(R.drawable.slot_s);
                                    break;
                                case 1:
                                    v.setBackgroundResource(R.drawable.slot_n);
                                    break;
                            }
                            return false;
                        }
                    });
                    ImageView imageview = new ImageView(this);
                    imageview.setBackgroundResource(menuslotimgid[num]);
                    slotlayout.addView(imageview, slotparams);
                    linearLayout2.addView(slotlayout, slotparams);
                }
                linearLayout.addView(linearLayout2, params);
            }
        }
        Button button = (Button) findViewById(R.id.ShopBreakdownButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> ShopBreakdownButton::onClick()");
                InventoryActivity_Google.this.mBuyListTitleTextView.setText(String.valueOf(InventoryActivity_Google.this.mUserId) + InventoryActivity_Google.this.mBuyListTitleText);
                InventoryActivity_Google.this.fillBuyListData();
                InventoryActivity_Google.this.mBuyListDlg.show();
            }
        });
        int windowslotsnum = 5 * 3;
        int size2 = (int) (112.0f * heightrate);
        int textsize = size2 / 8;
        int slotwindowwidth = size2 * 5;
        this.mSkillSlotNum = 0;
        this.mSkillSlotWindowNum = 0;
        this.mSkillSlotWindowTotalNum = 1;
        ViewGroup.LayoutParams slotparams2 = new RelativeLayout.LayoutParams(size2, size2);
        RelativeLayout.LayoutParams slotparams1 = new RelativeLayout.LayoutParams(size2, size2);
        slotparams1.rightMargin = (int) (textsize * 1.2f);
        slotparams1.bottomMargin = (int) (textsize * 0.8f);
        HorizontalScrollView slotscrollview = (HorizontalScrollView) findViewById(R.id.ShopSlotHorizontalScrollView);
        slotscrollview.setLayoutParams(new LinearLayout.LayoutParams(slotwindowwidth, -1));
        this.mShopItemSlotsScrollView = slotscrollview;
        this.mShopItemSlotsLayout = new RelativeLayout[15];
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.ShopItemSlotsLayout);
        for (int i3 = 0; i3 < 1; i3++) {
            for (int j2 = 0; j2 < 5; j2++) {
                LinearLayout sublayout = new LinearLayout(this);
                sublayout.setOrientation(1);
                for (int z2 = 0; z2 < 3; z2++) {
                    int num2 = (j2 * 3) + z2 + (i3 * 15);
                    RelativeLayout slotlayout2 = new RelativeLayout(this);
                    slotlayout2.setTag(new StringBuilder().append(num2).toString());
                    if (num2 == 0) {
                        slotlayout2.setBackgroundResource(R.drawable.slot_s);
                    } else {
                        slotlayout2.setBackgroundResource(R.drawable.slot_n);
                    }
                    slotlayout2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.16
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            LOG.verbose(">> slotlayout::onClick()");
                            RelativeLayout layout = (RelativeLayout) v;
                            int slotnum = Integer.parseInt(layout.getTag().toString());
                            InventoryActivity_Google.this.selectShopItemSlot(layout, slotnum);
                        }
                    });
                    slotlayout2.addView(new ImageView(this), slotparams2);
                    TextView textview = new TextView(this);
                    textview.setTextSize(textsize);
                    textview.setGravity(85);
                    slotlayout2.addView(textview, slotparams1);
                    sublayout.addView(slotlayout2, slotparams2);
                    this.mShopItemSlotsLayout[num2] = slotlayout2;
                }
                linearLayout3.addView(sublayout, params);
            }
        }
        Button button2 = (Button) findViewById(R.id.ShopBuyButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.17
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Items.Item item;
                LOG.verbose(">> ShopBuyButton::onClick()");
                Items items = InventoryActivity_Google.this.mItems;
                int type = InventoryActivity_Google.this.mShopItemTypeSlotNum;
                int suptype = InventoryActivity_Google.this.mShopItemSlotNum;
                if (type > -1 && suptype > -1 && items.mTypeItem[type] != null && items.mTypeItem[type].mSubItem[suptype] != null && (item = items.mTypeItem[type].mSubItem[suptype]) != null) {
                    if (item.mMoney > 0) {
                        InventoryActivity_Google.this.setBuyItem(type, suptype, false);
                        InventoryActivity_Google.this.mBuyItemDlg.show();
                    } else {
                        InventoryActivity_Google.this.setBuyItem(type, suptype, true);
                        InventoryActivity_Google.this.mBuyItemDlg.show();
                    }
                }
            }
        });
        Button button3 = (Button) findViewById(R.id.ShopBackButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> ShopBackButton::onClick()");
                InventoryActivity_Google.this.mShopSlotsLayout[0].setVisibility(0);
                InventoryActivity_Google.this.mShopSlotsLayout[1].setVisibility(4);
                InventoryActivity_Google.this.mShopSlotsLayout[0].startAnimation(InventoryActivity_Google.this.mAnimation[1]);
                InventoryActivity_Google.this.mShopSlotsLayout[1].startAnimation(InventoryActivity_Google.this.mAnimation[0]);
                InventoryActivity_Google.this.playSound(0);
            }
        });
        Button button4 = (Button) findViewById(R.id.ShopSlotPreButton);
        button4.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.19
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> ShopSlotPreButton::onClick()");
                InventoryActivity_Google.this.setShopItemSlotWindowLocation(InventoryActivity_Google.this.mShopItemSlotWindowNum - 1);
            }
        });
        Button button5 = (Button) findViewById(R.id.ShopSlotNextButton);
        button5.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.20
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> ShopSlotNextButton::onClick()");
                InventoryActivity_Google.this.setShopItemSlotWindowLocation(InventoryActivity_Google.this.mShopItemSlotWindowNum + 1);
            }
        });
    }

    private void createSkillSlots(float widthrate, float heightrate) {
        LOG.verbose(">> createSkillSlots()");
        int i = 5 * 3;
        int size = (int) (112.0f * heightrate);
        int slotwindowwidth = size * 5;
        int textsize = size / 8;
        this.mSkillSlotNum = 0;
        this.mSkillSlotWindowNum = 0;
        this.mSkillSlotWindowTotalNum = 1;
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        ViewGroup.LayoutParams slotparams = new RelativeLayout.LayoutParams(size, size);
        RelativeLayout.LayoutParams slotparams1 = new RelativeLayout.LayoutParams(size, size);
        slotparams1.rightMargin = (int) (textsize * 1.2f);
        slotparams1.bottomMargin = (int) (textsize * 0.8f);
        HorizontalScrollView slotscrollview = (HorizontalScrollView) findViewById(R.id.SkillSlotHorizontalScrollView);
        slotscrollview.setLayoutParams(new LinearLayout.LayoutParams(slotwindowwidth, -1));
        this.mSkillSlotsScrollView = slotscrollview;
        this.mSkillSlotsLayout = new RelativeLayout[15];
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.SkillSlotsLayout);
        for (int i2 = 0; i2 < 1; i2++) {
            for (int j = 0; j < 5; j++) {
                LinearLayout sublayout = new LinearLayout(this);
                sublayout.setOrientation(1);
                for (int z = 0; z < 3; z++) {
                    int num = (j * 3) + z + (i2 * 15);
                    RelativeLayout slotlayout = new RelativeLayout(this);
                    slotlayout.setTag(new StringBuilder().append(num).toString());
                    if (num == 0) {
                        slotlayout.setBackgroundResource(R.drawable.slot_s);
                    } else {
                        slotlayout.setBackgroundResource(R.drawable.slot_n);
                    }
                    slotlayout.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.21
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            LOG.verbose(">> slotlayout::onClick()");
                            RelativeLayout layout = (RelativeLayout) v;
                            int slotnum = Integer.parseInt(layout.getTag().toString());
                            if (InventoryActivity_Google.this.mSkillSlotNum != slotnum) {
                                layout.setBackgroundResource(R.drawable.slot_s);
                                InventoryActivity_Google.this.mSkillSlotsLayout[InventoryActivity_Google.this.mSkillSlotNum].setBackgroundResource(R.drawable.slot_n);
                                InventoryActivity_Google.this.mSkillSlotNum = slotnum;
                                InventoryActivity_Google.this.setSkillText();
                            }
                        }
                    });
                    ImageView imageview = new ImageView(this);
                    slotlayout.addView(imageview, slotparams);
                    TextView textview = new TextView(this);
                    textview.setTextSize(textsize);
                    textview.setGravity(85);
                    slotlayout.addView(textview, slotparams1);
                    sublayout.addView(slotlayout, slotparams);
                    this.mSkillSlotsLayout[num] = slotlayout;
                }
                linearLayout.addView(sublayout, params);
            }
        }
        Button button = (Button) findViewById(R.id.SkillSlotPreButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.22
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> SkillSlotPreButton::onClick()");
                InventoryActivity_Google.this.setSkillSlotWindowLocation(InventoryActivity_Google.this.mSkillSlotWindowNum - 1);
            }
        });
        Button button2 = (Button) findViewById(R.id.SkillSlotNextButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.23
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> SkillSlotNextButton::onClick()");
                InventoryActivity_Google.this.setSkillSlotWindowLocation(InventoryActivity_Google.this.mSkillSlotWindowNum + 1);
            }
        });
        Button button3 = (Button) findViewById(R.id.SkillLearnButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.24
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                Objects.Skills.Skill skill;
                LOG.verbose(">> SkillLearnButton::onClick()");
                int index = InventoryActivity_Google.this.mSkillSlotNum;
                if (index > -1 && (skill = InventoryActivity_Google.this.mSkills.mSkill[index]) != null) {
                    if (skill.mBuy) {
                        InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.alreadylearn);
                    } else {
                        InventoryActivity_Google.this.setLearnSkill(index);
                        InventoryActivity_Google.this.mLearnSkillDlg.show();
                    }
                }
            }
        });
        TextView textview2 = (TextView) findViewById(R.id.SkillPointNumTextView);
        textview2.setText(new StringBuilder().append(this.mPoint).toString());
        this.mSkillPointNumTextView = textview2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeItemSlots(int touchx, int touchy, int standardx, int standardy, int index) {
        LOG.verbose(">> changeItemSlots()");
        Items.Item item = this.mItems.mItem[index];
        int min = this.mSlotWindowNum * this.mMoveItemView.mWindowNum;
        int slotnum = this.mMoveItemView.touchTile(touchx, touchy, standardx, standardy, this.mSlotWindowNum);
        if (slotnum >= min && slotnum < this.mMoveItemView.mWindowNum + min) {
            int index1 = this.mItems.getIndex(slotnum);
            if (index1 < 0) {
                int slotnum1 = item.mSlotnum;
                if (slotnum1 < 0) {
                    setItemSetSlot(item.mType, -1);
                } else {
                    setItemSlot(slotnum1, -1);
                }
                setItemSlot(slotnum, index);
            } else {
                int slotnum12 = item.mSlotnum;
                if (slotnum12 < 0) {
                    if (item.mType == this.mItems.mItem[index1].mType) {
                        setItemSetSlot(item.mType, index1);
                        setItemSlot(slotnum, index);
                    } else {
                        setItemSetSlot(item.mType, -1);
                        setItemSlot(item);
                    }
                } else {
                    setItemSlot(slotnum12, index1);
                    setItemSlot(slotnum, index);
                }
            }
        }
        setItemText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean changeSetItemSlots(int touchx, int touchy, int standardx, int standardy, int index) {
        LOG.verbose(">> changeSetItemSlots()");
        int[] typetable = this.mSetItemTypeTable;
        Items.Item item = this.mItems.mItem[index];
        int slotnum = this.mMoveItemView.touchRect(touchx, touchy, standardx, standardy);
        if (slotnum > -1 && slotnum < typetable.length) {
            if (slotnum == item.mType) {
                int index1 = this.mItems.getSetIndex(item.mType);
                if (index1 < 0) {
                    setItemSlot(setItemSetSlot(item.mType, index), -1);
                } else {
                    setItemSlot(setItemSetSlot(item.mType, index), index1);
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemSlot(int slotnum, int itemindex) {
        LOG.verbose(">> setItemSlot()");
        RelativeLayout slotslayout = this.mSlotsLayout[slotnum];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        if (itemindex < 0) {
            recycleView(imageview);
            textview.setText(GameView.CHARACTER_AI);
            return;
        }
        Items.Item item = this.mItems.mItem[itemindex];
        if (item.mIconImgPath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
            img.setAlpha(-1);
            imageview.setBackgroundDrawable(img);
        } else {
            imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
        }
        if (item.mType == 2 || item.mType == 3) {
            textview.setText(new StringBuilder().append(item.mNum).toString());
        }
        item.mSlotnum = slotnum;
        item.mSet = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemSlot(int slotnum, Items.Item item) {
        LOG.verbose(">> setItemSlot()");
        RelativeLayout slotslayout = this.mSlotsLayout[slotnum];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        if (item.mIconImgPath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
            img.setAlpha(-1);
            imageview.setBackgroundDrawable(img);
        } else {
            imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
        }
        if (item.mType == 2 || item.mType == 3) {
            textview.setText(new StringBuilder().append(item.mNum).toString());
        }
    }

    private int setItemSetSlot(int type, int itemindex) {
        LOG.verbose(">> setSkillSlotWindowLocation()");
        int slotnum = -1;
        RelativeLayout slotslayout = this.mSetSlotsLayout[type];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        if (itemindex < 0) {
            recycleView(imageview);
            textview.setText(GameView.CHARACTER_AI);
        } else {
            Items.Item item = this.mItems.mItem[itemindex];
            if (item.mIconImgPath == null) {
                BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
                img.setAlpha(-1);
                imageview.setBackgroundDrawable(img);
            } else {
                imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
            }
            if (item.mType == 2 || item.mType == 3) {
                textview.setText(new StringBuilder().append(item.mNum).toString());
            }
            item.mSet = true;
            slotnum = item.mSlotnum;
            item.mSlotnum = -1;
        }
        this.mItems.setSetTable(type, itemindex);
        if (type == 0) {
            setAttackText();
        } else if (type == 1) {
            setDefenseText();
        }
        return slotnum;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setItemSetSlot(int type, Items.Item item) {
        LOG.verbose(">> setItemSetSlot()");
        RelativeLayout slotslayout = this.mSetSlotsLayout[type];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        if (item.mIconImgPath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
            img.setAlpha(-1);
            imageview.setBackgroundDrawable(img);
        } else {
            imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
        }
        if (type == 2 || type == 3) {
            textview.setText(new StringBuilder().append(item.mNum).toString());
        }
        int slotnum = item.mSlotnum;
        if (type == 0) {
            setAttackText();
        } else if (type == 1) {
            setDefenseText();
        }
        return slotnum;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setItemSlot(Items.Item item) {
        LOG.verbose(">> setItemSlot()");
        RelativeLayout[] slotslayout = this.mSlotsLayout;
        int length = slotslayout.length;
        for (int i = 0; i < length; i++) {
            ImageView imageview = (ImageView) slotslayout[i].getChildAt(0);
            TextView textview = (TextView) slotslayout[i].getChildAt(1);
            if (imageview.getBackground() == null) {
                if (item.mIconImgPath == null) {
                    BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
                    img.setAlpha(-1);
                    imageview.setBackgroundDrawable(img);
                } else {
                    imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
                }
                if (item.mType == 2 || item.mType == 3) {
                    textview.setText(new StringBuilder().append(item.mNum).toString());
                }
                item.mSlotnum = i;
                item.mSet = false;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSkillSlot(int index) {
        LOG.verbose(">> setSkillSlot()");
        RelativeLayout slotslayout = this.mSkillSlotsLayout[index];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        Objects.Skills.Skill skill = this.mSkills.mSkill[index];
        if (skill.mIconImgId != -1) {
            if (skill.mIconImgPath == null) {
                BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(skill.mIconImgId));
                img.setAlpha(-1);
                imageview.setBackgroundDrawable(img);
            } else {
                imageview.setBackgroundDrawable(Drawable.createFromPath(skill.mIconImgPath));
            }
            if (skill.mBuy) {
                textview.setText(new StringBuilder().append(skill.mUpgrade).toString());
            } else {
                imageview.setImageDrawable(this.mCoverImg);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShopSlot(int type, int subtype) {
        LOG.verbose(">> setShopSlot()");
        RelativeLayout slotslayout = this.mShopItemSlotsLayout[subtype];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        Items.Item item = this.mItems.mTypeItem[type].mSubItem[subtype];
        if (item.mIconImgPath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
            img.setAlpha(-1);
            imageview.setBackgroundDrawable(img);
        } else {
            imageview.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
        }
        if (item.mType == 2 || item.mType == 3) {
            textview.setText(new StringBuilder().append(item.mNum).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearShopSlot(int index) {
        LOG.verbose(">> clearShopSlot()");
        RelativeLayout slotslayout = this.mShopItemSlotsLayout[index];
        ImageView imageview = (ImageView) slotslayout.getChildAt(0);
        TextView textview = (TextView) slotslayout.getChildAt(1);
        recycleView(imageview);
        textview.setText(GameView.CHARACTER_AI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemText() {
        String text;
        LOG.verbose(">> setItemText()");
        this.mExplainTextView.setText(GameView.CHARACTER_AI);
        Items items = this.mItems;
        int index = items.getIndex(this.mSlotNum);
        if (index > -1 && index < items.mItem.length && items.mItem[index] != null && (text = items.mItem[index].mText) != null) {
            this.mExplainTextView.setText(text);
        }
    }

    private void setShopItemText() {
        String text;
        LOG.verbose(">> setShopItemText()");
        this.mShopExplainTextView.setText(GameView.CHARACTER_AI);
        Items items = this.mItems;
        int type = this.mShopItemTypeSlotNum;
        int subtype = this.mShopItemSlotNum;
        if (type > -1 && type < items.mTypeItem.length && subtype > -1 && subtype < items.mTypeItem[type].mSubItem.length && items.mTypeItem[type] != null && items.mTypeItem[type].mSubItem[subtype] != null && (text = items.mTypeItem[type].mSubItem[subtype].mText) != null) {
            this.mShopExplainTextView.setText(text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSkillText() {
        LOG.verbose(">> setSkillText()");
        this.mSkillExplainTextView.setText(GameView.CHARACTER_AI);
        int index = this.mSkillSlotNum;
        Objects.Skills skills = this.mSkills;
        if (index > -1 && index < skills.mSkillTotalnum && skills.mSkill[index] != null) {
            String text = skills.mSkill[index].mText;
            if (text != null) {
                this.mSkillExplainTextView.setText(skills.mSkill[index].mText);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectShopItemSlot(RelativeLayout layout, int slotnum) {
        LOG.verbose(">> selectShopItemSlot()");
        if (this.mShopItemSlotNum != slotnum) {
            layout.setBackgroundResource(R.drawable.slot_s);
            this.mShopItemSlotsLayout[this.mShopItemSlotNum].setBackgroundResource(R.drawable.slot_n);
            this.mShopItemSlotNum = slotnum;
        }
        setShopItemText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSlotImageAlpha(int index, boolean alpha) {
        LOG.verbose(">> setSlotImageAlpha()");
        ImageView imageview = (ImageView) this.mSlotsLayout[this.mItems.mItem[index].mSlotnum].getChildAt(0);
        if (alpha) {
            imageview.setImageDrawable(this.mCoverImg);
        } else {
            imageview.setImageDrawable(null);
        }
    }

    private void setSetSlotImageAlpha(int index, boolean alpha) {
        LOG.verbose(">> setSetSlotImageAlpha()");
        int type = this.mItems.mItem[index].mType;
        if (type > -1 && type < this.mSetSlotsLayout.length) {
            ImageView imageview = (ImageView) this.mSetSlotsLayout[type].getChildAt(0);
            if (alpha) {
                imageview.setImageDrawable(this.mCoverImg);
            } else {
                imageview.setImageDrawable(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMoveItemImage(int index) {
        LOG.verbose(">> setMoveItemImage()");
        if (index < 0) {
            this.mMoveItemView.clearImage();
            this.mMoveItemView.mIndex = -1;
            return;
        }
        String imgpath = this.mItems.mItem[index].mIconImgPath;
        if (imgpath == null) {
            this.mMoveItemView.setImage(this.mItems.mItem[index].mIconImgId);
        } else {
            this.mMoveItemView.setImage(this.mItems.mItem[index].mIconImgPath);
        }
        this.mMoveItemView.mIndex = index;
    }

    class MoveView {
        public static final int RECT_LENGTH = 10;
        public int mColumNum;
        public int mHalfSize;
        public ImageView mImageView;
        public int mIndex;
        public Rect[] mRect;
        public int mRowNum;
        public int mSize;
        public int mWindowNum;

        public MoveView(ImageView imageview, int size, int colum, int row) {
            LOG.verbose(">> MoveView()");
            this.mImageView = imageview;
            this.mImageView.setLayoutParams(new RelativeLayout.LayoutParams(size, size));
            this.mRect = new Rect[10];
            this.mIndex = -1;
            this.mSize = size;
            this.mHalfSize = size / 2;
            this.mColumNum = colum;
            this.mRowNum = row;
            this.mWindowNum = colum * row;
        }

        public void setImage(int id) {
            LOG.verbose(">> setImage()");
            BitmapDrawable img = new BitmapDrawable(InventoryActivity_Google.this.getResources().openRawResource(id));
            this.mImageView.setBackgroundDrawable(img);
        }

        public void setImage(String path) {
            LOG.verbose(">> setImage()");
            this.mImageView.setBackgroundDrawable(Drawable.createFromPath(path));
        }

        public void clearImage() {
            LOG.verbose(">> clearImage()");
            this.mImageView.setBackgroundDrawable(null);
        }

        public void appearView() {
            LOG.verbose(">> appearView()");
            this.mImageView.setVisibility(0);
        }

        public void fadeView() {
            LOG.verbose(">> fadeView()");
            this.mImageView.setVisibility(4);
            this.mIndex = -1;
        }

        public void move(int tx, int ty, int standardx, int standardy) {
            LOG.verbose(">> move()");
            int halfsize = this.mHalfSize;
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) this.mImageView.getLayoutParams();
            params.leftMargin = (tx + standardx) - halfsize;
            params.topMargin = (ty + standardy) - halfsize;
            this.mImageView.setLayoutParams(params);
        }

        public int touchTile(int tx, int ty, int standardx, int standardy, int pagenum) {
            LOG.verbose(">> touchTile()");
            int slotsize = this.mSize;
            int tx2 = tx + standardx;
            int x = tx2 / slotsize;
            int y = (ty + standardy) / slotsize;
            if (tx2 <= -1 || x <= -1 || x >= this.mColumNum || y <= -1 || y >= this.mRowNum) {
                return -1;
            }
            return (this.mRowNum * x) + y + (this.mColumNum * pagenum);
        }

        public int getTileStandardX(int num) {
            LOG.verbose(">> getTileStandardX()");
            return this.mSize * (num / this.mRowNum);
        }

        public int getTileStandardY(int num) {
            LOG.verbose(">> getTileStandardY()");
            return this.mSize * (num % this.mRowNum);
        }

        public int touchRect(int tx, int ty, int standardx, int standardy) {
            LOG.verbose(">> touchRect()");
            int tx2 = tx + standardx;
            int ty2 = ty + standardy;
            for (int i = 0; i < 10; i++) {
                Rect rect = this.mRect[i];
                if (rect != null && rect.left < tx2 && rect.right > tx2 && rect.top < ty2 && rect.bottom > ty2) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActionMove(int touchx, int touchy, int standardx, int standardy) {
        LOG.verbose(">> isActionMove()");
        int touchx2 = touchx + standardx;
        int touchy2 = touchy + standardy;
        if (this.mFirstTouchX > -1.0f && this.mFirstTouchY > -1.0f) {
            float standard = this.mMoveStandard;
            float distancex = this.mFirstTouchX - touchx2;
            float distancey = this.mFirstTouchY - touchy2;
            if (distancex > (-standard) && distancex < standard && distancey > (-standard) && distancey < standard) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFirstTouch(int x, int y, int standardx, int standardy) {
        LOG.verbose(">> setFirstTouch()");
        this.mFirstTouchX = x + standardx;
        this.mFirstTouchY = y + standardy;
    }

    private Bitmap drawImg(Drawable bodyimg, Drawable poseimg, Drawable faceimg, float widthrate, float heightrate) {
        LOG.verbose(">> drawImg()");
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

    private Drawable compressBitmap(Bitmap bitmap) {
        LOG.verbose(">> compressBitmap()");
        ByteArrayOutputStream bytearray = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, bytearray);
        ByteArrayInputStream in = new ByteArrayInputStream(bytearray.toByteArray());
        return Drawable.createFromStream(in, GameActivity.JSON_NAME_IMAGES_IMG);
    }

    private String getImagePath(Uri imageuri) {
        LOG.verbose(">> getImagePath()");
        String path = null;
        String[] projection = {"_data"};
        Cursor cursor = managedQuery(imageuri, projection, null, null, null);
        if (cursor != null) {
            int index = cursor.getColumnIndexOrThrow("_data");
            if (cursor.moveToFirst()) {
                path = cursor.getString(index);
            }
            cursor.close();
        }
        return path;
    }

    private String getLastImagePath() {
        LOG.verbose(">> getLastImagePath()");
        String path = null;
        String[] projection = {"_data", "_data"};
        Cursor cursor = managedQuery(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, projection, null, null, null);
        if (cursor != null) {
            if (cursor.moveToLast()) {
                path = cursor.getString(0);
            }
            cursor.close();
        }
        return path;
    }

    private String cutImage(String imgpath) {
        LOG.verbose(">> cutImage()");
        String path = null;
        Uri uri = Uri.fromFile(new File(imgpath));
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("scale", true);
        try {
            path = String.valueOf(getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getPath()) + CHARACTER_FILENAME;
            File file = new File(path);
            file.createNewFile();
            Uri uri1 = Uri.fromFile(file);
            intent.putExtra("output", uri1);
        } catch (IOException e) {
            e.printStackTrace();
        }
        startActivityForResult(intent, 300);
        return path;
    }

    private void createDeleteItemDlg() {
        LOG.verbose(">> createDeleteItemDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.deleteitem);
        this.mDeleteItemImageView = (ImageView) dialog.findViewById(R.id.ItemImageView);
        Button button = (Button) dialog.findViewById(R.id.YesButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.25
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                int index;
                int slotnum;
                String tag = InventoryActivity_Google.this.mDeleteItemImageView.getTag().toString();
                if (tag != null && (index = Integer.parseInt(tag)) > -1 && index < InventoryActivity_Google.this.mItems.mItemTotalnum && (slotnum = InventoryActivity_Google.this.mItems.mItem[index].mSlotnum) > -1) {
                    InventoryActivity_Google.this.setItemSlot(slotnum, -1);
                    InventoryActivity_Google.this.mItems.destroyItem(index);
                }
                InventoryActivity_Google.this.mDeleteItemDlg.cancel();
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.NoButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.26
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                InventoryActivity_Google.this.mDeleteItemDlg.cancel();
            }
        });
        this.mDeleteItemDlg = dialog;
    }

    private void createBuyItemDlg() {
        LOG.verbose(">> createBuyItemDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.deleteitem);
        this.mBuyItemText = getResources().getString(R.string.buyitem);
        this.mBuyItemText1 = getResources().getString(R.string.buyitem1);
        this.mBuyItemTextView = (TextView) dialog.findViewById(R.id.MessageTextView);
        this.mBuyItemImageView = (ImageView) dialog.findViewById(R.id.ItemImageView);
        Button button = (Button) dialog.findViewById(R.id.YesButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.27
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> YesButton::onClick()");
                String tag = InventoryActivity_Google.this.mBuyItemImageView.getTag().toString();
                if (tag != null) {
                    String[] data = tag.split(" ");
                    int type = Integer.parseInt(data[0]);
                    int subtype = Integer.parseInt(data[1]);
                    Items.Item typeitem = InventoryActivity_Google.this.mItems.mTypeItem[type].mSubItem[subtype];
                    if (typeitem.mMoney > 0) {
                        InventoryActivity_Google.this.purchaseItem(typeitem);
                    } else if (typeitem.mPrice > InventoryActivity_Google.this.mCoin) {
                        InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.lackcoin);
                    } else {
                        ImageView imageview = (ImageView) InventoryActivity_Google.this.mShopItemSlotsLayout[subtype].getChildAt(0);
                        imageview.startAnimation(InventoryActivity_Google.this.mAnimation[2]);
                        Items.Item item = InventoryActivity_Google.this.mItems.checkOverlap(type, subtype);
                        if (item == null) {
                            if (type == 5) {
                                if (InventoryActivity_Google.this.mSkills.mSetSkillActiveIndexTable[typeitem.mPower]) {
                                    InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.alreadybuy);
                                } else {
                                    InventoryActivity_Google.this.mSkills.mSetSkillActiveIndexTable[typeitem.mPower] = true;
                                    InventoryActivity_Google.this.sendSpendCoin(typeitem.mPrice);
                                }
                            } else {
                                InventoryActivity_Google.this.sendBuyItem(typeitem);
                            }
                        } else if (type != 2 && type != 3) {
                            InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.alreadybuy);
                        } else {
                            InventoryActivity_Google.this.sendBuyItem(typeitem);
                        }
                    }
                }
                InventoryActivity_Google.this.mBuyItemDlg.cancel();
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.NoButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.28
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> NoButton::onClick()");
                InventoryActivity_Google.this.mBuyItemDlg.cancel();
            }
        });
        this.mBuyItemDlg = dialog;
    }

    private void createLearnSkillDlg() {
        LOG.verbose(">> createLearnSkillDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.deleteitem);
        this.mLearnSkillText = getResources().getString(R.string.learnskill);
        this.mLearnSkillTextView = (TextView) dialog.findViewById(R.id.MessageTextView);
        this.mLearnSkillImageView = (ImageView) dialog.findViewById(R.id.ItemImageView);
        Button button = (Button) dialog.findViewById(R.id.YesButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.29
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> YesButton::onClick()");
                String tag = InventoryActivity_Google.this.mLearnSkillImageView.getTag().toString();
                if (tag != null) {
                    int index = Integer.parseInt(tag);
                    if (InventoryActivity_Google.this.mPoint < InventoryActivity_Google.this.mSkills.mSkill[index].mPoint) {
                        InventoryActivity_Google.this.mCommonDialog.showNoticeDlg(R.string.lackpoint);
                    } else {
                        InventoryActivity_Google.this.sendLearnSkill(index);
                    }
                }
                InventoryActivity_Google.this.mLearnSkillDlg.cancel();
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.NoButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.30
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> NoButton::onClick()");
                InventoryActivity_Google.this.mLearnSkillDlg.cancel();
            }
        });
        this.mLearnSkillDlg = dialog;
    }

    private void createBuyListDlg() {
        LOG.verbose(">> createBuyListDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.buylist);
        this.mBuyListTitleTextView = (TextView) dialog.findViewById(R.id.TitleTextView);
        this.mBuyListView = (ListView) dialog.findViewById(R.id.ListView);
        ImageButton imagebutton = (ImageButton) dialog.findViewById(R.id.CloseImageButton);
        imagebutton.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.InventoryActivity_Google.31
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                InventoryActivity_Google.this.mBuyListDlg.cancel();
            }
        });
        this.mBuyListDlg = dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBuyItem(Items.Item item) {
        LOG.verbose(">> sendBuyItem()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        if (!connectnetwork.isConnecting()) {
            connectnetwork.setServerUri(Property.SERVER_DOMAIN, SERVER_FILE_BUYITEM);
            connectnetwork.clearParameter();
            connectnetwork.setParameter(PARAMETER_ID, this.mUserId);
            connectnetwork.setParameter(PARAMETER_ITMENO, new StringBuilder().append(item.mTypeNo).toString());
            connectnetwork.setParameter("coin", new StringBuilder().append(item.mPrice).toString());
            int num = item.mNum;
            if (num > 99) {
                num = 99;
            }
            connectnetwork.setParameter(PARAMETER_QUANTITY, new StringBuilder().append(num).toString());
            this.mCommonDialog.showProgressDlg();
            connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, String.valueOf(item.mType) + "," + item.mSubType, this.mBuyResultHandler);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLearnSkill(int index) {
        LOG.verbose(">> sendLearnSkill()");
        Objects.Skills.Skill skill = this.mSkills.mSkill[index];
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        if (!connectnetwork.isConnecting()) {
            connectnetwork.setServerUri(Property.SERVER_DOMAIN, SERVER_FILE_LEARNSKILL);
            connectnetwork.clearParameter();
            connectnetwork.setParameter(PARAMETER_ID, this.mUserId);
            connectnetwork.setParameter(PARAMETER_SKILLID, new StringBuilder().append(skill.mId).toString());
            connectnetwork.setParameter("point", new StringBuilder().append(skill.mPoint).toString());
            connectnetwork.setParameter(PARAMETER_QUANTITY, InAppError.FAILED);
            this.mCommonDialog.showProgressDlg();
            connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(index).toString(), this.mLearnResultHandler);
        }
    }

    public void sendAddCoin(long coin) {
        LOG.verbose(">> sendAddCoin()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        connectnetwork.setServerUri(Property.SERVER_DOMAIN, SERVER_FILE_ADDCOIN);
        connectnetwork.clearParameter();
        connectnetwork.setParameter(PARAMETER_ID, this.mUserId);
        connectnetwork.setParameter("coin", new StringBuilder().append(coin).toString());
        this.mCommonDialog.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(-coin).toString(), this.mCoinResultHandler);
    }

    public void sendSpendCoin(long coin) {
        LOG.verbose(">> sendSpendCoin()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        connectnetwork.setServerUri(Property.SERVER_DOMAIN, SERVER_FILE_SPENDCOIN);
        connectnetwork.clearParameter();
        connectnetwork.setParameter(PARAMETER_ID, this.mUserId);
        connectnetwork.setParameter("coin", new StringBuilder().append(coin).toString());
        this.mCommonDialog.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(coin).toString(), this.mCoinResultHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeleteItem(int index) {
        LOG.verbose(">> setDeleteItem()");
        String imgpath = this.mItems.mItem[index].mIconImgPath;
        if (imgpath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(this.mItems.mItem[index].mIconImgId));
            img.setAlpha(-1);
            this.mDeleteItemImageView.setBackgroundDrawable(img);
        } else {
            this.mDeleteItemImageView.setBackgroundDrawable(Drawable.createFromPath(this.mItems.mItem[index].mIconImgPath));
        }
        this.mDeleteItemImageView.setTag(new StringBuilder().append(index).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBuyItem(int type, int subtype, boolean price) {
        LOG.verbose(">> setBuyItem()");
        Items.Item item = this.mItems.mTypeItem[type].mSubItem[subtype];
        String imgpath = item.mIconImgPath;
        if (imgpath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(item.mIconImgId));
            img.setAlpha(-1);
            this.mBuyItemImageView.setBackgroundDrawable(img);
        } else {
            this.mBuyItemImageView.setBackgroundDrawable(Drawable.createFromPath(item.mIconImgPath));
        }
        this.mBuyItemTextView.setText(price ? String.valueOf(item.mPrice) + " " + this.mBuyItemText : String.valueOf(item.mMoney) + " " + this.mBuyItemText1);
        this.mBuyItemImageView.setTag(String.valueOf(type) + " " + subtype);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLearnSkill(int index) {
        LOG.verbose(">> setLearnSkill()");
        String imgpath = this.mSkills.mSkill[index].mIconImgPath;
        if (imgpath == null) {
            BitmapDrawable img = new BitmapDrawable(getResources().openRawResource(this.mSkills.mSkill[index].mIconImgId));
            img.setAlpha(-1);
            this.mLearnSkillImageView.setBackgroundDrawable(img);
        } else {
            this.mLearnSkillImageView.setBackgroundDrawable(Drawable.createFromPath(this.mSkills.mSkill[index].mIconImgPath));
        }
        this.mLearnSkillTextView.setText(String.valueOf(this.mSkills.mSkill[index].mPoint) + " " + this.mLearnSkillText);
        this.mLearnSkillImageView.setTag(new StringBuilder().append(index).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateCoin(int price) {
        LOG.verbose(">> calculateCoin()");
        long coin = this.mCoin - ((long) price);
        this.mCoinNumTextView.setText(new StringBuilder().append(coin).toString());
        this.mShopCoinNumTextView.setText(new StringBuilder().append(coin).toString());
        this.mCoin = coin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillBuyListData() {
        LOG.verbose(">> fillBuyListData()");
        ArrayList<BuyList> list = new ArrayList<>();
        new StringBuffer();
        try {
            String line = getStringFromUrl(Property.SERVER_DOMAIN + Property.SERVER_URL_BUYLIST + this.mUserId);
            JSONObject jsonObject = new JSONObject(line);
            JSONArray jsonArray = new JSONArray(jsonObject.getString(GameActivity.JSON_NAME_IMAGES_LIST));
            LOG.debug(line);
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject subjsonobject = jsonArray.getJSONObject(i);
                list.add(new BuyList(subjsonobject.getString(GameActivity.JSON_NAME_IMAGES_REGDATE), subjsonobject.getString("itemName"), subjsonobject.getString(PARAMETER_QUANTITY)));
            }
        } catch (Exception e) {
        }
        BuyListAdapter adapter = new BuyListAdapter(this, R.layout.buylist_listrow, list);
        this.mBuyListView.setAdapter((ListAdapter) adapter);
    }

    public String getStringFromUrl(String url) throws UnsupportedEncodingException {
        LOG.verbose(">> getStringFromUrl()");
        BufferedReader brd = new BufferedReader(new InputStreamReader(getInputStreamFromUrl(url), "UTF-8"));
        LOG.debug(url);
        StringBuffer sbf = new StringBuffer();
        while (true) {
            try {
                String line = brd.readLine();
                if (line == null) {
                    break;
                }
                sbf.append(line);
                LOG.debug(line);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sbf.toString();
    }

    public static InputStream getInputStreamFromUrl(String url) {
        LOG.verbose(">> getInputStreamFromUrl()");
        InputStream contentStream = null;
        try {
            HttpClient httpClient = new DefaultHttpClient();
            HttpResponse response = httpClient.execute(new HttpGet(url));
            LOG.debug(url);
            contentStream = response.getEntity().getContent();
            LOG.debug(new StringBuilder().append(contentStream).toString());
            return contentStream;
        } catch (Exception e) {
            e.printStackTrace();
            return contentStream;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyPurchaseItem(Items.Item item) {
        LOG.verbose(">> applyPurchaseItem()");
        if (item.mType == 4 || item.mType == 5) {
            sendAddCoin(item.mPower);
        }
    }

    class BuyListAdapter extends ArrayAdapter<BuyList> {
        private int mResource;

        public BuyListAdapter(Context context, int resource, List<BuyList> items) {
            super(context, resource, items);
            LOG.verbose(">> BuyListAdapter()");
            this.mResource = resource;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            LOG.verbose(">> getView()");
            LinearLayout itemview = new LinearLayout(getContext());
            BuyList item = getItem(position);
            LayoutInflater vi = (LayoutInflater) getContext().getSystemService("layout_inflater");
            vi.inflate(this.mResource, (ViewGroup) itemview, true);
            TextView textview = (TextView) itemview.findViewById(R.id.DateTextView);
            textview.setText(item.mDate);
            TextView textview2 = (TextView) itemview.findViewById(R.id.ItemTextView);
            textview2.setText(item.mName);
            TextView textview3 = (TextView) itemview.findViewById(R.id.NumTextView);
            textview3.setText(item.mNum);
            return itemview;
        }
    }

    class BuyList {
        public String mDate;
        public String mName;
        public String mNum;

        public BuyList(String date, String name, String num) {
            LOG.verbose(">> BuyList()");
            this.mDate = date;
            this.mName = name;
            this.mNum = num;
        }
    }

    public class ActionRunnable implements Runnable {
        private int mX;

        public ActionRunnable(int x) {
            LOG.verbose(">> ActionRunnable()");
            this.mX = x;
        }

        @Override // java.lang.Runnable
        public void run() {
            LOG.verbose(">> ActionRunnable::run()");
            InventoryActivity_Google.this.mSlotsScrollView.smoothScrollTo(this.mX, 0);
        }
    }

    private void createLoadingView() {
        LOG.verbose(">> createLoadingView()");
        RelativeLayout layout = (RelativeLayout) findViewById(R.id.BgLayout);
        layout.removeAllViews();
        layout.setBackgroundColor(Color.rgb(174, 222, 228));
        int margin = (int) (20.0f * this.mHeightRate);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-2, -2);
        params.addRule(11, -1);
        params.addRule(12, -1);
        params.setMargins(margin, margin, margin, margin);
        TextView textview = new TextView(this);
        textview.setText(R.string.loading);
        textview.setTextColor(Color.parseColor("#146E9D"));
        textview.setTextSize(40.0f * this.mHeightRate);
        layout.addView(textview, params);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        LOG.verbose(">> onKeyUp()");
        if (keyCode != 4) {
            return super.onKeyUp(keyCode, event);
        }
        this.mLoadingView = true;
        finish();
        overridePendingTransition(R.anim.move_lock, R.anim.move_up);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        LOG.verbose(">> onTouchEvent()");
        int touchx = (int) event.getX();
        int touchy = (int) event.getY();
        switch (event.getAction()) {
            case 0:
                int[] setitemtypetable = this.mSetItemTypeTable;
                int slotnum = this.mMoveItemView.touchRect(touchx, touchy, 0, 0);
                if (slotnum > -1 && slotnum < setitemtypetable.length) {
                    setMoveItemImage(this.mItems.getSetIndex(setitemtypetable[slotnum]));
                }
                setFirstTouch(touchx, touchy, 0, 0);
                return true;
            case 1:
                int index = this.mMoveItemView.mIndex;
                if (index > -1) {
                    this.mMoveItemView.move(touchx, touchy, 0, 0);
                    setSetSlotImageAlpha(index, false);
                    changeItemSlots(touchx, touchy, -this.mSlotWindowX, -this.mSlotWindowY, index);
                }
                this.mMoveItemView.fadeView();
                setFirstTouch(-1, -1, 0, 0);
                return true;
            case 2:
                if (isActionMove(touchx, touchy, 0, 0)) {
                    int index2 = this.mMoveItemView.mIndex;
                    if (index2 > -1) {
                        this.mMoveItemView.move(touchx, touchy, 0, 0);
                        this.mMoveItemView.appearView();
                        setSetSlotImageAlpha(index2, true);
                    }
                    setFirstTouch(-1, -1, 0, 0);
                }
                return true;
            default:
                return true;
        }
    }

    @Override // com.findit.battle.iap.activity.InAppBillingActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        String path;
        super.onActivityResult(requestCode, resultCode, data);
        LOG.verbose(">> onActivityResult()");
        switch (requestCode) {
            case 100:
                if (data != null && (path = getLastImagePath()) != null) {
                    this.mCutImagePath = cutImage(path);
                    break;
                }
                break;
            case 200:
                if (data != null) {
                    Uri imageuri = data.getData();
                    String path2 = getImagePath(imageuri);
                    if (path2 != null) {
                        this.mCutImagePath = cutImage(path2);
                    }
                }
                break;
            case 300:
                if (this.mCutImagePath != null) {
                    Drawable image = Drawable.createFromPath(this.mCutImagePath);
                    Bitmap bitmap = drawImg(this.mBodyImg, this.mActionImg, image, this.mWidthRate, this.mHeightRate);
                    this.mCharacterImageView.setBackgroundDrawable(compressBitmap(bitmap));
                    bitmap.recycle();
                }
                break;
            case InAppBillingActivity.INAPP_RESULT_ACTIVITY_CODE /* 1001 */:
                if (resultCode == -1) {
                    try {
                        JSONObject oPurchase = new JSONObject(data.getStringExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA));
                        String strProductId = oPurchase.optString("productId");
                        for (int i = 0; i < ITEM_ID_COIN_COLLECTION.length; i++) {
                            if (ITEM_ID_COIN_COLLECTION[i].equals(strProductId)) {
                                int nPurchasedCoin = this.mPurchaseItemMap.get(ITEM_ID_COIN_COLLECTION[i]).mPower;
                                this.mCoin += (long) nPurchasedCoin;
                                saveStatusToDB();
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        return;
                    }
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purchaseItem(Items.Item item) {
        LOG.verbose(">> purchaseItem()");
        HashMap<String, Items.Item> map = this.mPurchaseItemMap;
        String[] keys = this.mPurchaseItemKey;
        int size = keys.length;
        for (int i = 0; i < size; i++) {
            if (map.get(keys[i]).equals(item)) {
                this.mPurchaseId = keys[i];
                buyItem(this.mPurchaseId);
                return;
            }
        }
    }
}
