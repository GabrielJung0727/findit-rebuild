package com.findit.battle;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.findit.battle.Items;
import com.findit.battle.Objects;
import com.findit.battle.finals.LOG;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GameActivity extends Activity {
    public static final String ANSWER_PASS = "000";
    private static final String AUTOLOGIN_OFF = "off";
    private static final String AUTOLOGIN_ON = "on";
    public static final String CODE_CREATEBATTLEROOM = "101";
    public static final String CODE_ENTERBATTLEROOM = "103";
    public static final String CODE_EXITBATTLEROOM = "102";
    public static final String CODE_GAME = "106";
    public static final String CODE_INVITE = "107";
    public static final String CODE_READY = "104";
    public static final String CODE_USERLIST = "100";
    public static final int CONNECTSOCKET_CLOSEWAITINGROOM = 1;
    public static final int CONNECTSOCKET_SHOWWAITINGROOM = 0;
    public static final String FORDER_IMAGE = "/image/";
    public static final String FORDER_SOUND = "/sound/";
    private static final String JSON_NAME_CHARACTER = "userCharacter";
    private static final String JSON_NAME_COIN = "coin";
    private static final String JSON_NAME_COUNT = "count";
    private static final String JSON_NAME_IMAGES = "images";
    public static final String JSON_NAME_IMAGES_ADID = "adId";
    public static final String JSON_NAME_IMAGES_ADIMAGE = "adImage";
    public static final String JSON_NAME_IMAGES_ADNAME = "adName";
    public static final String JSON_NAME_IMAGES_EXPIREDATE = "expireDate";
    public static final String JSON_NAME_IMAGES_HEIGHT = "ySize";
    public static final String JSON_NAME_IMAGES_IMG = "img";
    public static final String JSON_NAME_IMAGES_IMGCUT = "imageCut";
    public static final String JSON_NAME_IMAGES_IMGID = "imgId";
    public static final String JSON_NAME_IMAGES_LIST = "list";
    public static final String JSON_NAME_IMAGES_REGDATE = "regDate";
    public static final String JSON_NAME_IMAGES_TYPE = "imgType";
    public static final String JSON_NAME_IMAGES_URLDETAIL = "urlDetail";
    public static final String JSON_NAME_IMAGES_URLDOWNLOAD = "urlDownload";
    public static final String JSON_NAME_IMAGES_URLVIDEO = "urlVideo";
    public static final String JSON_NAME_IMAGES_VIEW = "view";
    public static final String JSON_NAME_IMAGES_VIEWCOUNT = "viewCount";
    public static final String JSON_NAME_IMAGES_WIDTH = "xSize";
    public static final String JSON_NAME_IMAGES_X = "x";
    public static final String JSON_NAME_IMAGES_Y = "y";
    private static final String JSON_NAME_ITEM = "item";
    private static final String JSON_NAME_ITEMNO = "itemNo";
    private static final String JSON_NAME_ITEMSEQ = "itemSeq";
    private static final String JSON_NAME_ITEMTYPE = "itemType";
    private static final String JSON_NAME_LEVEL = "level";
    private static final String JSON_NAME_POINT = "point";
    private static final String JSON_NAME_QUANTITY = "quantity";
    private static final String JSON_NAME_RESULT = "result";
    private static final String JSON_NAME_SCORE = "score";
    private static final String JSON_NAME_SKILL = "skill";
    private static final String JSON_NAME_SKILLID = "skillId";
    private static final String JSON_NAME_USER = "user";
    private static final String JSON_NAME_USERID = "userId";
    private static final String JSON_NAME_USERNICK = "userNick";
    public static final String JSON_VALUE_IMAGES_NULL = "null";
    private static final String JSON_VALUE_RESULT_ALREADYEXIT = "900";
    private static final String JSON_VALUE_RESULT_ALREADYGAME = "911";
    private static final String JSON_VALUE_RESULT_NOID = "999";
    private static final String JSON_VALUE_RESULT_NOPASSWORD = "901";
    private static final String JSON_VALUE_RESULT_PASS = "000";
    public static final String MSG_DEVIDER = "|";
    public static final String MSG_SUBDEVIDER = ",";
    private static final int NETTEXTSIZE_SIZE = 4;
    private static final String PARAMETER_ADID = "adId";
    public static final String PARAMETER_COIN = "coin";
    private static final String PARAMETER_DEVICE = "userDevice";
    private static final String PARAMETER_ID = "userId";
    private static final String PARAMETER_IMAGEID = "imgId";
    private static final String PARAMETER_ITEMNO = "itemNo";
    public static final String PARAMETER_LEVEL = "level";
    private static final String PARAMETER_PASSWORD = "userPass";
    public static final String PARAMETER_POINT = "point";
    private static final String PARAMETER_QUANTITY = "quantity";
    public static final String PARAMETER_SCORE = "score";
    public static final int REQUEST_CHARACTER = 0;
    public static final int REQUEST_NOTICE = 2;
    public static final int REQUEST_PICKFRIENDS = 1;
    public static final int REQUEST_RANK = 3;
    public static final String RESTORE_KEY = "restore";
    public static final String SERVER_DOMAIN = "http://14.63.220.39/";
    public static final String SERVER_FILE_ADDUP = "app/member/mutiAddUp.json";
    private static final String SERVER_FILE_HITVIEWCOUNT = "app/member/hitViewCount.json";
    private static final String SERVER_FILE_IMAGELIST = "app/member/newImageList.json";
    private static final String SERVER_FILE_LOGIN = "app/member/login.json";
    private static final String SERVER_FILE_NEWADIMAGELIST = "app/member/newAdImageList.json";
    private static final String SERVER_FILE_SPENDITEM = "app/member/spendMyItem.json";
    public static final String SERVER_IP = "14.63.220.39";
    public static final int SERVER_PORT = 22131;
    private ImageView mAutoLoginImageView;
    private int mButtonClickSize;
    public CommonDialog mCommonDlg;
    public ConnectNetwork mConnectNetwork;
    public Dialog mDownloadDlg;
    public Dialog mDownloadFileDlg;
    private ProgressBar mDownloadFileProgressBar;
    private TextView mDownloadFileTextView;
    private ArrayList<String> mDownloadList;
    private View mFramentBaseArea;
    private GameView mGameView;
    public Dialog mGuestDlg;
    public Dialog mGuestLoginDlg;
    private String mImgDownloadData;
    public Dialog mInviteConsentDlg;
    private String mInviteConsentMsg;
    private TextView mInviteConsentMsgTextView;
    public Dialog mInviteDlg;
    private EditText mInviteEditText;
    public Dialog mLoginDlg;
    private String mNetText;
    private int mNetTextSize;
    private boolean mRestart;
    public boolean mSave;
    public Dialog mUserListDlg;
    public ListView mUserListView;
    public Handler mLoginResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.1
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = GameActivity.this.mConnectNetwork.getJSONObject();
                try {
                    String result = jsonobject.getString("result");
                    if (result == null) {
                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                    } else {
                        LOG.verbose("mLoginResultHandler result: " + result);
                        if (result.equals("000")) {
                            GameActivity.this.mGameView.mLogin = 1;
                            GameActivity.this.mLoginDlg.cancel();
                            GameView gameview = GameActivity.this.mGameView;
                            String preemail = gameview.mEmail;
                            EditText edittext = (EditText) GameActivity.this.mLoginDlg.findViewById(R.id.EmailEditText);
                            String email = edittext.getText().toString();
                            EditText edittext2 = (EditText) GameActivity.this.mLoginDlg.findViewById(R.id.PasswordEditText);
                            String password = edittext2.getText().toString();
                            if (email != null && password.length() > 0 && password != null && password.length() > 0) {
                                boolean autologin = false;
                                String tag = (String) GameActivity.this.mAutoLoginImageView.getTag();
                                if (tag != null) {
                                    autologin = tag.equals(GameActivity.AUTOLOGIN_ON);
                                }
                                gameview.mDbhelper.updateSettingLogin(0L, email, password, autologin);
                                gameview.mEmail = email;
                                gameview.mPassword = password;
                                gameview.mAutoLogin = autologin;
                                if (autologin) {
                                    gameview.loadState(0L, false);
                                }
                            }
                            JSONObject subjsonobject = jsonobject.getJSONObject(GameActivity.JSON_NAME_USER);
                            if (subjsonobject != null) {
                                email = subjsonobject.getString("userId");
                                gameview.mLevel = subjsonobject.getInt("level");
                                gameview.mScore = subjsonobject.getInt("score");
                                gameview.mCoin = subjsonobject.getInt("coin");
                                gameview.mPoint = subjsonobject.getInt("point");
                                gameview.mNickName = subjsonobject.getString(GameActivity.JSON_NAME_USERNICK);
                                gameview.mObjects.mCharacter[0].mBodyNum = subjsonobject.getInt(GameActivity.JSON_NAME_CHARACTER);
                                gameview.mObjects.loadCharactersImage(GameActivity.this);
                            }
                            JSONArray subjsonarray = jsonobject.getJSONArray(GameActivity.JSON_NAME_ITEM);
                            if (subjsonarray != null) {
                                if (email.equals(preemail)) {
                                    Items items = GameActivity.this.setItemsData(null, subjsonarray);
                                    Items preitems = gameview.mObjects.mItems;
                                    int totalnum = items.mItemTotalnum;
                                    for (int i = 0; i < totalnum; i++) {
                                        Items.Item item = items.mItem[i];
                                        boolean matching = false;
                                        int pretotalnum = preitems.mItemTotalnum;
                                        int j = 0;
                                        while (true) {
                                            if (j >= pretotalnum) {
                                                break;
                                            }
                                            Items.Item preitem = preitems.mItem[j];
                                            if (item.mType != preitem.mType || item.mSubType != preitem.mSubType) {
                                                j++;
                                            } else {
                                                matching = true;
                                                break;
                                            }
                                        }
                                        if (!matching) {
                                            Items.Item newitem = gameview.mObjects.mItems.createItem(item.mType, item.mSubType);
                                            newitem.mNum = item.mNum;
                                            newitem.mSeqs = item.mSeqs;
                                        }
                                    }
                                } else {
                                    GameActivity.this.setItemsData(gameview.mObjects.mItems, subjsonarray);
                                }
                            }
                            JSONArray subjsonarray2 = jsonobject.getJSONArray(GameActivity.JSON_NAME_SKILL);
                            if (subjsonarray2 != null) {
                                Objects.Skills skills = gameview.mObjects.mSkills;
                                skills.initiateBuyData();
                                int count = subjsonarray2.length();
                                for (int i2 = 0; i2 < count; i2++) {
                                    int index = skills.getIndex(subjsonarray2.getJSONObject(i2).getInt(GameActivity.JSON_NAME_SKILLID));
                                    skills.mSkill[index].mBuy = true;
                                    skills.mSkill[index].mNum = i2;
                                    skills.mSkill[index].mSetNum = -1;
                                }
                            }
                            GameActivity.this.receiveImageList(gameview.getListImageNum());
                        } else if (result.equals(GameActivity.JSON_VALUE_RESULT_NOPASSWORD)) {
                            if (!GameActivity.this.mLoginDlg.isShowing()) {
                                GameActivity.this.mLoginDlg.show();
                            }
                            GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_nopasswd);
                        } else if (result.equals(GameActivity.JSON_VALUE_RESULT_NOID)) {
                            if (!GameActivity.this.mLoginDlg.isShowing()) {
                                GameActivity.this.mLoginDlg.show();
                            }
                            GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_noid);
                        }
                    }
                } catch (JSONException e) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[1]");
                }
            } else {
                GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkfail);
            }
        }
    };
    public Handler mDownloadImageResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.2
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            String datas;
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            int value = msg.getData().getInt("result");
            LOG.verbose("mDownloadImageResultHandler value: " + value);
            if (value == 0) {
                int index = msg.getData().getInt(ConnectNetwork.HANDLER_MSG_KEY_TAG_INT);
                LOG.verbose("mDownloadImageResultHandler: " + index);
                if (GameActivity.this.mDownloadList != null) {
                    GameView gameview = GameActivity.this.mGameView;
                    int index2 = index + 1;
                    if (index2 < GameActivity.this.mDownloadList.size() && (datas = (String) GameActivity.this.mDownloadList.get(index2)) != null && datas.indexOf("{") > -1) {
                        LOG.verbose("mDownloadImageResultHandler save");
                        gameview.saveImages(datas);
                        index2++;
                    }
                    if (index2 < GameActivity.this.mDownloadList.size()) {
                        GameActivity.this.mDownloadFileProgressBar.setProgress(index2);
                        GameActivity.this.downloadImage(index2);
                    } else {
                        GameActivity.this.mDownloadList = null;
                        GameActivity.this.mDownloadFileProgressBar.setProgress(index2);
                        GameActivity.this.mDownloadFileDlg.cancel();
                        gameview.loadGameObject(gameview.isRunningGame());
                        LOG.verbose("mDownloadImageResultHandler finish");
                    }
                }
            } else {
                GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkerror_download);
                LOG.error("mDownloadImageResultHandler error");
            }
        }
    };
    public Handler mAddUpResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.3
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            String data;
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = GameActivity.this.mConnectNetwork.getJSONObject();
                if (jsonobject == null) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                    LOG.info("-- handleMessage() jsonobject is null");
                } else {
                    try {
                        String result = jsonobject.getString("result");
                        if (result == null) {
                            GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                        } else {
                            LOG.verbose("mAddUpResultHandler result: " + result);
                            if (result.equals("000") && (data = msg.getData().getString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING)) != null) {
                                String[] datas = data.split(",");
                                GameActivity.this.mGameView.mScreenResult.upAbillity(Integer.parseInt(datas[0]), Long.parseLong(datas[1]), Integer.parseInt(datas[2]), Long.parseLong(datas[3]));
                                long adnum = GameActivity.this.mGameView.mScreenResult.getFindImage().mAdNum;
                                if (adnum > -1) {
                                    GameActivity.this.sendAdViewCount(adnum);
                                }
                            }
                        }
                    } catch (JSONException e) {
                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[1]");
                    }
                }
            }
        }
    };
    public Handler mSpendItemResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.4
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            String data;
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = GameActivity.this.mConnectNetwork.getJSONObject();
                try {
                    String result = jsonobject.getString("result");
                    if (result == null) {
                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                    } else {
                        LOG.verbose("mSpendItemResultHandler result: " + result);
                        if (result.equals("000") && (data = msg.getData().getString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING)) != null) {
                            String[] datas = data.split(",");
                            LOG.verbose("mSpendItemResultHandler tag: " + datas[0] + ", " + datas[1]);
                            GameActivity.this.mGameView.mScreenGameRoom.spendItem(Integer.parseInt(datas[0]), Integer.parseInt(datas[1]));
                        }
                    }
                } catch (JSONException e) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[1]");
                }
            }
        }
    };
    public Handler mImageListResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.5
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = GameActivity.this.mConnectNetwork.getJSONObject();
                try {
                    String result = jsonobject.getString("result");
                    if (result == null) {
                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                    } else {
                        LOG.verbose("mImageListResultHandler result: " + result);
                        if (result.equals("000")) {
                            GameActivity.this.mDownloadList = new ArrayList();
                            JSONArray jsonarray = jsonobject.getJSONArray(GameActivity.JSON_NAME_IMAGES_LIST);
                            if (jsonarray != null) {
                                int length = jsonarray.length();
                                for (int i = 0; i < length; i++) {
                                    JSONObject listjsonobject = jsonarray.getJSONObject(i);
                                    if (listjsonobject != null) {
                                        GameActivity.this.mDownloadList.add(listjsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMG));
                                        JSONArray cutjsonarray = listjsonobject.getJSONArray(GameActivity.JSON_NAME_IMAGES_IMGCUT);
                                        int cutlength = cutjsonarray.length();
                                        for (int j = 0; j < cutlength; j++) {
                                            JSONObject cutlistjsonobject = cutjsonarray.getJSONObject(j);
                                            if (cutlistjsonobject != null) {
                                                GameActivity.this.mDownloadList.add(cutlistjsonobject.getString(GameActivity.JSON_NAME_IMAGES_IMG));
                                            }
                                        }
                                        GameActivity.this.mDownloadList.add(listjsonobject.toString());
                                    }
                                }
                                LOG.info("++ handleMessage() mDownloadList.size(): " + GameActivity.this.mDownloadList.size());
                                if (GameActivity.this.mDownloadList.size() > 0) {
                                    GameActivity.this.mDownloadDlg.show();
                                }
                            }
                        }
                    }
                } catch (JSONException e) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[1]");
                }
            }
        }
    };
    public Handler mAdViewCountResultHandler = new Handler() { // from class: com.findit.battle.GameActivity.6
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                JSONObject jsonobject = GameActivity.this.mConnectNetwork.getJSONObject();
                try {
                    String result = jsonobject.getString("result");
                    if (result == null) {
                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[0]");
                    } else {
                        LOG.verbose("mAdViewCountResultHandler result: " + result);
                        result.equals("000");
                    }
                } catch (JSONException e) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkfail, "[1]");
                }
            }
        }
    };
    public Handler mConnectSocketHandler = new Handler() { // from class: com.findit.battle.GameActivity.7
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            LOG.verbose(">> handleMessage() msg.what: " + msg.what);
            GameActivity.this.mCommonDlg.cancelProgressDlg();
            GameView gameview = GameActivity.this.mGameView;
            boolean value = msg.getData().getBoolean("result");
            if (value) {
                ConnectNetwork connectnetwork = GameActivity.this.mConnectNetwork;
                if (connectnetwork.isConnectSocket()) {
                    connectnetwork.startReceiveSocketMsg(GameActivity.this.mReceiveSocketMsgHandler);
                    GameActivity.this.mNetText = GameView.CHARACTER_AI;
                    GameActivity.this.mNetTextSize = 0;
                    if (GameView.mScreenMode == 1) {
                        gameview.showWaitingRoom();
                    }
                    LOG.verbose("mConnectSocketHandler success");
                } else {
                    GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkfail);
                    gameview.enterBattleRoom(GameView.CHARACTER_AI, 2);
                    LOG.verbose("mConnectSocketHandler fail1");
                }
            } else {
                GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkfail);
                gameview.enterBattleRoom(GameView.CHARACTER_AI, 2);
                LOG.verbose("mConnectSocketHandler fail0");
            }
        }
    };
    public Handler mReceiveSocketMsgHandler = new Handler() { // from class: com.findit.battle.GameActivity.8
        @Override // android.os.Handler
        public synchronized void handleMessage(Message msg) {
            String text;
            String text2;
            LOG.verbose(">> handleMessage() msg,what: " + msg.what);
            boolean cancelprogressdlg = false;
            GameView gameview = GameActivity.this.mGameView;
            String value = msg.getData().getString("result");
            if (value == null) {
                switch (GameView.mScreenMode) {
                    case 1:
                        gameview.enterBattleRoom(GameView.CHARACTER_AI, 2);
                        GameActivity.this.mInviteDlg.cancel();
                        break;
                }
                cancelprogressdlg = true;
                LOG.debug("mReceiveSocketMsgHandler: null");
            } else {
                LOG.debug("mReceiveSocketMsgHandler: " + value);
                LOG.debug("mNetTextSize0: " + GameActivity.this.mNetTextSize);
                String finishtext = null;
                GameActivity gameActivity = GameActivity.this;
                gameActivity.mNetText = String.valueOf(gameActivity.mNetText) + value;
                while (GameActivity.this.mNetText.length() > 4) {
                    if (GameActivity.this.mNetTextSize < 1) {
                        int size = Integer.parseInt(GameActivity.this.mNetText.substring(0, 4));
                        GameActivity.this.mNetTextSize = size + 4;
                    }
                    if (GameActivity.this.mNetTextSize > 0) {
                        if (GameActivity.this.mNetText.length() == GameActivity.this.mNetTextSize) {
                            finishtext = GameActivity.this.mNetText.substring(0, GameActivity.this.mNetTextSize);
                            GameActivity.this.mNetText = GameView.CHARACTER_AI;
                            GameActivity.this.mNetTextSize = 0;
                        } else if (GameActivity.this.mNetText.length() > GameActivity.this.mNetTextSize) {
                            finishtext = GameActivity.this.mNetText.substring(0, GameActivity.this.mNetTextSize);
                            GameActivity.this.mNetText = GameActivity.this.mNetText.substring(GameActivity.this.mNetTextSize);
                            GameActivity.this.mNetTextSize = 0;
                        }
                    }
                    LOG.debug("mNetTextSize1: " + GameActivity.this.mNetTextSize);
                    LOG.debug("mNetText: " + GameActivity.this.mNetText);
                    if (finishtext == null) {
                        break;
                    }
                    cancelprogressdlg = true;
                    String value2 = finishtext;
                    LOG.debug("value: " + value2);
                    ArrayList<String> textlist = gameview.getSubTexts(value2, "|");
                    String text3 = textlist.get(1);
                    if (text3 != null) {
                        if (text3.equals(GameActivity.CODE_USERLIST) && textlist.size() > 3) {
                            String text4 = textlist.get(2);
                            if (text4 != null && text4.equals("000")) {
                                LOG.debug("접속 아이디 리스트 뷰 설정");
                                if (GameView.mScreenMode == 3) {
                                    if (gameview.mScreenBattleRoom.mFriendName == null) {
                                        LOG.debug("리스트 받기");
                                        String text5 = textlist.get(3);
                                        if (text5 != null && Integer.parseInt(text5) > 0) {
                                            String text6 = textlist.get(4);
                                            if (text6 != null) {
                                                gameview.mScreenBattleRoom.fillData(text6);
                                                GameActivity.this.mUserListDlg.show();
                                            }
                                        } else {
                                            GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_not_users);
                                        }
                                    } else {
                                        LOG.debug("초대하기");
                                        String text7 = textlist.get(3);
                                        if (text7 != null && Integer.parseInt(text7) > 0 && (text = textlist.get(4)) != null && gameview.mScreenBattleRoom.getUserData(text, ",", gameview.mScreenBattleRoom.mFriendName) == null) {
                                            gameview.mScreenBattleRoom.sendInviteMsg(GameActivity.this.mConnectNetwork, gameview.mScreenBattleRoom.mFriendName);
                                            GameActivity.this.mInviteDlg.cancel();
                                        } else {
                                            GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_not_user);
                                        }
                                    }
                                    gameview.mScreenBattleRoom.mFriendName = null;
                                } else {
                                    LOG.debug("대기자 리스트");
                                    gameview.mScreenWaitingRoom.clearData();
                                    String text8 = textlist.get(5);
                                    if (text8 != null && Integer.parseInt(text8) > 0 && (text2 = textlist.get(6)) != null) {
                                        gameview.mScreenWaitingRoom.fillData(text2);
                                    }
                                }
                            }
                        } else if (text3.equals(GameActivity.CODE_CREATEBATTLEROOM)) {
                            LOG.debug("게임방(대전방) 만들기-101");
                            String text9 = textlist.get(2);
                            if (text9 != null && text9.equals("000")) {
                                gameview.mRoomName = textlist.get(3);
                                if (gameview.mRoomName.startsWith("@")) {
                                    gameview.mRoomName = gameview.mRoomName.substring(1);
                                }
                                gameview.enterBattleRoom(null, -2);
                                GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                                gameview.mScreenWaitingRoom.mMainDlg.cancel();
                            }
                        } else if (text3.equals(GameActivity.CODE_EXITBATTLEROOM)) {
                            LOG.debug("게임방(대전방) 나가기-102");
                            String text10 = textlist.get(2);
                            if (text10 != null && text10.equals("000") && GameView.mScreenMode > 2) {
                                if (gameview.mScreenBattleRoom.mExit) {
                                    gameview.showWaitingRoom();
                                    gameview.mScreenBattleRoom.mExit = false;
                                    GameActivity.this.mCommonDlg.cancelProgressDlg();
                                } else {
                                    gameview.mScreenBattleRoom.mLeftReady = false;
                                    gameview.mObjects.mCharacter[0].setImgnum(0);
                                    gameview.mScreenBattleRoom.mRightReady = false;
                                    gameview.mObjects.mCharacter[gameview.mScreenGameRoom.mRightCharacterIndex].setImgnum(0);
                                    gameview.mScreenGameRoom.mRightCharacterIndex = -1;
                                    GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                                    if (GameView.mScreenMode == 3) {
                                        gameview.enterBattleRoom(null, -2);
                                        GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                                        gameview.mScreenWaitingRoom.mMainDlg.cancel();
                                    } else {
                                        int screenmode = GameView.mScreenMode;
                                        gameview.enterBattleRoom(null, -2);
                                        GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                                        if (screenmode == 4 || screenmode == 5) {
                                            GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_networkerror_release);
                                        }
                                    }
                                }
                            }
                        } else if (text3.equals(GameActivity.CODE_ENTERBATTLEROOM)) {
                            LOG.debug("대전방 들어가기 및 상대방 들어오기-103");
                            String text11 = textlist.get(2);
                            if (text11 != null && text11.equals("000")) {
                                String text12 = textlist.get(3);
                                if (text12 != null) {
                                    LOG.debug("clientid: " + text12);
                                    if (GameView.mScreenMode == 2) {
                                        LOG.debug("대전방 들어오기");
                                        gameview.enterBattleRoom(text12, -2);
                                        GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                                        gameview.mScreenWaitingRoom.mMainDlg.cancel();
                                    } else {
                                        LOG.debug("상대방 들어오기");
                                        if (GameView.mScreenMode == 4 && gameview.mScreenGameRoom.mRightCharacterIndex == 2) {
                                            LOG.debug("싱글플레이 중일때");
                                            gameview.mScreenGameRoom.mGameTime = 40;
                                            gameview.mScreenGameRoom.setRightCharacter(text12);
                                            gameview.mScreenGameRoom.mResultPass = true;
                                        } else {
                                            LOG.debug("대전방일때");
                                            gameview.mScreenGameRoom.setRightCharacter(text12);
                                            gameview.mScreenBattleRoom.mSingleTimeCount = -1;
                                            gameview.mScreenBattleRoom.mTime = 4;
                                        }
                                    }
                                }
                                GameActivity.this.mUserListDlg.cancel();
                                GameActivity.this.mInviteDlg.cancel();
                            } else {
                                GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_overlapuserid);
                            }
                        } else if (text3.equals(GameActivity.CODE_READY)) {
                            LOG.debug("준비완료-104");
                            String text13 = textlist.get(2);
                            if (text13 != null && text13.equals("000")) {
                                try {
                                    String text14 = textlist.get(3);
                                    if (text14 != null && gameview.mScreenGameRoom.mRightCharacterIndex > -1 && text14.equals(gameview.mObjects.mCharacter[gameview.mScreenGameRoom.mRightCharacterIndex].mName)) {
                                        if (gameview.getScreenMode() == 5) {
                                            gameview.mScreenBattleRoom.setAleadyRightUserReady(true);
                                            LOG.debug("게임 결과에서 손들기 들어옴");
                                        } else if (!gameview.mScreenBattleRoom.mRightReady) {
                                            LOG.debug("손들기");
                                            gameview.mScreenBattleRoom.mRightReady = true;
                                            gameview.mObjects.mCharacter[gameview.mScreenGameRoom.mRightCharacterIndex].setImgnum(1);
                                            gameview.playSound(2);
                                        }
                                    }
                                } catch (Exception e) {
                                    gameview.mScreenBattleRoom.mLeftReady = true;
                                    gameview.mObjects.mCharacter[0].setImgnum(1);
                                }
                            }
                        } else if (text3.equals(GameActivity.CODE_GAME)) {
                            LOG.debug("게임-106");
                            String text15 = textlist.get(2);
                            if (text15 != null && text15.equals("000")) {
                                try {
                                    String text16 = textlist.get(3);
                                    if (text16 != null) {
                                        ArrayList<String> subtextlist = gameview.getSubTexts(text16, ",");
                                        String text17 = subtextlist.get(0);
                                        if (text17 != null) {
                                            gameview.mScreenGameRoom.mRightNum = Integer.parseInt(text17);
                                        }
                                        String text18 = subtextlist.get(1);
                                        if (text18 != null) {
                                            int skillindex = Integer.parseInt(text18);
                                            if (skillindex == 99) {
                                                skillindex = -1;
                                            }
                                            gameview.mScreenGameRoom.mRightSkillNum = skillindex;
                                            gameview.mScreenGameRoom.mRightSkilTimeCount = 0;
                                        }
                                        String text19 = subtextlist.get(2);
                                        if (text19 != null) {
                                            int itemindex = Integer.parseInt(text19);
                                            if (itemindex == 99) {
                                                itemindex = -1;
                                            }
                                            gameview.mScreenGameRoom.mRightPenNum = itemindex;
                                        }
                                    }
                                } catch (Exception e2) {
                                    GameView.GameRoom gameRoom = gameview.mScreenGameRoom;
                                    gameRoom.mTempLeftNum--;
                                }
                                LOG.debug("CODE_GAME: " + gameview.mScreenGameRoom.mTempLeftNum);
                            }
                        } else if (text3.equals(GameActivity.CODE_INVITE)) {
                            LOG.debug("초대-107");
                            String text20 = textlist.get(2);
                            if (text20 != null) {
                                if (GameView.mScreenMode == 2) {
                                    if (text20.equals("000")) {
                                        LOG.debug("초대요청 받음 -000");
                                        String text21 = textlist.get(3);
                                        if (text21 != null) {
                                            GameActivity.this.showInviteConsentDlg(text21);
                                        }
                                    }
                                } else if (text20.equals(GameActivity.JSON_VALUE_RESULT_ALREADYEXIT)) {
                                    LOG.debug("초대 대상자가 게임을 종료함-900");
                                    String text22 = textlist.get(3);
                                    if (text22 != null) {
                                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, String.valueOf(text22) + " ", R.string.notice_msg_alreadyexit);
                                    }
                                } else if (text20.equals(GameActivity.JSON_VALUE_RESULT_ALREADYGAME)) {
                                    LOG.debug("초대 대상자가 게임중-911");
                                    String text23 = textlist.get(3);
                                    if (text23 != null) {
                                        GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, String.valueOf(text23) + " ", R.string.notice_msg_alreadygame);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (cancelprogressdlg) {
                GameActivity.this.mCommonDlg.cancelProgressDlg();
                LOG.debug("......................................... cancelprogressdlg");
            }
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.findit.battle.GameActivity.9
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LOG.verbose(">> onReceive()");
            LOG.verbose("onReceive");
        }
    };

    @Override // android.app.Activity
    public void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LOG.verbose(">> onCreate()");
        settingSystem();
        setContentView(R.layout.main);
        new Handler().postDelayed(new Runnable() { // from class: com.findit.battle.GameActivity.10
            @Override // java.lang.Runnable
            public void run() {
                GameActivity.this.init(savedInstanceState);
            }
        }, 500L);
        ImageView vIntro = new ImageView(getApplicationContext());
        vIntro.setBackgroundResource(R.drawable.intro);
        Toast toast = new Toast(getApplicationContext());
        toast.setView(vIntro);
        toast.setDuration(IAPLib.HND_ERR_AUTH);
        toast.show();
    }

    private void settingSystem() {
        LOG.verbose(">> settingSystem()");
        getWindow().addFlags(Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR);
        System.setProperty("java.net.preferIPv6Addresses", "false");
        setVolumeControlStream(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init(Bundle savedInstanceState) {
        LOG.verbose(">> init()");
        this.mGameView = new GameView(this);
        ((FrameLayout) findViewById(R.id.FL_GAMEVIEW_AREA)).addView(this.mGameView, new FrameLayout.LayoutParams(-1, -1));
        this.mLoginDlg = createLoginDlg();
        this.mGuestDlg = createGuestDlg();
        this.mGuestLoginDlg = createGuestLoginDlg();
        this.mDownloadDlg = createDownloadDlg();
        this.mDownloadFileDlg = createDownloadFileDlg();
        this.mInviteDlg = createInviteDlg();
        this.mUserListDlg = createUserListDlg();
        this.mInviteConsentDlg = createInviteConsentDlg();
        this.mCommonDlg = new CommonDialog(this);
        this.mDownloadFileProgressBar = (ProgressBar) this.mDownloadFileDlg.findViewById(R.id.ProgressBar);
        this.mDownloadFileTextView = (TextView) this.mDownloadFileDlg.findViewById(R.id.ProgressTextView);
        this.mAutoLoginImageView = (ImageView) this.mLoginDlg.findViewById(R.id.AutoLoginCheckImageView);
        this.mButtonClickSize = (int) getResources().getDimension(R.dimen.buttonclick_size);
        this.mConnectNetwork = new ConnectNetwork(this);
        Bundle extra = getIntent().getExtras();
        if (savedInstanceState != null || extra != null) {
            LOG.error("++ onCreate() savedInstanceState is not null 예전 정보 그대로 실행 한다.");
        } else {
            LOG.error("++ onCreate() savedInstanceState is null 오프닝부터 시작 한다. ");
        }
        this.mDownloadList = null;
        this.mSave = true;
        this.mRestart = false;
        startGameView();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        LOG.verbose(">> onRestoreInstanceState() savedInstanceState: " + savedInstanceState);
        super.onRestoreInstanceState(savedInstanceState);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        LOG.verbose(">> onSaveInstanceState() outState: " + outState);
        super.onSaveInstanceState(outState);
    }

    @Override // android.app.Activity
    protected void onResume() {
        LOG.verbose("onResume");
        super.onResume();
        if (this.mGameView != null) {
            this.mGameView.onResume();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        LOG.verbose("onPause");
        super.onPause();
        if (this.mGameView != null) {
            this.mGameView.onPause();
        }
    }

    private void stopNetworkThread() {
        LOG.verbose(">> stopNetworkThread()");
        LOG.verbose("closeSocket2");
        this.mConnectNetwork.closeSocket(true);
    }

    private void startGameView() {
        LOG.verbose(">> startGameView()");
        DBAdapter dbhelper = new DBAdapter(this);
        dbhelper.open();
        GameView gameview = this.mGameView;
        gameview.mDbhelper = dbhelper;
        Cursor c = dbhelper.fetchSetup(0L);
        LOG.verbose("+++ c.getCount():" + c.getCount());
        if (c == null || c.getCount() == 0) {
            dbhelper.createState();
            dbhelper.createSetup();
            dbhelper.createCharacters(0L, 0, 0, 0);
            dbhelper.createCharacters(1L, 0, 1, 0);
            dbhelper.createCharacters(2L, 1, 0, 0);
            this.mAutoLoginImageView.setBackgroundResource(R.drawable.login_check_on);
            this.mAutoLoginImageView.setTag(AUTOLOGIN_ON);
        } else {
            boolean autologin = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_AUTOLOGIN)) == 1;
            if (autologin) {
                String email = c.getString(c.getColumnIndexOrThrow(DBAdapter.FIELD_LOGIN_ID));
                String password = c.getString(c.getColumnIndexOrThrow(DBAdapter.FIELD_LOGIN_PASSWORD));
                gameview.mEmail = email;
                gameview.mPassword = password;
                EditText edittext = (EditText) this.mLoginDlg.findViewById(R.id.EmailEditText);
                edittext.setText(email);
                EditText edittext2 = (EditText) this.mLoginDlg.findViewById(R.id.PasswordEditText);
                edittext2.setText(password);
            }
            this.mAutoLoginImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
            this.mAutoLoginImageView.setTag(autologin ? AUTOLOGIN_ON : AUTOLOGIN_OFF);
            gameview.mAutoLogin = autologin;
            gameview.mSoundon = c.getInt(c.getColumnIndexOrThrow(DBAdapter.FIELD_SOUNDON)) == 1;
        }
        if (c != null) {
            c.close();
        }
    }

    private void stopGameView() {
        LOG.verbose(">> stopGameView()");
        if (this.mGameView == null) {
            LOG.info("-- stopGameView() mGameView is null");
        }
        if (this.mSave) {
            this.mGameView.saveState(0L);
        }
        this.mGameView.recycleResources();
    }

    private void destroyGameView() {
        if (this.mGameView != null) {
            this.mGameView.onDestroy();
        }
        if (this.mGameView.mDbhelper != null) {
            this.mGameView.mDbhelper.close();
            this.mGameView.mDbhelper = null;
        }
        this.mCommonDlg.cancelLoadingDlg();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        LOG.verbose("onDestroy");
        super.onDestroy();
        destroyGameView();
        stopNetworkThread();
        killMyApp();
    }

    private void killMyApp() {
        LOG.error(">> killMyApp()");
        Process.killProcess(Process.myPid());
    }

    public void login(String id, String password) {
        LOG.verbose(">> login()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        if (!connectnetwork.isConnecting()) {
            connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_LOGIN);
            connectnetwork.setParameter("userId", id);
            connectnetwork.setParameter(PARAMETER_PASSWORD, password);
            connectnetwork.setParameter(PARAMETER_DEVICE, Objects.Animation.TYPE_ALPHA);
            this.mCommonDlg.showProgressDlg();
            connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, this.mLoginResultHandler);
        }
    }

    public void connectServer(int option) {
        LOG.verbose(">> connecServer()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        LOG.verbose("isConnectSocket: " + connectnetwork.isConnectSocket());
        if (connectnetwork.isConnectSocket()) {
            LOG.verbose("showWaitingRoom 연결");
            this.mGameView.showWaitingRoom();
        } else {
            this.mCommonDlg.showProgressDlg();
            connectnetwork.startConnectSocket(SERVER_IP, SERVER_PORT, new StringBuilder().append(option).toString(), this.mConnectSocketHandler);
        }
    }

    public void sendAddUp(String email, int level, long score, int point, long coin) {
        LOG.verbose(">> sendAddUp()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_ADDUP);
        connectnetwork.clearParameter();
        connectnetwork.setParameter("userId", email);
        connectnetwork.setParameter("level", new StringBuilder().append(level).toString());
        connectnetwork.setParameter("score", new StringBuilder().append(score).toString());
        connectnetwork.setParameter("coin", new StringBuilder().append(coin).toString());
        connectnetwork.setParameter("point", new StringBuilder().append(point).toString());
        LOG.verbose("sendAddUp: " + level + ", " + score + ", " + point + ", " + coin);
        this.mCommonDlg.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, String.valueOf(level) + "," + score + "," + point + "," + coin, this.mAddUpResultHandler);
    }

    public void sendSpendItem(String email, int index, long quantity) {
        LOG.verbose(">> sendSpendItem()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        int itemno = this.mGameView.mObjects.mItems.mItem[index].mTypeNo;
        connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_SPENDITEM);
        connectnetwork.clearParameter();
        connectnetwork.setParameter("userId", email);
        connectnetwork.setParameter("itemNo", new StringBuilder().append(itemno).toString());
        connectnetwork.setParameter("quantity", new StringBuilder().append(quantity).toString());
        LOG.verbose("sendSpendItem: " + email + ", " + itemno + ", " + quantity);
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, String.valueOf(index) + "," + quantity, this.mSpendItemResultHandler);
    }

    public void receiveImageList(long lastimgid) {
        LOG.verbose(">> receiveImageList()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        LOG.verbose("receiveImageList: " + lastimgid);
        connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_IMAGELIST);
        connectnetwork.clearParameter();
        connectnetwork.setParameter("imgId", new StringBuilder().append(lastimgid).toString());
        this.mCommonDlg.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(lastimgid).toString(), this.mImageListResultHandler);
    }

    public void downloadImage(int index) {
        LOG.verbose(">> downloadImage()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        ArrayList<String> list = this.mDownloadList;
        while (connectnetwork.isConnecting()) {
        }
        File file = getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        String url = list.get(index);
        String desurl = url.replace("http://14.63.220.39/", String.valueOf(file.getPath()) + Objects.Animation.DEVIDER_DATA);
        int lastindex = desurl.lastIndexOf(Objects.Animation.DEVIDER_DATA) + 1;
        String folder = desurl.substring(0, lastindex);
        String filename = desurl.substring(lastindex);
        LOG.verbose("downloadImage: " + index + ", " + url + ", " + folder + ", " + filename);
        connectnetwork.setServerUri(url, GameView.CHARACTER_AI);
        connectnetwork.clearParameter();
        connectnetwork.startDownloadFile(GameView.CHARACTER_AI, GameView.CHARACTER_AI, 1L, folder, filename, index, this.mDownloadImageResultHandler);
    }

    public void receiveAdViewCount(long adid) {
        LOG.verbose(">> receiveAdViewCount()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_NEWADIMAGELIST);
        connectnetwork.clearParameter();
        connectnetwork.setParameter("adId", new StringBuilder().append(adid).toString());
        this.mCommonDlg.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(adid).toString(), this.mAdViewCountResultHandler);
    }

    public void sendAdViewCount(long adid) {
        LOG.verbose(">> sendAdViewCount()");
        ConnectNetwork connectnetwork = this.mConnectNetwork;
        while (connectnetwork.isConnecting()) {
        }
        connectnetwork.setServerUri("http://14.63.220.39/", SERVER_FILE_HITVIEWCOUNT);
        connectnetwork.clearParameter();
        connectnetwork.setParameter("adId", new StringBuilder().append(adid).toString());
        this.mCommonDlg.showProgressDlg();
        connectnetwork.startParsingData(ConnectNetwork.UTF_8, ConnectNetwork.GET, 2, new StringBuilder().append(adid).toString(), this.mAdViewCountResultHandler);
    }

    public Dialog createLoginDlg() {
        LOG.verbose(">> createLoginDlg()");
        final Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.login);
        float height = getResources().getDimension(R.dimen.loginline_height);
        float subheight = getResources().getDimension(R.dimen.linevt_height);
        int subwidth = (int) getResources().getDimension(R.dimen.linevt_width);
        int length = (int) (height / subheight);
        LinearLayout layout = (LinearLayout) dialog.findViewById(R.id.LineLayout);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(subwidth, (int) subheight);
        for (int i = 0; i <= length; i++) {
            ImageView imageview = new ImageView(this);
            imageview.setLayoutParams(params);
            imageview.setBackgroundResource(R.drawable.line_vt_0);
            layout.addView(imageview);
        }
        Button button = (Button) dialog.findViewById(R.id.LoginButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                EditText edittext = (EditText) GameActivity.this.mLoginDlg.findViewById(R.id.EmailEditText);
                String email = edittext.getText().toString();
                EditText edittext2 = (EditText) GameActivity.this.mLoginDlg.findViewById(R.id.PasswordEditText);
                String password = edittext2.getText().toString();
                if (email == null || (email != null && email.length() < 1)) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_notid);
                    return;
                }
                if (password == null || (password != null && password.length() < 1)) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_notpasswd);
                    return;
                }
                if (password.length() < 4 || password.length() > 12) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_rewirtepasswd);
                    return;
                }
                int index = email.indexOf("@");
                if (index == -1 || (index > -1 && email.substring(index).indexOf(".") == -1)) {
                    GameActivity.this.mCommonDlg.showNoticeDlg(R.string.notice_msg_noemailtype);
                } else {
                    GameActivity.this.login(email, password);
                }
            }
        });
        setButtonTouchListener(button);
        Button button2 = (Button) dialog.findViewById(R.id.JoinButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameView gameview = GameActivity.this.mGameView;
                Bundle bundle = new Bundle();
                bundle.putInt("displaywidth", gameview.getWidth());
                bundle.putInt("displayheight", gameview.getHeight());
                GameActivity.this.movePage(JoinActivity.class, bundle);
            }
        });
        setButtonTouchListener(button2);
        Button button3 = (Button) dialog.findViewById(R.id.GuestButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGuestDlg.show();
                GameActivity.this.mLoginDlg.cancel();
            }
        });
        setButtonTouchListener(button3);
        LinearLayout layout2 = (LinearLayout) dialog.findViewById(R.id.AutoLoginLayout);
        layout2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick()");
                String tag = GameActivity.this.mAutoLoginImageView.getTag().toString();
                if (tag != null) {
                    boolean autologin = !tag.equals(GameActivity.AUTOLOGIN_ON);
                    GameActivity.this.mAutoLoginImageView.setBackgroundResource(autologin ? R.drawable.login_check_on : R.drawable.login_check_off);
                    GameActivity.this.mAutoLoginImageView.setTag(autologin ? GameActivity.AUTOLOGIN_ON : GameActivity.AUTOLOGIN_OFF);
                }
            }
        });
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.findit.battle.GameActivity.15
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface arg0, int arg1, KeyEvent arg2) {
                LOG.verbose(">> onClick()");
                switch (arg1) {
                    case 4:
                        LOG.verbose("LoginDlg");
                        GameActivity.this.finishFromDialog(dialog);
                        break;
                }
                return false;
            }
        });
        return dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishFromDialog(Dialog dialog) {
        LOG.verbose(">> finishFromDialog()");
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
        finish();
    }

    public Dialog createGuestDlg() {
        LOG.verbose(">> createGuestDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.notice);
        dialog.setCancelable(false);
        TextView textview = (TextView) dialog.findViewById(R.id.TitleTextView);
        textview.setText(R.string.guest_title);
        TextView textview2 = (TextView) dialog.findViewById(R.id.MessageTextView);
        textview2.setText(R.string.guest_msg);
        Button button = (Button) dialog.findViewById(R.id.Button1);
        button.setText(R.string.join);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGuestDlg.cancel();
                GameView gameview = GameActivity.this.mGameView;
                Bundle bundle = new Bundle();
                bundle.putInt("displaywidth", gameview.getWidth());
                bundle.putInt("displayheight", gameview.getHeight());
                GameActivity.this.movePage(JoinActivity.class, bundle);
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.Button2);
        button2.setText(R.string.admission);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGameView.mLogin = 2;
                GameActivity.this.mGuestDlg.cancel();
            }
        });
        return dialog;
    }

    public Dialog createGuestLoginDlg() {
        LOG.verbose(">> createGuestLoginDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.notice);
        TextView textview = (TextView) dialog.findViewById(R.id.TitleTextView);
        textview.setText(R.string.notice);
        TextView textview2 = (TextView) dialog.findViewById(R.id.MessageTextView);
        textview2.setText(R.string.guest_msg_login);
        Button button = (Button) dialog.findViewById(R.id.Button1);
        button.setText(R.string.login);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.18
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGuestLoginDlg.cancel();
                GameActivity.this.mLoginDlg.show();
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.Button2);
        button2.setText(R.string.cancel);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGuestLoginDlg.cancel();
            }
        });
        return dialog;
    }

    public Dialog createDownloadDlg() {
        LOG.verbose(">> createDownloadDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.notice);
        TextView textview = (TextView) dialog.findViewById(R.id.TitleTextView);
        textview.setText(R.string.download_title);
        TextView textview2 = (TextView) dialog.findViewById(R.id.MessageTextView);
        textview2.setText(R.string.download_msg);
        Button button = (Button) dialog.findViewById(R.id.Button1);
        button.setText(R.string.download_now);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                if (GameActivity.this.mDownloadList != null) {
                    LOG.verbose("mDownloadFileProgressBar max: " + (GameActivity.this.mDownloadList.size() - 1));
                    GameActivity.this.mDownloadFileProgressBar.setMax(GameActivity.this.mDownloadList.size() - 1);
                    GameActivity.this.mDownloadFileDlg.show();
                    GameActivity.this.downloadImage(0);
                }
                GameActivity.this.mDownloadDlg.cancel();
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.Button2);
        button2.setText(R.string.download_after);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.21
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mDownloadDlg.cancel();
            }
        });
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.findit.battle.GameActivity.22
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface arg0, int arg1, KeyEvent arg2) {
                LOG.verbose(">> onClick()");
                return false;
            }
        });
        return dialog;
    }

    public Dialog createDownloadFileDlg() {
        LOG.verbose(">> createDownloadFileDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.progressbar);
        Button button = (Button) dialog.findViewById(R.id.CancelButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.23
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mDownloadFileDlg.cancel();
            }
        });
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.findit.battle.GameActivity.24
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface arg0, int arg1, KeyEvent arg2) {
                LOG.verbose(">> onClick()");
                return false;
            }
        });
        return dialog;
    }

    public Dialog createInviteDlg() {
        LOG.verbose(">> createInviteDlg()");
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.invite);
        this.mInviteEditText = (EditText) dialog.findViewById(R.id.FriendIdEditText);
        Button button = (Button) dialog.findViewById(R.id.InviteButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.25
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                GameActivity.this.mCommonDlg.showProgressDlg();
                GameActivity.this.mGameView.mScreenBattleRoom.mFriendName = GameActivity.this.mInviteEditText.getText().toString();
                GameActivity.this.mGameView.mScreenWaitingRoom.getUserList(GameActivity.this.mGameView.mEmail);
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.ListButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mCommonDlg.showProgressDlg();
                GameActivity.this.mGameView.mScreenBattleRoom.mFriendName = null;
                GameActivity.this.mGameView.mScreenWaitingRoom.getUserList(GameActivity.this.mGameView.mEmail);
            }
        });
        Button button3 = (Button) dialog.findViewById(R.id.WaitButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                GameActivity.this.mInviteDlg.cancel();
            }
        });
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.findit.battle.GameActivity.28
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface arg0, int arg1, KeyEvent arg2) {
                LOG.verbose(">> onKey()");
                switch (arg1) {
                    case 4:
                        GameActivity.this.mGameView.mScreenBattleRoom.mSingleTimeCount = 0;
                    default:
                        return false;
                }
            }
        });
        return dialog;
    }

    public Dialog createUserListDlg() {
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.userlist);
        ListView listview = (ListView) dialog.findViewById(R.id.UserListView);
        listview.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.findit.battle.GameActivity.29
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
                GameActivity.this.mGameView.mScreenBattleRoom.sendInviteMsg(GameActivity.this.mConnectNetwork, (String) arg0.getItemAtPosition(arg2));
            }
        });
        this.mUserListView = listview;
        Button button = (Button) dialog.findViewById(R.id.CancelButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.30
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mUserListDlg.cancel();
            }
        });
        return dialog;
    }

    private Dialog createInviteConsentDlg() {
        Dialog dialog = new Dialog(this);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.notice);
        ((TextView) dialog.findViewById(R.id.TitleTextView)).setText(R.string.notice);
        this.mInviteConsentMsg = getResources().getString(R.string.notice_msg_invite);
        TextView textview = (TextView) dialog.findViewById(R.id.MessageTextView);
        textview.setText(R.string.notice_msg_invite);
        this.mInviteConsentMsgTextView = textview;
        Button button = (Button) dialog.findViewById(R.id.Button1);
        button.setText(R.string.consent);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.31
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                String name;
                LOG.verbose(">> onClick(): 승낙 버튼");
                Object tag = GameActivity.this.mInviteConsentMsgTextView.getTag();
                if (tag != null && (name = tag.toString()) != null) {
                    GameActivity.this.mGameView.mScreenWaitingRoom.enterBattleRoom(name);
                    GameActivity.this.mInviteConsentDlg.cancel();
                }
            }
        });
        Button button2 = (Button) dialog.findViewById(R.id.Button2);
        button2.setText(R.string.refuse);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.GameActivity.32
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> onClick()");
                GameActivity.this.mInviteConsentDlg.cancel();
            }
        });
        return dialog;
    }

    private void setButtonTouchListener(Button button) {
        button.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.GameActivity.33
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                LOG.verbose(">> onTouch()");
                int size = GameActivity.this.mButtonClickSize;
                switch (event.getAction()) {
                    case 0:
                        GameActivity.this.setMargin(v, size, 0, size, 0);
                        return false;
                    case 1:
                        GameActivity.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                    case 2:
                    default:
                        return false;
                    case 3:
                        GameActivity.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                }
            }
        });
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

    public void showInviteConsentDlg(String name) {
        LOG.verbose(">> showInviteConsentDlg()");
        this.mInviteConsentMsgTextView.setTag(name);
        this.mInviteConsentMsgTextView.setText(String.valueOf(name) + " " + this.mInviteConsentMsg);
        this.mInviteConsentDlg.show();
    }

    public void movePage(Class<?> cls, Bundle extras) {
        LOG.verbose(">>movePage () clsName: " + cls.getName());
        Intent intent = new Intent(getApplicationContext(), cls);
        intent.addFlags(603979776);
        intent.putExtras(extras);
        if (cls.equals(NoticeActivity.class)) {
            startActivityForResult(intent, 2);
        } else if (cls.equals(RankActivity.class)) {
            startActivityForResult(intent, 3);
        } else {
            startActivity(intent);
        }
        overridePendingTransition(R.anim.move_down, R.anim.move_lock);
    }

    public void movePage(Class<?> cls) {
        LOG.verbose(">> movePage() clsName: " + cls.getName());
        Intent intent = new Intent(getApplicationContext(), cls);
        intent.addFlags(603979776);
        startActivity(intent);
        overridePendingTransition(R.anim.move_down, R.anim.move_lock);
    }

    public void movePage(Class<?> cls, int requestcode, Bundle extras) {
        LOG.verbose(">> movePage() clsName: " + cls.getName());
        Intent intent = new Intent(getApplicationContext(), cls);
        intent.putExtras(extras);
        startActivityForResult(intent, requestcode);
        overridePendingTransition(R.anim.move_down, R.anim.move_lock);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Items setItemsData(Items items, JSONArray subjsonarray) throws JSONException {
        LOG.verbose(">> setItemsData() ");
        if (items == null) {
            items = new Items(this);
        }
        items.mItemTotalnum = 0;
        int count = subjsonarray.length();
        for (int i = 0; i < count; i++) {
            JSONObject subjsonobject = subjsonarray.getJSONObject(i);
            int type = items.mTypeMap.get(subjsonobject.getString(JSON_NAME_ITEMTYPE)).intValue();
            int subtype = items.getSubType(type, subjsonobject.getInt("itemNo"));
            if (subtype > -1) {
                int quantity = subjsonobject.getInt("quantity");
                String seg = new StringBuilder().append(subjsonobject.getLong(JSON_NAME_ITEMSEQ)).toString();
                Items.Item item = items.checkOverlap(type, subtype);
                if (item == null) {
                    item = items.createItem(type, subtype);
                    item.mNum = quantity;
                } else {
                    item.mNum += quantity;
                }
                if (item != null) {
                    if (item.mSeqs.equals(GameView.CHARACTER_AI)) {
                        item.mSeqs = String.valueOf(item.mSeqs) + seg;
                    } else {
                        item.mSeqs = String.valueOf(item.mSeqs) + "|" + seg;
                    }
                }
            }
        }
        return items;
    }

    public class ActionRunnable implements Runnable {
        public ActionRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LOG.verbose(">> run()");
            GameActivity.this.mCommonDlg.showNoticeDlg(GameActivity.this, R.string.notice_msg_networkerror_download, "[1]");
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        LOG.verbose(">> onKeyUp()");
        switch (keyCode) {
            case 4:
                if (GameView.mScreenMode == 3 || GameView.mScreenMode == 4 || GameView.mScreenMode == 5) {
                    this.mGameView.mScreenBattleRoom.exitRoom();
                    return true;
                }
                if (GameView.mScreenMode == 2) {
                    this.mGameView.enterMainMenu(-1);
                    return true;
                }
                break;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        LOG.verbose(">> onActivityResult()");
        switch (requestCode) {
            case 0:
                this.mSave = false;
                break;
            case 2:
            case 3:
                this.mGameView.enterMainMenu(-1);
                break;
        }
        LOG.verbose("requestCode: " + requestCode);
    }
}
