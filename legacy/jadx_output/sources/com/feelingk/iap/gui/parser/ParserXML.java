package com.feelingk.iap.gui.parser;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.net.ItemInfoConfirm;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameActivity;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.net.InAppError;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Stack;
import java.util.regex.Pattern;
import junit.framework.Assert;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class ParserXML extends Activity {
    static final String TAG = "ParserXML";
    private static StateListDrawable mReClaimDrawables;
    private static StateListDrawable mSmsAuthDrawables;
    private String RES_VERT_FILE_PATH;
    private String XML_FILE_NAME;
    private String XML_FILE_PATH;
    private String XML_FILE_PATH_KTLG;
    View.OnClickListener autoPurchaseFormBtn;
    View.OnClickListener cancelAuthBtn;
    View.OnClickListener cancelAutoPurchaseFormBtn;
    View.OnClickListener cancelBtn;
    View.OnClickListener cancelJoinBtn;
    View.OnClickListener cancelLguSmsAuthBtn;
    View.OnClickListener cancelYesNoBtn;
    CompoundButton.OnCheckedChangeListener changeCheckBox;
    View.OnClickListener commonBtn;
    private Context context;
    boolean cursorFlag;
    private StateListDrawable dotoriInactive;
    private int foreignInputCarrier;
    View.OnClickListener getlguSmsAuthBtn;
    private int idg;
    private Hashtable<String, Integer> ids;
    View.OnClickListener imageBtn;
    View.OnClickListener imeiAuthBtn;
    View.OnClickListener imeiAuthCancelBtn;
    private Stack<ViewGroup> layoutStack;
    private StateListDrawable mActiveCultureDrawables;
    private StateListDrawable mActiveDotoriDrawables;
    private StateListDrawable mActiveDrawables;
    private StateListDrawable mActiveOCBRegDrawables;
    Drawable mActiveOver;
    private StateListDrawable mActiveTcashDrawables;
    private boolean mAfterAutoPurchaseInfoAgree;
    InputStream mAuthOkStream;
    Drawable mAuthOkbtOn;
    Drawable mAuthOkbtOver;
    private boolean mAutoPurchaseFormPopupMode;
    private Button mBtn;
    private Button mCultureBtn;
    private boolean mCultureCheckFlag;
    private boolean mCultureLandLoginPopupMode;
    private CultureLandTextWatcher mCultureLandTextWatcher;
    private Button mCultureOKButton;
    private TextView mCultureText;
    private Button mDotoriBtn;
    private boolean mDotoriQueryFlag;
    private boolean mDotoriSmsAuthPopupMode;
    private TextView mDotoriText;
    private StateListDrawable mDrawables;
    boolean mFlag;
    private ForeignDevelopeTextLengthWatcher mForeignDevelopeTextLengthWatcher;
    private String mFormName;
    private boolean mIMEIAuthPopupMode;
    private boolean[] mIMEICheckList;
    private StateListDrawable mIMEICheckedDrawbles;
    private Button mIMEIOkBtn;
    private StateListDrawable mIMEInotCheckedDrawble;
    private boolean mImageConfirmPopupMode;
    private StateListDrawable mInactiveCultureDrawables;
    private StateListDrawable mInactiveDotoriDrawables;
    private StateListDrawable mInactiveDrawables;
    private StateListDrawable mInactiveOCBRegDrawables;
    Drawable mInactiveOn;
    private StateListDrawable mInactiveTcashDrawables;
    private String mInfoMessage;
    private ItemInfoConfirm mItemInfoConfirm;
    private PurchaseItem mItemPurchaseItemInfo;
    private boolean[] mJoinCheckList;
    private boolean mJoinPopupMode;
    private boolean mJuminPopupMode;
    private boolean mLGUSmsAuthPopupMode;
    private StateListDrawable mLiminExcessDrawables;
    InputStream mLiminExcessStream;
    Drawable mLimitExcessbtOn;
    Drawable mLimitExcessbtOver;
    private Button mOCBBtn;
    private String mOCBCardNum;
    private Button mOCBRegBtn;
    private boolean mOCBRegPopupMode;
    private TextView mOCBText;
    private Button mOKCashbackOKButton;
    private Button mOkBtn;
    private StateListDrawable mOkDrawbles;
    private boolean mOtpPopupMode;
    private View.OnClickListener mPopupClickListener;
    private boolean[] mPurchaseCheckList;
    InputStream mReClaimStream;
    InputStream mStream;
    private Button mTcashBtn;
    private TextView mTcashText;
    private boolean mYesNoPopupMode;
    private TextView m_AccountPriceTextView;
    private EditText m_CultureLandID;
    private EditText m_CultureLandPW;
    private EditText m_DotoriSMSAuthNum;
    private EditText m_JuminText1;
    private EditText m_JuminText2;
    private EditText m_MDN1;
    private EditText m_MDN2;
    private EditText m_MDN3;
    private EditText m_OCBPWText;
    private EditText m_OCBRegText1;
    private EditText m_OCBRegText2;
    private EditText m_OCBRegText3;
    private EditText m_OCBRegText4;
    private TextView m_discountTextView;
    Drawable mbtOn;
    Drawable mbtOver;
    View.OnClickListener moreInfo;
    View.OnClickListener moreInfoFormBtn1;
    View.OnClickListener moreInfoFormBtn2;
    View.OnClickListener moreInfoFormBtn3;
    private boolean mrForeignInputMDNMode;
    private Button octChange;
    private Button octDel;
    View.OnClickListener okAuthBtn;
    View.OnClickListener okBtn;
    View.OnClickListener okJoinBtn;
    View.OnClickListener okMessageBtn;
    View.OnClickListener okOtpBtn;
    View.OnClickListener okYesNoBtn;
    private ParserAuthResultCallback onAuthResultCallback;
    private ParserAutoPurchaseFormResultCallback onAutoPurchaseFormResultCallback;
    private ParserCultureLandCallback onCultureLandCallback;
    private ParserDotoriSmsAuthCallback onDotoriSmsAuthCallback;
    OnClickForeignInputMDN onForeignInputMDNClickLisener;
    private ParserForeignInputMDNResultCallback onForeignInputMDNResultCallback;
    private ParserImageResultCallback onImageResultCallback;
    private ParserIMEIAuthCallback onImeiAuthCallback;
    private ParserJoinResultCallback onJoinResultCallback;
    private ParserOCBCallback onOcbCallback;
    private ParserOtpCallback onOtpCallback;
    private ParserResultCallback onResultCallback;
    private ParserYesNoResultCallback onYesNoResultCallback;
    private int orientation;
    private String otpAuthNumber;
    private int strNum;
    private int strNumOCBRegText1;
    private int strNumOCBRegText2;
    private int strNumOCBRegText3;
    private boolean tStoreFlag;
    View.OnClickListener tStoreInfoBtn;
    boolean xperiacheckbox;
    private static ParserLguSmsAuthCallback onLguSmsAuthCallback = null;
    private static LinearLayout mJumiLlView = null;
    private static EditText mLguSmsAuthTv = null;
    private static Button mLguSmsAuthBtn = null;
    private static Button mLguSmsAuthOkBtn = null;
    public static String mOTPNumber = null;
    private static Boolean mLguSmsAuthClickFlag = false;
    private static Boolean nextStep = false;
    private static Boolean mOCBPointQueryFlag = false;
    private static boolean sendDotoriSmsFlag = false;
    private static boolean mCultureLoginFlag = false;
    private static String mCultureLandID = null;
    static View.OnClickListener okLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.24
        @Override // android.view.View.OnClickListener
        public void onClick(final View v) {
            v.setEnabled(false);
            new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.24.1
                @Override // java.lang.Runnable
                public void run() {
                    v.setEnabled(true);
                }
            });
            ParserXML.onLguSmsAuthCallback.onLguSmsAuthOK();
            ParserXML.mLguSmsAuthClickFlag = false;
        }
    };

    public interface ParserAuthResultCallback {
        void onAuthDialogCancelButtonClick();

        void onAuthDialogOKButtonClick(String str, String str2);
    }

    public interface ParserAutoPurchaseFormResultCallback {
        void onAutoPurchaseFormDialogButtonClick(boolean z);

        void onAutoPurchaseFormDialogCancelButtonClick();
    }

    public interface ParserCultureLandCallback {
        void onCultureLandButtonClick(String str, String str2);

        void onCultureLandCancelButtonClick();
    }

    public interface ParserDotoriSmsAuthCallback {
        void onDotoriSmsAuthCancelButtonClick();

        void onDotoriSmsAuthOKButtonClick();

        void onDotoriSmsAuthSMSReceiveButtonClick();
    }

    public interface ParserForeignInputMDNResultCallback {
        void onForeignInputMDNOKButtonClick(int i, String str, String str2);
    }

    public interface ParserIMEIAuthCallback {
        void onIMEIAuthDialogCancelButtonClick();

        void onIMEIAuthDialogOKButtonClick();
    }

    public interface ParserImageResultCallback {
        void onImageDialogButtonClick();
    }

    public interface ParserJoinResultCallback {
        void onJoinDialogCancelButtonClick();

        void onJoinDialogOKButtonClick(String str);

        void onJoinFormDialogPopupClick(int i);
    }

    public interface ParserLguSmsAuthCallback {
        void onEnterTstore();

        void onErrorPopup();

        String onGetLguSmsAuthTime();

        void onLguSmsAuthCancer();

        void onLguSmsAuthNumberReq();

        void onLguSmsAuthOK();

        void onSetLguSmsAuthTime(boolean z);

        void onTstoreLockError(String str);
    }

    public interface ParserOCBCallback {
        void onOCBPWDCancelButtonClick();

        void onOCBPWDOKButtonClick(String str);

        void onOCBRegistrationButtonClick(String str);

        void onOCBRegistrationCancelClick();
    }

    public interface ParserOtpCallback {
        void onOtpDialogCancelButtonClick();

        void onOtpDialogOK();

        void onOtpErrorPopup();

        void onOtpTstoreButtonClick();
    }

    public interface ParserPopupDlgResultCallback {
        void onDlgButtonClick();

        void onErrorDlgBtnClick();
    }

    public interface ParserResultCallback {
        void onAutoPurchaseCheck(boolean z);

        void onAutoPurchaseInfoClick(String str, String str2);

        void onEnterTstore();

        void onPurchaseAutoButtonClick();

        void onPurchaseAutoCancelButtonClick(String str);

        void onPurchaseButtonClick();

        void onPurchaseCancelButtonClick();

        void onShowCultureLandDialog();

        void onShowDotoriQueryBtnClick(boolean z);

        void onShowMessageDialog();

        void onShowOCBPWDDialog();

        void onShowOCBRegPopup(String str);

        void onTstoreLockError(String str);

        void onUseTCashCheckChanged(boolean z);
    }

    public interface ParserYesNoResultCallback {
        void onYesNoDialogCancelButtonClick();

        void onYesNoDialogOKButtonClick();
    }

    public static void setOTPNumber(String otpNum) {
        if (otpNum != null && mLguSmsAuthTv != null) {
            mOTPNumber = otpNum;
            mLguSmsAuthTv.setTextColor(Color.parseColor("#FF6F00"));
            mLguSmsAuthTv.setTextSize(1, 30.0f);
            mLguSmsAuthTv.setText(otpNum);
            mLguSmsAuthTv.setPadding(0, 0, 0, 0);
            InputFilter[] filterArray = {new InputFilter.LengthFilter(6)};
            mLguSmsAuthTv.setFilters(filterArray);
            mLguSmsAuthOkBtn.setBackgroundDrawable(mSmsAuthDrawables);
            mLguSmsAuthOkBtn.setOnClickListener(okLguSmsAuthBtn);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserYesNoResultCallback parserYesNoResultCallback, int i, String str, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onYesNoResultCallback = parserYesNoResultCallback;
        if ("YesNo".equals(str)) {
            this.mYesNoPopupMode = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserImageResultCallback parserImageResultCallback, int i, String str, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onImageResultCallback = parserImageResultCallback;
        if ("PermissionPopup".equals(str)) {
            this.mImageConfirmPopupMode = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserAutoPurchaseFormResultCallback parserAutoPurchaseFormResultCallback, int i, String str, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onAutoPurchaseFormResultCallback = parserAutoPurchaseFormResultCallback;
        if ("AutoPurchaseForm".equals(str)) {
            this.mAutoPurchaseFormPopupMode = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserIMEIAuthCallback parserIMEIAuthCallback, String str, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onImeiAuthCallback = parserIMEIAuthCallback;
        if ("IMEIAuthForm".equals(str)) {
            this.mIMEIAuthPopupMode = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserJoinResultCallback parserJoinResultCallback, int i, String str, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onJoinResultCallback = parserJoinResultCallback;
        if ("Join".equals(str)) {
            this.mJoinPopupMode = z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserAuthResultCallback parserAuthResultCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onAuthResultCallback = parserAuthResultCallback;
        this.mJuminPopupMode = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserForeignInputMDNResultCallback parserForeignInputMDNResultCallback) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onForeignInputMDNResultCallback = parserForeignInputMDNResultCallback;
        this.mrForeignInputMDNMode = true;
    }

    public ParserXML(Context c, ParserResultCallback callback) {
        this(c);
        this.onResultCallback = callback;
    }

    public ParserXML(Context c, ParserResultCallback callback, int isTelecomCarrier, boolean isDeviceTab) {
        this(c);
        this.onResultCallback = callback;
    }

    public ParserXML(Context c, ParserResultCallback callback, int isTelecomCarrier, boolean isDeviceTab, boolean bJuminPopupMode) {
        this(c);
        this.onResultCallback = callback;
        this.mJuminPopupMode = bJuminPopupMode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserOtpCallback parserOtpCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onOtpCallback = parserOtpCallback;
        this.mOtpPopupMode = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserLguSmsAuthCallback parserLguSmsAuthCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        onLguSmsAuthCallback = parserLguSmsAuthCallback;
        this.mLGUSmsAuthPopupMode = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserOCBCallback parserOCBCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onOcbCallback = parserOCBCallback;
        this.mOCBRegPopupMode = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserCultureLandCallback parserCultureLandCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onCultureLandCallback = parserCultureLandCallback;
        this.mCultureLandLoginPopupMode = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParserXML(Context context, ParserDotoriSmsAuthCallback parserDotoriSmsAuthCallback, boolean z) {
        this.layoutStack = null;
        this.ids = null;
        this.context = null;
        this.onResultCallback = null;
        this.onAuthResultCallback = null;
        this.onYesNoResultCallback = null;
        this.onImageResultCallback = null;
        this.onAutoPurchaseFormResultCallback = null;
        this.onJoinResultCallback = null;
        this.onOtpCallback = null;
        this.onImeiAuthCallback = null;
        this.onOcbCallback = null;
        this.onCultureLandCallback = null;
        this.onDotoriSmsAuthCallback = null;
        this.onForeignInputMDNResultCallback = null;
        this.orientation = 0;
        this.RES_VERT_FILE_PATH = "/res/";
        this.XML_FILE_PATH = "/xml";
        this.XML_FILE_PATH_KTLG = "/xml_kt_lg";
        this.XML_FILE_NAME = "purchase";
        this.mFormName = null;
        this.mInfoMessage = null;
        this.mPopupClickListener = null;
        this.mItemPurchaseItemInfo = null;
        this.mItemInfoConfirm = null;
        this.mJuminPopupMode = false;
        this.mYesNoPopupMode = false;
        this.mImageConfirmPopupMode = false;
        this.mAutoPurchaseFormPopupMode = false;
        this.mJoinPopupMode = false;
        this.mOtpPopupMode = false;
        this.mLGUSmsAuthPopupMode = false;
        this.mIMEIAuthPopupMode = false;
        this.mOCBRegPopupMode = false;
        this.mCultureLandLoginPopupMode = false;
        this.mDotoriSmsAuthPopupMode = false;
        this.mrForeignInputMDNMode = false;
        this.tStoreFlag = false;
        this.cursorFlag = true;
        this.xperiacheckbox = false;
        this.mJoinCheckList = new boolean[3];
        this.mPurchaseCheckList = new boolean[1];
        this.mIMEICheckList = new boolean[1];
        this.m_AccountPriceTextView = null;
        this.m_discountTextView = null;
        this.m_JuminText1 = null;
        this.m_JuminText2 = null;
        this.m_OCBRegText1 = null;
        this.m_OCBRegText2 = null;
        this.m_OCBRegText3 = null;
        this.m_OCBRegText4 = null;
        this.m_OCBPWText = null;
        this.m_CultureLandID = null;
        this.m_CultureLandPW = null;
        this.m_DotoriSMSAuthNum = null;
        this.m_MDN1 = null;
        this.m_MDN2 = null;
        this.m_MDN3 = null;
        this.mAfterAutoPurchaseInfoAgree = true;
        this.otpAuthNumber = GameView.CHARACTER_AI;
        this.mAuthOkStream = null;
        this.mInactiveOn = null;
        this.mbtOn = null;
        this.mbtOver = null;
        this.mLimitExcessbtOn = null;
        this.mLimitExcessbtOver = null;
        this.mAuthOkbtOn = null;
        this.mAuthOkbtOver = null;
        this.mIMEIOkBtn = null;
        this.mFlag = false;
        this.mOCBRegBtn = null;
        this.mTcashText = null;
        this.mDotoriQueryFlag = false;
        this.mCultureCheckFlag = false;
        this.foreignInputCarrier = 0;
        this.mCultureLandTextWatcher = new CultureLandTextWatcher(this, null);
        this.mForeignDevelopeTextLengthWatcher = new ForeignDevelopeTextLengthWatcher(this, 0 == true ? 1 : 0);
        this.okAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback == null) {
                    if (ParserXML.this.onOcbCallback == null) {
                        if (ParserXML.this.onCultureLandCallback == null) {
                            if (ParserXML.this.onDotoriSmsAuthCallback == null) {
                                if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                                    String mdn = String.valueOf(ParserXML.this.m_MDN1.getText().toString()) + ParserXML.this.m_MDN2.getText().toString() + ParserXML.this.m_MDN3.getText().toString();
                                    String juminNum = String.valueOf(ParserXML.this.m_JuminText1.getText().toString()) + ParserXML.this.m_JuminText2.getText().toString();
                                    ParserXML.this.onForeignInputMDNResultCallback.onForeignInputMDNOKButtonClick(ParserXML.this.foreignInputCarrier, mdn, juminNum);
                                    return;
                                }
                                return;
                            }
                            String dotoriSmsAuthNumber = ParserXML.this.m_DotoriSMSAuthNum.getText().toString();
                            IAPLib.setDotoriSmsNumber(dotoriSmsAuthNumber);
                            ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthOKButtonClick();
                            ParserXML.sendDotoriSmsFlag = false;
                            return;
                        }
                        String cultureId = CommonF.getSTRFilter(ParserXML.this.m_CultureLandID.getText().toString());
                        String culturePw = CommonF.getSTRFilter(ParserXML.this.m_CultureLandPW.getText().toString());
                        ParserXML.this.onCultureLandCallback.onCultureLandButtonClick(cultureId, culturePw);
                        if (ParserXML.this.mCultureCheckFlag) {
                            ParserXML.mCultureLoginFlag = true;
                        } else {
                            ParserXML.mCultureLoginFlag = false;
                        }
                        if (ParserXML.mCultureLoginFlag) {
                            ParserXML.mCultureLandID = ParserXML.this.m_CultureLandID.getText().toString();
                            return;
                        }
                        return;
                    }
                    String ocbPwNum = CommonF.getSTRFilter(ParserXML.this.m_OCBPWText.getText().toString());
                    ParserXML.this.onOcbCallback.onOCBPWDOKButtonClick(ocbPwNum);
                    return;
                }
                int num_jumin1 = ParserXML.this.m_JuminText1.getText().length();
                int num_jumin2 = ParserXML.this.m_JuminText2.getText().length();
                if (num_jumin1 != 6 || num_jumin2 != 7) {
                    Toast toast = Toast.makeText(ParserXML.this.context, CommonString.getString(CommonString.Index.ERROR_JUMIN_NUMBER_LENGTH), 0);
                    toast.show();
                } else {
                    ParserXML.this.onAuthResultCallback.onAuthDialogOKButtonClick(ParserXML.this.m_JuminText1.getText().toString(), ParserXML.this.m_JuminText2.getText().toString());
                }
            }
        };
        this.cancelAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onAuthResultCallback != null) {
                    ParserXML.this.onAuthResultCallback.onAuthDialogCancelButtonClick();
                    return;
                }
                if (ParserXML.this.onOcbCallback != null) {
                    ParserXML.this.onOcbCallback.onOCBPWDCancelButtonClick();
                } else if (ParserXML.this.onCultureLandCallback != null) {
                    ParserXML.this.onCultureLandCallback.onCultureLandCancelButtonClick();
                } else if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                    ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
                }
            }
        };
        this.commonBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.onOcbCallback == null) {
                    if (ParserXML.this.onDotoriSmsAuthCallback != null) {
                        ParserXML.sendDotoriSmsFlag = true;
                        ParserXML.this.onDotoriSmsAuthCallback.onDotoriSmsAuthSMSReceiveButtonClick();
                        return;
                    }
                    return;
                }
                ParserXML.this.mOCBCardNum = String.valueOf(ParserXML.this.m_OCBRegText1.getText().toString()) + ParserXML.this.m_OCBRegText2.getText().toString() + ParserXML.this.m_OCBRegText3.getText().toString() + ParserXML.this.m_OCBRegText4.getText().toString();
                ParserXML.this.onOcbCallback.onOCBRegistrationButtonClick(ParserXML.this.mOCBCardNum);
            }
        };
        this.okYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onYesNoResultCallback.onYesNoDialogOKButtonClick();
                } else {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                }
            }
        };
        this.cancelYesNoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
            }
        };
        this.imageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImageResultCallback.onImageDialogButtonClick();
            }
        };
        this.autoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.mPurchaseCheckList[0]) {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(true);
                } else {
                    ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogButtonClick(false);
                }
            }
        };
        this.cancelAutoPurchaseFormBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onAutoPurchaseFormResultCallback.onAutoPurchaseFormDialogCancelButtonClick();
            }
        };
        this.imeiAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogOKButtonClick();
            }
        };
        this.imeiAuthCancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        };
        this.onForeignInputMDNClickLisener = new OnClickForeignInputMDN();
        this.changeCheckBox = new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.11
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                String id = (String) arg0.getTag();
                if ("info_checkbox1".equals(id)) {
                    ParserXML.this.mJoinCheckList[0] = arg1;
                } else if ("info_checkbox2".equals(id)) {
                    ParserXML.this.mJoinCheckList[1] = arg1;
                } else {
                    ParserXML.this.mJoinCheckList[2] = arg1;
                }
                if ("purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchase flag: " + arg1);
                    if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        if (!ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                            ParserXML.this.mPurchaseCheckList[0] = arg1;
                            ParserXML.this.onResultCallback.onAutoPurchaseCheck(arg1);
                        }
                    } else if (ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = false;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = false;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(false);
                    } else if (!ParserXML.this.mAfterAutoPurchaseInfoAgree) {
                        ParserXML.this.mPurchaseCheckList[0] = true;
                        ParserXML.this.mAfterAutoPurchaseInfoAgree = true;
                        ParserXML.this.onResultCallback.onAutoPurchaseCheck(true);
                    }
                }
                if ("auto_purchase_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "autoPurchaseForm flag: " + arg1);
                    ParserXML.this.mPurchaseCheckList[0] = arg1;
                }
                if ("imei_auth_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "imei_auth_checkbox flag: " + arg1);
                    ParserXML.this.mIMEICheckList[0] = arg1;
                    if (ParserXML.this.mIMEICheckList[0]) {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEICheckedDrawbles);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(ParserXML.this.imeiAuthBtn);
                    } else {
                        ParserXML.this.mIMEIOkBtn.setBackgroundDrawable(ParserXML.this.mIMEInotCheckedDrawble);
                        ParserXML.this.mIMEIOkBtn.setOnClickListener(null);
                    }
                }
                if ("otp_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "setOTPAgree flag: " + arg1);
                    if (arg1) {
                        IAPLib.setOTPAgree(true);
                    } else if (!arg1) {
                        IAPLib.setOTPAgree(false);
                    }
                }
                if ("culture_login_checkbox".equals(id)) {
                    CommonF.LOGGER.i(ParserXML.TAG, "culture_login_checkbox flag: " + arg1);
                    if (arg1) {
                        ParserXML.this.mCultureCheckFlag = true;
                    } else {
                        ParserXML.this.mCultureCheckFlag = false;
                    }
                }
            }
        };
        this.moreInfoFormBtn1 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.12
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(1);
            }
        };
        this.moreInfoFormBtn2 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.13
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(2);
            }
        };
        this.moreInfoFormBtn3 = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinFormDialogPopupClick(3);
            }
        };
        this.okJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ParserXML.this.mJoinCheckList[0] || !ParserXML.this.mJoinCheckList[1] || !ParserXML.this.mJoinCheckList[2]) {
                    ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("error");
                    return;
                }
                ParserXML.this.onJoinResultCallback.onJoinDialogOKButtonClick("join");
                ParserXML.this.mJoinCheckList = new boolean[3];
            }
        };
        this.cancelJoinBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
            }
        };
        this.okBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.17
            @Override // android.view.View.OnClickListener
            public void onClick(final View v) {
                v.setEnabled(false);
                new Handler().post(new Runnable() { // from class: com.feelingk.iap.gui.parser.ParserXML.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v.setEnabled(true);
                    }
                });
                if (!ParserXML.this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                    IAPLib.setPayments(SingletonCounter.getInstance().getmOCBUse(), SingletonCounter.getInstance().getmDotoriUse(), SingletonCounter.getInstance().getmCultureUse(), SingletonCounter.getInstance().getmTCashUse());
                } else {
                    if (ParserXML.this.mPurchaseCheckList[0]) {
                        ParserXML.this.onResultCallback.onPurchaseAutoButtonClick();
                        ParserXML.this.mPurchaseCheckList = new boolean[1];
                        ParserXML.this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree = false;
                        return;
                    }
                    ParserXML.this.onResultCallback.onPurchaseAutoCancelButtonClick("error");
                }
            }
        };
        this.tStoreInfoBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ParserXML.this.tStoreFlag) {
                    if (ParserXML.this.onResultCallback != null) {
                        ParserXML.this.onResultCallback.onEnterTstore();
                        return;
                    } else {
                        ParserXML.onLguSmsAuthCallback.onEnterTstore();
                        return;
                    }
                }
                if (ParserXML.this.onResultCallback != null) {
                    ParserXML.this.onResultCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                } else {
                    ParserXML.onLguSmsAuthCallback.onTstoreLockError(CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
                }
            }
        };
        this.cancelBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.19
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SingletonCounter.getInstance().clear();
                ParserXML.this.onResultCallback.onPurchaseCancelButtonClick();
            }
        };
        this.okMessageBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.20
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.mPopupClickListener.onClick(v);
            }
        };
        this.moreInfo = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.21
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.this.onResultCallback.onAutoPurchaseInfoClick(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
        };
        this.okOtpBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.22
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PackageManager pm = ParserXML.this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i2 = 0; i2 < nSize; i2++) {
                    ApplicationInfo app = appList.get(i2);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        ParserXML.this.tStoreFlag = true;
                        CommonF.LOGGER.i(ParserXML.TAG, "티스토어 설치여부: " + ParserXML.this.tStoreFlag);
                    }
                }
                if (!ParserXML.this.tStoreFlag) {
                    ParserXML.this.onOtpCallback.onOtpTstoreButtonClick();
                    return;
                }
                PackageInfo info = null;
                try {
                    info = ParserXML.this.context.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
                } catch (PackageManager.NameNotFoundException e1) {
                    e1.printStackTrace();
                }
                String versionName = info.versionName;
                int versionCode = info.versionCode;
                CommonF.LOGGER.i(ParserXML.TAG, "application versionName : " + versionName);
                CommonF.LOGGER.i(ParserXML.TAG, "application versionCode : " + versionCode);
                if (versionCode < 19) {
                    ParserXML.this.onOtpCallback.onOtpErrorPopup();
                    return;
                }
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                ParserXML.this.context.startActivity(intent);
            }
        };
        this.getlguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.23
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                ParserXML.mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                ParserXML.mLguSmsAuthClickFlag = true;
                if (ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime() == null) {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow2 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                    return;
                }
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                String currTime = sdfNow.format(new Date(now));
                String oldTime = ParserXML.onLguSmsAuthCallback.onGetLguSmsAuthTime();
                CommonF.LOGGER.i(ParserXML.TAG, "currTime: " + currTime);
                CommonF.LOGGER.i(ParserXML.TAG, "oldTime: " + oldTime);
                if (CommonF.getTimeDifference(oldTime, currTime) < 180) {
                    ParserXML.onLguSmsAuthCallback.onErrorPopup();
                    CommonF.LOGGER.e(ParserXML.TAG, "LguSmsAuthNumberReq Fail");
                } else {
                    ParserXML.onLguSmsAuthCallback.onLguSmsAuthNumberReq();
                    CommonF.LOGGER.i(ParserXML.TAG, "LguSmsAuthNumberReq Flow1 Start ");
                    ParserXML.onLguSmsAuthCallback.onSetLguSmsAuthTime(true);
                }
            }
        };
        this.cancelLguSmsAuthBtn = new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.25
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ParserXML.onLguSmsAuthCallback.onLguSmsAuthCancer();
                ParserXML.mLguSmsAuthClickFlag = false;
            }
        };
        this.context = context;
        this.layoutStack = new Stack<>();
        this.ids = new Hashtable<>();
        this.onDotoriSmsAuthCallback = parserDotoriSmsAuthCallback;
        this.mDotoriSmsAuthPopupMode = z;
    }

    public void ReleaseResource() {
        if (this.layoutStack != null) {
            this.layoutStack.clear();
            this.layoutStack = null;
        }
        if (this.ids != null) {
            this.ids.clear();
            this.ids = null;
        }
        this.context = null;
        this.onResultCallback = null;
    }

    public View Start(int orientation, Object objData) {
        String fileName;
        this.orientation = orientation;
        CommonF.LOGGER.e(TAG, "# purchase Start !! GUI-rotate =" + orientation);
        this.mItemPurchaseItemInfo = (PurchaseItem) objData;
        if (this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
            if (this.orientation == 0 || this.orientation == 2) {
                fileName = String.valueOf(getResourceXMLPath()) + Objects.Animation.DEVIDER_DATA + this.XML_FILE_NAME + "W_Auto.xml";
            } else {
                fileName = String.valueOf(getResourceXMLPath()) + Objects.Animation.DEVIDER_DATA + this.XML_FILE_NAME + "H_Auto.xml";
            }
        } else if (this.orientation == 0 || this.orientation == 2) {
            fileName = String.valueOf(getResourceXMLPath()) + Objects.Animation.DEVIDER_DATA + this.XML_FILE_NAME + "_w.xml";
        } else {
            fileName = String.valueOf(getResourceXMLPath()) + Objects.Animation.DEVIDER_DATA + this.XML_FILE_NAME + "_h.xml";
        }
        return Start(fileName);
    }

    public View Start(String xmlFileFname, String message, Object obj) {
        this.mInfoMessage = message;
        this.mPopupClickListener = (View.OnClickListener) obj;
        return Start(xmlFileFname);
    }

    public View Start(String xmlFileFname, String formName, String message, Object obj, int orientation) {
        String fileName;
        this.mFormName = formName;
        this.mInfoMessage = message;
        this.mPopupClickListener = (View.OnClickListener) obj;
        this.orientation = orientation;
        CommonF.LOGGER.e(TAG, "# AutoPurchaseForm용 Start !! GUI-rotate =" + orientation);
        if (this.orientation == 0 || this.orientation == 2) {
            fileName = String.valueOf(xmlFileFname) + "W.xml";
        } else {
            fileName = String.valueOf(xmlFileFname) + "H.xml";
        }
        return Start(fileName);
    }

    public View StartIMEIAuth(String xmlFileFname, Object obj, int orientation) {
        String fileName;
        this.mPopupClickListener = (View.OnClickListener) obj;
        this.orientation = orientation;
        CommonF.LOGGER.e(TAG, "# IMEIAuthDialog Start !! GUI-rotate =" + orientation);
        if (this.orientation == 0 || this.orientation == 2) {
            fileName = String.valueOf(xmlFileFname) + "w.xml";
        } else {
            fileName = String.valueOf(xmlFileFname) + "h.xml";
        }
        return Start(fileName);
    }

    public View Start(String xmlFileFname, String message, Object obj, int orientation) {
        String fileName;
        this.mInfoMessage = message;
        this.mPopupClickListener = (View.OnClickListener) obj;
        this.orientation = orientation;
        CommonF.LOGGER.e(TAG, "# Dlg Start !! GUI-rotate =" + orientation);
        if (this.orientation == 0 || this.orientation == 2) {
            fileName = String.valueOf(xmlFileFname) + "w.xml";
        } else {
            fileName = String.valueOf(xmlFileFname) + "h.xml";
        }
        return Start(fileName);
    }

    public View Start(String xmlFileFname, Object obj, int orientation) {
        String fileName;
        this.mPopupClickListener = (View.OnClickListener) obj;
        this.orientation = orientation;
        CommonF.LOGGER.e(TAG, "# Dlg Start !! GUI-rotate =" + orientation);
        if (this.orientation == 0 || this.orientation == 2) {
            fileName = String.valueOf(xmlFileFname) + "w.xml";
        } else {
            fileName = String.valueOf(xmlFileFname) + "h.xml";
        }
        return Start(fileName);
    }

    private View Start(String xmlFileFname) {
        View parsingView;
        try {
            XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
            XmlPullParser parse = factory.newPullParser();
            InputStream is = getClass().getResourceAsStream(xmlFileFname);
            parse.setInput(is, ConnectNetwork.UTF_8);
            if (this.mJuminPopupMode || this.mOCBRegPopupMode || this.mCultureLandLoginPopupMode || this.mDotoriSmsAuthPopupMode || this.mrForeignInputMDNMode) {
                parsingView = inflateAuthPopup(parse);
            } else if (this.mYesNoPopupMode) {
                parsingView = inflateYesNoPopup(parse, this.mInfoMessage);
            } else if (this.mImageConfirmPopupMode) {
                parsingView = inflateImagePopup(parse, this.mInfoMessage);
            } else if (this.mAutoPurchaseFormPopupMode) {
                parsingView = inflateAutoPurchaseFormPopup(parse);
            } else if (this.mIMEIAuthPopupMode) {
                parsingView = inflatIMEIAuthPopup(parse);
            } else if (this.mJoinPopupMode) {
                parsingView = inflateJoinPopup(parse);
            } else if (this.mOtpPopupMode) {
                parsingView = inflateOtpPopup(parse);
            } else if (this.mLGUSmsAuthPopupMode) {
                parsingView = inflateLguSmsAuthPopup(parse);
            } else {
                parsingView = inflate(parse);
            }
            is.close();
            return parsingView;
        } catch (IOException ex) {
            ex.printStackTrace();
            return null;
        } catch (XmlPullParserException ex2) {
            ex2.printStackTrace();
            return null;
        }
    }

    private View inflate(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createView(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    break;
            }
            evt = parse.next();
        }
        return root;
    }

    private boolean isLayout(String name) {
        return name.endsWith("Layout");
    }

    private boolean isScrollView(String name) {
        return name.endsWith("ScrollView");
    }

    private View createView(XmlPullParser parse) {
        String sellerName;
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        SellerInfoConfirm sellerInfoConfirm = null;
        Boolean sellerPhoneNumberFlag = false;
        if (this.mItemPurchaseItemInfo != null) {
            SingletonCounter.getInstance().setmTotalBalance(this.mItemPurchaseItemInfo.itemPrice);
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal());
            sellerInfoConfirm = IAPLib.getSellerInfo();
            if (sellerInfoConfirm != null && sellerInfoConfirm.getmSellerPhoneNumber() != null && !sellerInfoConfirm.getmSellerPhoneNumber().equals(GameActivity.JSON_VALUE_IMAGES_NULL)) {
                sellerPhoneNumberFlag = true;
            }
        }
        String modelName = Build.MODEL;
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                if (image.equals("dot_line")) {
                    InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "line_dot_01.png");
                    Drawable line_dot_01 = Drawable.createFromStream(is, null);
                    try {
                        is.close();
                    } catch (IOException e) {
                    }
                    ((BitmapDrawable) line_dot_01).setTileModeX(Shader.TileMode.REPEAT);
                    ((BitmapDrawable) line_dot_01).setTileModeY(Shader.TileMode.REPEAT);
                    ll.setBackgroundDrawable(line_dot_01);
                } else {
                    InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                    ll.setBackgroundDrawable(Drawable.createFromStream(is2, image));
                    try {
                        is2.close();
                    } catch (IOException e2) {
                    }
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else if (gravity.equals("left")) {
                    ll.setGravity(3);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
            String paddingTop = findAttribute(atts, "a:paddingTop");
            String paddingBom = findAttribute(atts, "a:paddingBottom");
            String paddingLeft = findAttribute(atts, "a:paddingLeft");
            String paddingRight = findAttribute(atts, "a:paddingRight");
            int TTop = 0;
            if (paddingTop != null) {
                TTop = readSize(paddingTop);
            }
            int TBom = paddingBom != null ? readSize(paddingBom) : 0;
            int TLeft = paddingLeft != null ? readSize(paddingLeft) : 0;
            int TRight = paddingRight != null ? readSize(paddingRight) : 0;
            ll.setPadding(TLeft, TTop, TRight, TBom);
            String id = findAttribute(atts, "a:id");
            if (id != null && this.mItemPurchaseItemInfo != null) {
                if (this.mItemPurchaseItemInfo.ocbRegisterInfo.equals("Y") && id.equals("unregistered")) {
                    ll.setVisibility(8);
                } else if (this.mItemPurchaseItemInfo.ocbRegisterInfo.equals(Objects.Animation.TYPE_INITIATE) && id.equals("registered")) {
                    ll.setVisibility(8);
                }
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is3, image2));
                try {
                    is3.close();
                } catch (IOException e3) {
                }
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String textID = findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String infotext = findAttribute(atts, "a:infotext");
            String loctbtntext = findAttribute(atts, "a:loctbtntext");
            String otptext = findAttribute(atts, "a:otptext");
            String textcontent = findAttribute(atts, "a:textcontent");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (loctbtntext != null) {
                tv.setText(CommonString.getString(CommonString.Index.MENT_SECURE_PAYMENTS));
            }
            if (infotext != null) {
                PackageManager pm = this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i = 0; i < nSize; i++) {
                    ApplicationInfo app = appList.get(i);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        this.tStoreFlag = true;
                    }
                }
            }
            if (otptext != null) {
                tv.setText(CommonString.getString(CommonString.Index.DO_NOT_USE_AUTHENITACTION));
            }
            if (textcontent != null) {
                textcontent.replace("\\n", "\n");
                tv.setText("<" + CommonString.getString(CommonString.Index.MONTH_AUTO_PAYMENT_INFO) + ">\n월별 자동결제 상품이란,");
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textID != null) {
                if (textID.equals("ItemName")) {
                    String itemName = this.mItemPurchaseItemInfo.itemName;
                    tv.setText(itemName);
                    tv.setEllipsize(TextUtils.TruncateAt.END);
                    tv.setSingleLine();
                } else if (textID.equals("ItemUseDate")) {
                    tv.setText(this.mItemPurchaseItemInfo.itemUseDate);
                } else if (textID.equals("ItemPrice")) {
                    tv.setText(String.valueOf(this.mItemPurchaseItemInfo.itemPrice) + CommonString.getString(CommonString.Index.WON));
                } else if (textID.equals("ItemOCB")) {
                    this.mOCBText = tv;
                    if (IAPLib.getOCBPointInfo()) {
                        this.mOCBText.setText(String.valueOf(Integer.parseInt(IAPLib.getOCBPoint()) - SingletonCounter.getInstance().getmOCBUse()) + " P");
                    } else {
                        this.mOCBText.setText("0 P");
                    }
                } else if (textID.equals("ItemDotori")) {
                    this.mDotoriText = tv;
                    if (this.mItemPurchaseItemInfo.dotoriLinkInfo.equals("Y")) {
                        int dotoriNum = this.mItemPurchaseItemInfo.dotoriBalance / 100;
                        tv.setText(String.valueOf(dotoriNum - (SingletonCounter.getInstance().getmDotoriUse() / 100)) + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                    } else {
                        tv.setText(InAppError.SUCCESS + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                    }
                } else if (textID.equals("ItemCultureCash")) {
                    this.mCultureText = tv;
                    if (IAPLib.getCultureCashQueryInfo() && IAPLib.getCultureLandCashPoint() != null) {
                        tv.setText(String.valueOf(Integer.parseInt(IAPLib.getCultureLandCashPoint()) - SingletonCounter.getInstance().getmCultureUse()) + CommonString.getString(CommonString.Index.WON));
                    } else {
                        tv.setText(InAppError.SUCCESS + CommonString.getString(CommonString.Index.WON));
                    }
                } else if (textID.equals("ItemCash")) {
                    this.mTcashText = tv;
                    tv.setText(String.valueOf(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse()) + " P");
                } else if (textID.equals("Discount")) {
                    this.m_discountTextView = tv;
                    this.m_discountTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPaymentTotal()) + CommonString.getString(CommonString.Index.WON));
                } else if (textID.equals("Payments")) {
                    this.m_AccountPriceTextView = tv;
                    this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal()) + CommonString.getString(CommonString.Index.WON));
                } else if (textID.equals("xperiaCash")) {
                    if (modelName.endsWith("LT15i")) {
                        tv.setText(String.valueOf(CommonString.getString(CommonString.Index.USING)) + "  ");
                    } else {
                        tv.setText(GameView.CHARACTER_AI);
                    }
                } else if (textID.equals("commonMessage")) {
                    tv.setText(this.mInfoMessage);
                } else if (textID.equals("Version")) {
                    if (Defines.IAP_GW_IP.equals(Defines.IAP_GW_IP)) {
                        tv.setText("V 12.09.17(" + CommonString.getString(CommonString.Index.DEVELOPMENT) + ")");
                    } else {
                        tv.setText(Defines.IAP_LIBRARY_VERSION);
                    }
                } else if (textID.equals("HeaderMessage") || textID.equals("FooterMessage")) {
                    if (this.mItemPurchaseItemInfo.FinalVersionCheck) {
                        return null;
                    }
                } else if (textID.equals("OCBCardNumber")) {
                    tv.setText(this.mItemPurchaseItemInfo.ocbCardNumber);
                } else if (textID.equals("infoText")) {
                    if (CommonF.getCarrier(this.context) == 1) {
                        tv.setText(CommonString.getString(CommonString.Index.MENT_SUM_PAYMENTS));
                    } else {
                        tv.setText(CommonString.getString(CommonString.Index.MENT_DANAL_PAYMENTS));
                    }
                } else if (textID.equals("finalVersion_Item")) {
                    if (this.mItemPurchaseItemInfo.FinalVersionCheck) {
                        tv.setVisibility(8);
                    } else {
                        tv.setVisibility(0);
                    }
                } else if (textID.equals("seller_tel_num") || textID.equals("seller_tel_num_view")) {
                    if (!sellerPhoneNumberFlag.booleanValue()) {
                        tv.setVisibility(8);
                    } else if (textID.equals("seller_tel_num_view")) {
                        String sellerNumber = sellerInfoConfirm.getmSellerPhoneNumber();
                        if (!sellerNumber.equals(GameActivity.JSON_VALUE_IMAGES_NULL)) {
                            tv.setText(PhoneNumberUtils.formatNumber(sellerNumber));
                        }
                    }
                } else if (sellerInfoConfirm != null && textID.equals("seller_name_view")) {
                    if (sellerInfoConfirm.getmSellerName().equals(GameActivity.JSON_VALUE_IMAGES_NULL) && sellerInfoConfirm.getmCompanyName().equals(GameActivity.JSON_VALUE_IMAGES_NULL)) {
                        sellerName = GameView.CHARACTER_AI;
                    } else if (!sellerInfoConfirm.getmSellerName().equals(GameActivity.JSON_VALUE_IMAGES_NULL)) {
                        sellerName = sellerInfoConfirm.getmSellerName();
                    } else {
                        sellerName = sellerInfoConfirm.getmCompanyName();
                    }
                    tv.setSingleLine(true);
                    tv.setFocusable(true);
                    tv.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    tv.setFocusableInTouchMode(true);
                    tv.setSelected(true);
                    tv.setText(sellerName);
                } else if (sellerInfoConfirm != null && textID.equals("seller_mail_view")) {
                    if (sellerInfoConfirm.getmSellerEmail().equals(GameActivity.JSON_VALUE_IMAGES_NULL)) {
                        tv.setText(GameView.CHARACTER_AI);
                    } else {
                        tv.setSingleLine(true);
                        tv.setFocusable(true);
                        tv.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        tv.setFocusableInTouchMode(true);
                        tv.setSelected(true);
                        tv.setText(sellerInfoConfirm.getmSellerEmail());
                    }
                }
            }
            if (textGravity != null) {
                if (textGravity.equals("right")) {
                    tv.setGravity(5);
                } else if (textGravity.equals("left")) {
                    tv.setGravity(3);
                } else if (textGravity.equals("center")) {
                    tv.setGravity(17);
                } else {
                    tv.setGravity(19);
                }
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof ImageView) {
            ImageView imageview = (ImageView) result;
            String image3 = findAttribute(atts, "a:background");
            if (image3 != null) {
                InputStream is4 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image3 + ".png");
                Drawable mDrawable = Drawable.createFromStream(is4, image3);
                try {
                    is4.close();
                } catch (IOException e4) {
                }
                imageview.setBackgroundDrawable(mDrawable);
            }
        }
        if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            String btnId = findAttribute(atts, "a:id");
            if (offimage != null) {
                this.mBtn = (Button) result;
                this.mDrawables = new StateListDrawable();
                this.mInactiveDrawables = new StateListDrawable();
                this.mInactiveDotoriDrawables = new StateListDrawable();
                this.mInactiveCultureDrawables = new StateListDrawable();
                this.mInactiveTcashDrawables = new StateListDrawable();
                this.mActiveDrawables = new StateListDrawable();
                this.mActiveDotoriDrawables = new StateListDrawable();
                this.mActiveCultureDrawables = new StateListDrawable();
                this.mActiveTcashDrawables = new StateListDrawable();
                this.mStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
                this.mbtOn = Drawable.createFromStream(this.mStream, offimage);
                try {
                    this.mStream.close();
                } catch (IOException e5) {
                }
                this.mStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
                this.mbtOver = Drawable.createFromStream(this.mStream, onimage);
                try {
                    this.mStream.close();
                } catch (IOException e6) {
                }
                if (offimage.equals("bt_01_nor.9")) {
                    this.mInactiveOn = this.mbtOn;
                    this.mActiveOver = this.mbtOver;
                }
                this.mDrawables.addState(new int[]{R.attr.state_pressed}, this.mbtOver);
                this.mDrawables.addState(new int[0], this.mbtOn);
                this.mInactiveDrawables.addState(new int[]{R.attr.state_pressed}, this.mInactiveOn);
                this.mInactiveDrawables.addState(new int[0], this.mInactiveOn);
                this.mInactiveDotoriDrawables.addState(new int[]{R.attr.state_pressed}, this.mInactiveOn);
                this.mInactiveDotoriDrawables.addState(new int[0], this.mInactiveOn);
                this.mInactiveCultureDrawables.addState(new int[]{R.attr.state_pressed}, this.mInactiveOn);
                this.mInactiveCultureDrawables.addState(new int[0], this.mInactiveOn);
                this.mInactiveTcashDrawables.addState(new int[]{R.attr.state_pressed}, this.mInactiveOn);
                this.mInactiveTcashDrawables.addState(new int[0], this.mInactiveOn);
                this.mActiveDrawables.addState(new int[]{R.attr.state_pressed}, this.mActiveOver);
                this.mActiveDrawables.addState(new int[0], this.mInactiveOn);
                this.mActiveDotoriDrawables.addState(new int[]{R.attr.state_pressed}, this.mActiveOver);
                this.mActiveDotoriDrawables.addState(new int[0], this.mInactiveOn);
                this.mActiveCultureDrawables.addState(new int[]{R.attr.state_pressed}, this.mActiveOver);
                this.mActiveCultureDrawables.addState(new int[0], this.mInactiveOn);
                this.mActiveTcashDrawables.addState(new int[]{R.attr.state_pressed}, this.mActiveOver);
                this.mActiveTcashDrawables.addState(new int[0], this.mInactiveOn);
                this.mLiminExcessDrawables = new StateListDrawable();
                this.mLiminExcessStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "bt_buy_dim.png");
                this.mLimitExcessbtOn = Drawable.createFromStream(this.mLiminExcessStream, "bt_buy_dim");
                try {
                    this.mLiminExcessStream.close();
                } catch (IOException e7) {
                }
                this.mLiminExcessStream = null;
                this.mLiminExcessStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "bt_buy_dim.png");
                this.mLimitExcessbtOver = Drawable.createFromStream(this.mLiminExcessStream, "bt_buy_dim");
                try {
                    this.mLiminExcessStream.close();
                } catch (IOException e8) {
                }
                this.mLiminExcessStream = null;
                this.mLiminExcessDrawables.addState(new int[]{R.attr.state_pressed}, this.mLimitExcessbtOver);
                this.mLiminExcessDrawables.addState(new int[0], this.mLimitExcessbtOn);
                if (offimage.equals("btn_buy_nor_h") && IAPLib.getLimitExcess()) {
                    this.mOkBtn = this.mBtn;
                    this.mOkDrawbles = this.mDrawables;
                    this.mFlag = true;
                } else {
                    this.mFlag = false;
                }
                if (offimage.equals("btn_buy_nor_h") && this.mFlag) {
                    this.mBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
                } else {
                    this.mBtn.setBackgroundDrawable(this.mDrawables);
                }
                if (offimage.equals("bt_01_nor.9") && btnId != null) {
                    this.mBtn.setTextColor(Color.parseColor("#CFCFCF"));
                    if (btnId.equals("OCBBtn")) {
                        this.mOCBBtn = this.mBtn;
                        this.mOCBBtn.setPadding(0, 0, 0, 0);
                        if (this.mItemPurchaseItemInfo.ocbRegisterInfo.equals("Y")) {
                            if (IAPLib.getOCBPointInfo()) {
                                String strPoint = IAPLib.getOCBPoint();
                                if (strPoint == null || strPoint.length() <= 0 || Integer.parseInt(strPoint) < 10) {
                                    mOCBPointQueryFlag = true;
                                    if (SingletonCounter.getInstance().ismOCBBtnFlag()) {
                                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                    } else {
                                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                                    }
                                    this.mOCBBtn.setTextSize(1, 13.0f);
                                    this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                                    this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                    this.mOCBBtn.setClickable(false);
                                    this.mOCBBtn.setPadding(0, 0, 0, 0);
                                } else {
                                    mOCBPointQueryFlag = true;
                                    if (SingletonCounter.getInstance().ismOCBBtnFlag()) {
                                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                    } else {
                                        this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                                    }
                                    this.mOCBBtn.setTextSize(1, 13.0f);
                                    this.mOCBBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.26
                                        @Override // android.view.View.OnClickListener
                                        public void onClick(View v) {
                                            if (ParserXML.this.octDel != null && ParserXML.this.octChange != null) {
                                                ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                                ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                            }
                                            if (SingletonCounter.getInstance().ismOCBBtnFlag()) {
                                                ParserXML.this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE));
                                                ParserXML.this.mOCBBtn.setTextSize(1, 13.0f);
                                                ParserXML.this.mOCBBtn.setPadding(0, 0, 0, 0);
                                                SingletonCounter.getInstance().setmOCBBtnFlag(false);
                                                ParserXML.this.del_payments_amount("OCB");
                                                return;
                                            }
                                            ParserXML.this.mOCBBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                            ParserXML.this.mOCBBtn.setTextSize(1, 13.0f);
                                            ParserXML.this.mOCBBtn.setPadding(0, 0, 0, 0);
                                            SingletonCounter.getInstance().setmOCBBtnFlag(true);
                                            ParserXML.this.add_payments_amount("OCB");
                                        }
                                    });
                                }
                            } else {
                                this.mOCBBtn.setText(CommonString.getString(CommonString.Index.OCB_INQUIRY));
                                this.mOCBBtn.setTextSize(1, 13.0f);
                                this.mOCBBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.27
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View v) {
                                        ParserXML.this.onResultCallback.onShowOCBPWDDialog();
                                    }
                                });
                            }
                        } else {
                            this.mOCBBtn.setText(CommonString.getString(CommonString.Index.OCB_REGIST_SMALL));
                            this.mOCBBtn.setTextSize(1, 13.0f);
                            this.mOCBBtn.setTextSize(1, 13.0f);
                            if (this.mOCBText != null) {
                                this.mOCBText.setText("0 P");
                            }
                            this.mOCBBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.28
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v) {
                                    ParserXML.this.onResultCallback.onShowOCBRegPopup("C");
                                }
                            });
                        }
                        if (SingletonCounter.getInstance().getmPostPay() == 0 && SingletonCounter.getInstance().getmOCBUse() == 0) {
                            this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                            this.mOCBBtn.setClickable(false);
                            this.mOCBBtn.setPadding(0, 0, 0, 0);
                        }
                    } else if (btnId.equals("DotoriBtn")) {
                        this.mDotoriBtn = this.mBtn;
                        this.mDotoriBtn.setPadding(0, 0, 0, 0);
                        if (this.mItemPurchaseItemInfo.dotoriLinkInfo.equals("Y")) {
                            if (SingletonCounter.getInstance().ismDotoriBtnFlag()) {
                                this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                            } else {
                                this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                            }
                            this.mDotoriBtn.setTextSize(1, 13.0f);
                            if (this.mItemPurchaseItemInfo.IsExistDotoriSmsAuthLogFile) {
                                if (this.mItemPurchaseItemInfo.dotoriBalance != 0) {
                                    this.mDotoriBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.29
                                        @Override // android.view.View.OnClickListener
                                        public void onClick(View v) {
                                            if (ParserXML.this.octDel != null && ParserXML.this.octChange != null) {
                                                ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                                ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                            }
                                            if (SingletonCounter.getInstance().ismDotoriBtnFlag()) {
                                                ParserXML.this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                                                ParserXML.this.mDotoriBtn.setTextSize(1, 13.0f);
                                                ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                                SingletonCounter.getInstance().setmDotoriBtnFlag(false);
                                                ParserXML.this.del_payments_amount("DOTORI");
                                                return;
                                            }
                                            if (SingletonCounter.getInstance().getmPostPay() < 100 && SingletonCounter.getInstance().getmDotoriUse() == 0) {
                                                ParserXML.this.mDotoriBtn.setBackgroundDrawable(ParserXML.this.mInactiveDotoriDrawables);
                                                ParserXML.this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                                ParserXML.this.mDotoriBtn.setClickable(false);
                                                ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                                return;
                                            }
                                            if (SingletonCounter.getInstance().getmPostPay() > 100000 && ParserXML.this.mItemPurchaseItemInfo.dotoriBalance > 100000) {
                                                CommonF.LOGGER.i(ParserXML.TAG, "도토리 사용액, 후불결제금액 10만원 초과");
                                                CommonF.LOGGER.i(ParserXML.TAG, "후불 결제 금액: " + SingletonCounter.getInstance().getmPostPay());
                                                ParserXML.this.onResultCallback.onShowMessageDialog();
                                            }
                                            ParserXML.this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                            ParserXML.this.mDotoriBtn.setTextSize(1, 13.0f);
                                            ParserXML.this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                            SingletonCounter.getInstance().setmDotoriBtnFlag(true);
                                            ParserXML.this.add_payments_amount("DOTORI");
                                        }
                                    });
                                } else {
                                    this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDrawables);
                                    this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                    this.mDotoriBtn.setClickable(false);
                                    this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                }
                            } else {
                                this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.USE));
                                this.mDotoriBtn.setTextSize(1, 13.0f);
                                if (this.mItemPurchaseItemInfo.dotoriBalance != 0) {
                                    this.mDotoriBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.30
                                        @Override // android.view.View.OnClickListener
                                        public void onClick(View v) {
                                            ParserXML.this.onResultCallback.onShowDotoriQueryBtnClick(true);
                                        }
                                    });
                                } else {
                                    this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
                                    this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                    this.mDotoriBtn.setClickable(false);
                                    this.mDotoriBtn.setPadding(0, 0, 0, 0);
                                }
                            }
                        } else {
                            this.mDotoriBtn.setText(CommonString.getString(CommonString.Index.DOTORI_INQUIRY));
                            this.mDotoriBtn.setTextSize(1, 13.0f);
                            this.mDotoriBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.31
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v) {
                                    ParserXML.this.onResultCallback.onShowDotoriQueryBtnClick(false);
                                }
                            });
                        }
                        if (SingletonCounter.getInstance().getmPostPay() == 0 && SingletonCounter.getInstance().getmDotoriUse() == 0) {
                            this.mDotoriBtn.setClickable(false);
                            this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mDotoriBtn.setPadding(0, 0, 0, 0);
                            this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        }
                    } else if (btnId.equals("CultureBtn")) {
                        this.mCultureBtn = this.mBtn;
                        this.mCultureBtn.setPadding(0, 0, 0, 0);
                        if (IAPLib.getCultureCashQueryInfo()) {
                            if (SingletonCounter.getInstance().ismCultureBtnFlag()) {
                                this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                            } else {
                                this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE));
                            }
                            this.mCultureBtn.setTextSize(1, 13.0f);
                            String strPoint2 = IAPLib.getCultureLandCashPoint();
                            if (strPoint2 == null || strPoint2.length() <= 0 || Integer.parseInt(strPoint2) < 10) {
                                this.mCultureBtn.setBackgroundDrawable(this.mInactiveDrawables);
                                this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                                this.mCultureBtn.setClickable(false);
                                this.mCultureBtn.setPadding(0, 0, 0, 0);
                            } else {
                                this.mCultureBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.32
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View v) {
                                        if (ParserXML.this.octDel != null && ParserXML.this.octChange != null) {
                                            ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                            ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                        }
                                        if (SingletonCounter.getInstance().ismCultureBtnFlag()) {
                                            ParserXML.this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE));
                                            ParserXML.this.mCultureBtn.setTextSize(1, 13.0f);
                                            ParserXML.this.mCultureBtn.setPadding(0, 0, 0, 0);
                                            SingletonCounter.getInstance().setmCultureBtnFlag(false);
                                            ParserXML.this.del_payments_amount("CULTURE");
                                            return;
                                        }
                                        ParserXML.this.mCultureBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                        ParserXML.this.mCultureBtn.setTextSize(1, 13.0f);
                                        ParserXML.this.mCultureBtn.setPadding(0, 0, 0, 0);
                                        SingletonCounter.getInstance().setmCultureBtnFlag(true);
                                        ParserXML.this.add_payments_amount("CULTURE");
                                    }
                                });
                            }
                        } else {
                            this.mCultureBtn.setText(CommonString.getString(CommonString.Index.CUTURE_INQUIRY));
                            this.mCultureBtn.setTextSize(1, 13.0f);
                            this.mCultureBtn.setPadding(0, 0, 0, 0);
                            this.mCultureBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.33
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v) {
                                    ParserXML.this.onResultCallback.onShowCultureLandDialog();
                                }
                            });
                        }
                        if (SingletonCounter.getInstance().getmPostPay() == 0 && SingletonCounter.getInstance().getmCultureUse() == 0) {
                            this.mCultureBtn.setClickable(false);
                            this.mCultureBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mCultureBtn.setPadding(0, 0, 0, 0);
                            this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        }
                    } else if (btnId.equals("TcashBtn")) {
                        this.mTcashBtn = this.mBtn;
                        this.mTcashBtn.setPadding(0, 0, 0, 0);
                        if (SingletonCounter.getInstance().ismTCashUseFlag()) {
                            this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                        } else {
                            this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE));
                        }
                        this.mTcashBtn.setTextSize(1, 13.0f);
                        if (this.mItemPurchaseItemInfo.itemTCash >= 10) {
                            this.mTcashBtn.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.34
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v) {
                                    if (ParserXML.this.octDel != null && ParserXML.this.octChange != null) {
                                        ParserXML.this.octDel.setBackgroundDrawable(ParserXML.this.octChange.getBackground());
                                        ParserXML.this.octDel.setPadding(0, 0, 0, 0);
                                    }
                                    if (SingletonCounter.getInstance().ismTCashUseFlag()) {
                                        ParserXML.this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE));
                                        ParserXML.this.mTcashBtn.setTextSize(1, 13.0f);
                                        ParserXML.this.mTcashBtn.setPadding(0, 0, 0, 0);
                                        SingletonCounter.getInstance().setmTCashUseFlag(false);
                                        ParserXML.this.del_payments_amount("TCASH");
                                        return;
                                    }
                                    ParserXML.this.mTcashBtn.setText(CommonString.getString(CommonString.Index.USE_CANCEL));
                                    ParserXML.this.mTcashBtn.setTextSize(1, 13.0f);
                                    ParserXML.this.mTcashBtn.setPadding(0, 0, 0, 0);
                                    SingletonCounter.getInstance().setmTCashUseFlag(true);
                                    ParserXML.this.add_payments_amount("TCASH");
                                }
                            });
                        } else {
                            this.mTcashBtn.setClickable(false);
                            this.mTcashBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mTcashBtn.setPadding(0, 0, 0, 0);
                            this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        }
                        if (SingletonCounter.getInstance().getmPostPay() == 0 && SingletonCounter.getInstance().getmTCashUse() == 0) {
                            this.mTcashBtn.setClickable(false);
                            this.mTcashBtn.setBackgroundDrawable(this.mInactiveDrawables);
                            this.mTcashBtn.setPadding(0, 0, 0, 0);
                            this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        }
                    } else if (btnId.equals("OCBRegister")) {
                        Button octRegist = this.mBtn;
                        octRegist.setText(CommonString.getString(CommonString.Index.OCB_REGIST));
                        octRegist.setTextSize(1, 13.0f);
                        octRegist.setPadding(0, 0, 0, 0);
                        octRegist.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.35
                            @Override // android.view.View.OnClickListener
                            public void onClick(View v) {
                                ParserXML.this.onResultCallback.onShowOCBRegPopup("C");
                            }
                        });
                    } else if (btnId.equals("OCB_Card_Change")) {
                        this.octChange = this.mBtn;
                        this.octChange.setText(CommonString.getString(CommonString.Index.OCB_CHANGE_CARD));
                        this.octChange.setTextSize(1, 13.0f);
                        this.octChange.setPadding(0, 0, 0, 0);
                        this.octChange.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.36
                            @Override // android.view.View.OnClickListener
                            public void onClick(View v) {
                                ParserXML.this.onResultCallback.onShowOCBRegPopup("U");
                            }
                        });
                    } else if (btnId.equals("OCB_Card_Del")) {
                        this.octDel = this.mBtn;
                        this.octDel.setText(CommonString.getString(CommonString.Index.OCB_DELETE_CARD));
                        this.octDel.setTextSize(1, 13.0f);
                        this.octDel.setPadding(0, 0, 0, 0);
                        this.octDel.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.37
                            @Override // android.view.View.OnClickListener
                            public void onClick(View v) {
                                ParserXML.this.onResultCallback.onShowOCBRegPopup(Objects.Animation.TYPE_DELAY);
                            }
                        });
                    }
                }
                if (onimage.equals("btn_buy_sel_h") && !IAPLib.getLimitExcess()) {
                    this.mBtn.setOnClickListener(this.okBtn);
                } else if (onimage.equals("pop_btn_sel_ok")) {
                    this.mBtn.setOnClickListener(this.okMessageBtn);
                } else if (onimage.equals("btn_info01_sel")) {
                    this.mBtn.setOnClickListener(this.moreInfo);
                } else if (onimage.equals("btn_locking_sel")) {
                    PackageManager pm2 = this.context.getPackageManager();
                    List<ApplicationInfo> appList2 = pm2.getInstalledApplications(0);
                    int nSize2 = appList2.size();
                    for (int i2 = 0; i2 < nSize2; i2++) {
                        ApplicationInfo app2 = appList2.get(i2);
                        if (app2.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                            this.tStoreFlag = true;
                        }
                    }
                    this.mBtn.setOnClickListener(this.tStoreInfoBtn);
                } else if (onimage.equals("btn_cancel_sel_h")) {
                    this.mBtn.setOnClickListener(this.cancelBtn);
                }
            } else if (this.mItemPurchaseItemInfo != null) {
                if (!this.mItemPurchaseItemInfo.AutoPurchaseCheck) {
                    CheckBox checkbtn = (CheckBox) result;
                    boolean xperia = false;
                    if (modelName.endsWith("LT15i")) {
                        xperia = true;
                        this.xperiacheckbox = true;
                    }
                    if (!xperia) {
                        InputStream onStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
                        Drawable btOn = Drawable.createFromStream(onStream, onimage);
                        try {
                            onStream.close();
                        } catch (IOException e9) {
                        }
                        InputStream onStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_check_ok_nor.png");
                        Drawable btCheck = Drawable.createFromStream(onStream2, "btn_check_ok_nor");
                        try {
                            onStream2.close();
                        } catch (IOException e10) {
                        }
                        InputStream onStream3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_check_no_sel.png");
                        Drawable btOver = Drawable.createFromStream(onStream3, "btn_check_no_sel");
                        try {
                            onStream3.close();
                        } catch (IOException e11) {
                        }
                        InputStream onStream4 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_check_ok_sel.png");
                        Drawable btCheckP = Drawable.createFromStream(onStream4, "btn_check_ok_sel");
                        try {
                            onStream4.close();
                        } catch (IOException e12) {
                        }
                        InputStream onStream5 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_check_dim.png");
                        Drawable btDis = Drawable.createFromStream(onStream5, "btn_check_dim");
                        try {
                            onStream5.close();
                        } catch (IOException e13) {
                        }
                        StateListDrawable drawables = new StateListDrawable();
                        StateListDrawable drawables2 = new StateListDrawable();
                        drawables.addState(new int[]{-16842910, -16842908}, btDis);
                        drawables.addState(new int[]{-16842912, R.attr.state_pressed}, btOver);
                        drawables.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, btCheckP);
                        drawables.addState(new int[]{-16842912, -16842908}, btOn);
                        drawables.addState(new int[]{R.attr.state_checked, -16842908}, btCheck);
                        drawables2.addState(new int[]{-16842910, -16842908}, null);
                        drawables2.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                        drawables2.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                        drawables2.addState(new int[]{-16842912, -16842908}, null);
                        drawables2.addState(new int[]{R.attr.state_checked, -16842908}, null);
                        checkbtn.setButtonDrawable(drawables2);
                        checkbtn.setBackgroundDrawable(drawables);
                    }
                    checkbtn.setChecked(false);
                    if (this.mItemPurchaseItemInfo.itemTCash != 0 && this.mItemPurchaseItemInfo.itemTCash - this.mItemPurchaseItemInfo.itemPrice >= 0) {
                        checkbtn.setEnabled(true);
                    } else {
                        checkbtn.setEnabled(false);
                    }
                    checkbtn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.38
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                            ParserXML.this.UseTCash(Boolean.valueOf(isChecked));
                            ParserXML.this.onResultCallback.onUseTCashCheckChanged(isChecked);
                            if (isChecked && IAPLib.getLimitExcess()) {
                                ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                                ParserXML.this.mFlag = false;
                                ParserXML.this.mOkBtn.setOnClickListener(ParserXML.this.okBtn);
                            } else if (!isChecked && IAPLib.getLimitExcess()) {
                                ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mLiminExcessDrawables);
                                ParserXML.this.mFlag = true;
                                ParserXML.this.mOkBtn.setOnClickListener(null);
                            }
                        }
                    });
                } else if (this.mItemPurchaseItemInfo.AutoPurchaseCheck && (result instanceof CheckBox)) {
                    String Checkonimage = null;
                    Object id2 = findAttribute(atts, "a:checkid");
                    CheckBox checkbtn2 = (CheckBox) result;
                    checkbtn2.setTag(id2);
                    String checkImage = null;
                    if (this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        Checkonimage = "checkbox_y";
                        checkImage = "checkbox_n";
                        this.mPurchaseCheckList[0] = true;
                    } else if (!this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        Checkonimage = "checkbox_n";
                        checkImage = "checkbox_y";
                        this.mPurchaseCheckList[0] = false;
                    }
                    checkbtn2.setChecked(false);
                    boolean xperia2 = false;
                    if (modelName.endsWith("LT15i")) {
                        xperia2 = true;
                        this.xperiacheckbox = true;
                    }
                    if (!xperia2) {
                        InputStream onStream6 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + Checkonimage + ".png");
                        Drawable btOn2 = Drawable.createFromStream(onStream6, Checkonimage);
                        try {
                            onStream6.close();
                        } catch (IOException e14) {
                        }
                        InputStream onStream7 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + checkImage + ".png");
                        Drawable btCheck2 = Drawable.createFromStream(onStream7, checkImage);
                        try {
                            onStream7.close();
                        } catch (IOException e15) {
                        }
                        StateListDrawable drawables3 = new StateListDrawable();
                        StateListDrawable drawables22 = new StateListDrawable();
                        drawables3.addState(new int[]{-16842912, -16842908}, btOn2);
                        drawables3.addState(new int[]{R.attr.state_checked, -16842908}, btCheck2);
                        drawables22.addState(new int[]{-16842910, -16842908}, null);
                        drawables22.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                        drawables22.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                        drawables22.addState(new int[]{-16842912, -16842908}, null);
                        drawables22.addState(new int[]{R.attr.state_checked, -16842908}, null);
                        checkbtn2.setButtonDrawable(drawables22);
                        checkbtn2.setBackgroundDrawable(drawables3);
                    } else if (xperia2 && this.mItemPurchaseItemInfo.AfterAutoPurchaseInfoAgree) {
                        checkbtn2.setChecked(true);
                    }
                    checkbtn2.setOnCheckedChangeListener(this.changeCheckBox);
                }
            } else {
                CheckBox checkbtn3 = (CheckBox) result;
                String id3 = findAttribute(atts, "a:checkid");
                checkbtn3.setTag(id3);
                boolean xperia3 = false;
                if (modelName.endsWith("LT15i")) {
                    xperia3 = true;
                    this.xperiacheckbox = true;
                }
                if (!xperia3) {
                    InputStream onStream8 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
                    Drawable btOn3 = Drawable.createFromStream(onStream8, onimage);
                    try {
                        onStream8.close();
                    } catch (IOException e16) {
                    }
                    InputStream onStream9 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "checkbox_y.png");
                    Drawable btCheck3 = Drawable.createFromStream(onStream9, "checkbox_y");
                    try {
                        onStream9.close();
                    } catch (IOException e17) {
                    }
                    StateListDrawable drawables4 = new StateListDrawable();
                    StateListDrawable drawables23 = new StateListDrawable();
                    drawables4.addState(new int[]{-16842912, -16842908}, btOn3);
                    drawables4.addState(new int[]{R.attr.state_checked, -16842908}, btCheck3);
                    drawables23.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                    drawables23.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                    drawables23.addState(new int[]{-16842912, -16842908}, null);
                    drawables23.addState(new int[]{R.attr.state_checked, -16842908}, null);
                    checkbtn3.setButtonDrawable(drawables23);
                    checkbtn3.setBackgroundDrawable(drawables4);
                }
                checkbtn3.setOnCheckedChangeListener(this.changeCheckBox);
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View inflateAuthPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewAuthPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateYesNoPopup(XmlPullParser parse, String message) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewYesNoPopup(parse, message);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateImagePopup(XmlPullParser parse, String message) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewImagePopup(parse, message);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateAutoPurchaseFormPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewAutoPurchaseFormPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflatIMEIAuthPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewIMEIPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateJoinPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewJoinPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateOtpPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewOtpPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View inflateLguSmsAuthPopup(XmlPullParser parse) throws XmlPullParserException, IOException {
        this.layoutStack.clear();
        this.ids.clear();
        Stack<StringBuffer> data = new Stack<>();
        int evt = parse.getEventType();
        View root = null;
        while (evt != 1) {
            switch (evt) {
                case 0:
                    data.clear();
                    evt = parse.next();
                    break;
                case 1:
                default:
                    evt = parse.next();
                    break;
                case 2:
                    data.push(new StringBuffer());
                    View v = createViewLguSmsAuthPopup(parse);
                    if (v != null) {
                        if (root == null) {
                            root = v;
                        } else {
                            this.layoutStack.peek().addView(v);
                        }
                        if (v instanceof ViewGroup) {
                            this.layoutStack.push((ViewGroup) v);
                        }
                        evt = parse.next();
                    }
                    break;
                case 3:
                    data.pop();
                    if (isLayout(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    if (isScrollView(parse.getName())) {
                        this.layoutStack.pop();
                    }
                    evt = parse.next();
                    break;
                case 4:
                    data.peek().append(parse.getText());
                    evt = parse.next();
                    break;
            }
        }
        return root;
    }

    private View createViewAuthPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("EditText")) {
            result = new EditText(this.context);
            ((EditText) result).setImeOptions(268435456);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.context);
        } else if (name.equals("RadioGroup")) {
            result = new RadioGroup(this.context);
        } else if (name.equals("RadioButton")) {
            result = new RadioButton(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof RadioGroup) {
            RadioGroup radioGroup = (RadioGroup) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    radioGroup.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    radioGroup.setOrientation(1);
                }
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    radioGroup.setGravity(17);
                } else {
                    radioGroup.setGravity(5);
                }
            }
        } else if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String llID = findAttribute(atts, "a:id");
            if (llID != null && llID.equals("jiminNumberLlView")) {
                mJumiLlView = ll;
                mJumiLlView.setVisibility(8);
            }
            String orient2 = findAttribute(atts, "a:orientation");
            if (orient2 != null) {
                if (orient2.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient2.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity2 = findAttribute(atts, "a:gravity");
            if (gravity2 != null) {
                if (gravity2.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String textID = findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textID != null && textID.equals("Version")) {
                tv.setText(Defines.IAP_LIBRARY_VERSION);
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof CheckBox) {
            String oncheckimage = findAttribute(atts, "a:onImage");
            String id = findAttribute(atts, "a:checkid");
            CheckBox checkbtn = (CheckBox) result;
            checkbtn.setTag(id);
            String modelName = Build.MODEL;
            boolean xperia = false;
            StateListDrawable drawables = new StateListDrawable();
            StateListDrawable drawables2 = new StateListDrawable();
            if (modelName.endsWith("LT15i")) {
                xperia = true;
                this.xperiacheckbox = true;
            }
            if (!xperia) {
                InputStream onStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + oncheckimage + ".png");
                Drawable btOn = Drawable.createFromStream(onStream, oncheckimage);
                try {
                    onStream.close();
                } catch (IOException e2) {
                }
                InputStream onStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "checkbox_y.png");
                Drawable btCheck = Drawable.createFromStream(onStream2, "checkbox_y");
                try {
                    onStream2.close();
                } catch (IOException e3) {
                }
                drawables.addState(new int[]{-16842912, -16842908}, btOn);
                drawables.addState(new int[]{R.attr.state_checked, -16842908}, btCheck);
                drawables2.addState(new int[]{-16842910, -16842908}, null);
                drawables2.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{-16842912, -16842908}, null);
                drawables2.addState(new int[]{R.attr.state_checked, -16842908}, null);
                checkbtn.setButtonDrawable(drawables2);
                checkbtn.setBackgroundDrawable(drawables);
            }
            checkbtn.setChecked(false);
            checkbtn.setOnCheckedChangeListener(this.changeCheckBox);
            if (id.equals("culture_login_checkbox") && mCultureLoginFlag) {
                checkbtn.setChecked(true);
                checkbtn.setBackgroundDrawable(drawables);
            }
        } else if (result instanceof RadioButton) {
            RadioButton radioButton = (RadioButton) result;
            String strID = findAttribute(atts, "a:id");
            String oncheckimage2 = findAttribute(atts, "a:onImage");
            String checkImage = findAttribute(atts, "a:checkImage");
            if (strID != null && strID.indexOf("foreignInputRadio") != -1) {
                if (strID.equalsIgnoreCase("foreignInputRadio1")) {
                    this.onForeignInputMDNClickLisener.setRadioButton1(radioButton);
                } else if (strID.equalsIgnoreCase("foreignInputRadio2")) {
                    this.onForeignInputMDNClickLisener.setRadioButton2(radioButton);
                } else if (strID.equalsIgnoreCase("foreignInputRadio3")) {
                    this.onForeignInputMDNClickLisener.setRadioButton3(radioButton);
                }
                radioButton.setTag(strID);
                radioButton.setOnClickListener(this.onForeignInputMDNClickLisener);
            }
            if (oncheckimage2 != null && checkImage != null) {
                StateListDrawable drawables3 = new StateListDrawable();
                StateListDrawable drawables22 = new StateListDrawable();
                InputStream onStream3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + oncheckimage2 + ".png");
                Drawable btOn2 = Drawable.createFromStream(onStream3, oncheckimage2);
                try {
                    onStream3.close();
                } catch (IOException e4) {
                }
                InputStream onStream4 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + checkImage + ".png");
                Drawable btCheck2 = Drawable.createFromStream(onStream4, checkImage);
                try {
                    onStream4.close();
                } catch (IOException e5) {
                }
                drawables3.addState(new int[]{-16842912, -16842908}, btOn2);
                drawables3.addState(new int[]{R.attr.state_checked, -16842908}, btCheck2);
                drawables22.addState(new int[]{-16842910, -16842908}, null);
                drawables22.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                drawables22.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                drawables22.addState(new int[]{-16842912, -16842908}, null);
                drawables22.addState(new int[]{R.attr.state_checked, -16842908}, null);
                radioButton.setButtonDrawable(drawables22);
                radioButton.setBackgroundDrawable(drawables3);
            }
        } else if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            String btnId = findAttribute(atts, "a:id");
            Button btn = (Button) result;
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn3 = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e6) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "bt_confirm_dim.png");
            Drawable dotoriInactiveOn = Drawable.createFromStream(isStream2, "bt_confirm_dim");
            try {
                isStream2.close();
            } catch (IOException e7) {
            }
            InputStream isStream3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream3, onimage);
            try {
                isStream3.close();
            } catch (IOException e8) {
            }
            StateListDrawable drawables4 = new StateListDrawable();
            this.dotoriInactive = new StateListDrawable();
            this.mInactiveOCBRegDrawables = new StateListDrawable();
            this.mActiveOCBRegDrawables = new StateListDrawable();
            drawables4.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables4.addState(new int[0], btOn3);
            this.dotoriInactive.addState(new int[]{R.attr.state_pressed}, dotoriInactiveOn);
            this.dotoriInactive.addState(new int[0], dotoriInactiveOn);
            if (btnId != null && (btnId.equals("dotoriSmsOkBtn") || btnId.equals("foreignBtn") || btnId.equals("cultureButton") || btnId.equals("cashbackOKButton"))) {
                this.mOkDrawbles = drawables4;
            }
            btn.setBackgroundDrawable(drawables4);
            String padding2 = findAttribute(atts, "a:padding");
            if (padding2 != null) {
                int size2 = readDPSize(padding2);
                btn.setPadding(size2, size2, size2, size2);
            }
            if (onimage.equals("btn_con_sel")) {
                btn.setOnClickListener(this.okAuthBtn);
            } else if (onimage.equals("bt_01_sel.9")) {
                btn.setOnClickListener(this.commonBtn);
            } else {
                btn.setOnClickListener(this.cancelAuthBtn);
            }
            if (btnId != null) {
                this.mActiveOCBRegDrawables = drawables4;
                this.mInactiveOCBRegDrawables.addState(new int[]{R.attr.state_pressed}, btOn3);
                this.mInactiveOCBRegDrawables.addState(new int[0], btOn3);
                if (btnId.equals("OCBReg")) {
                    this.mOCBRegBtn = btn;
                    this.mOCBRegBtn.setBackgroundDrawable(this.mInactiveOCBRegDrawables);
                    this.mOCBRegBtn.setClickable(false);
                    this.mOCBRegBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mOCBRegBtn.setPadding(0, 0, 0, 0);
                } else if (btnId.equals("getDotoriAuthNumBtn")) {
                    btn.setPadding(0, 0, 0, 0);
                } else if (btnId.equals("cultureButton")) {
                    this.mCultureOKButton = btn;
                    this.mCultureOKButton.setBackgroundDrawable(this.dotoriInactive);
                    this.mCultureOKButton.setClickable(false);
                } else if (btnId.equals("cashbackOKButton")) {
                    this.mOKCashbackOKButton = btn;
                    this.mOKCashbackOKButton.setBackgroundDrawable(this.dotoriInactive);
                    this.mOKCashbackOKButton.setClickable(false);
                }
                if (this.mOCBRegBtn != null) {
                    this.mOCBRegBtn.setClickable(false);
                }
                if (btnId.equals("dotoriSmsOkBtn") || btnId.equals("foreignBtn")) {
                    this.mOkBtn = btn;
                    this.mOkBtn.setBackgroundDrawable(this.dotoriInactive);
                    this.mOkBtn.setClickable(false);
                }
            }
        }
        if (result instanceof EditText) {
            EditText editText = (EditText) result;
            editText.setText(GameView.CHARACTER_AI);
            if (this.onAuthResultCallback != null || this.onForeignInputMDNResultCallback != null) {
                editText.setInputType(2);
            }
            ArrayList<InputFilter> inputFilterArray = new ArrayList<>();
            String inputType = findAttribute(atts, "a:inputType");
            if (inputType != null) {
                if (inputType.equals("AlphaNum")) {
                    editText.setInputType(17);
                    inputFilterArray.add(new filterAlphaNum());
                } else {
                    editText.setInputType(Integer.parseInt(inputType));
                }
            }
            String maxLength = findAttribute(atts, "a:maxLength");
            if (maxLength != null) {
                editText.setSingleLine();
                inputFilterArray.add(new InputFilter.LengthFilter(Integer.parseInt(maxLength)));
            }
            if (inputFilterArray.size() > 0) {
                InputFilter[] filterArray = new InputFilter[0];
                editText.setFilters((InputFilter[]) inputFilterArray.toArray(filterArray));
            }
            String passwordText = findAttribute(atts, "a:password");
            if (passwordText != null) {
                PasswordTransformationMethod passwdtm = new PasswordTransformationMethod();
                editText.setTransformationMethod(passwdtm);
            }
            String keyboardMode = findAttribute(atts, "a:keyboardMode");
            if (keyboardMode != null && keyboardMode.equals("english")) {
                editText.setPrivateImeOptions("defaultInputmode=english");
            }
            String id2 = findAttribute(atts, "a:id");
            if (id2 != null) {
                if (id2.equals("JuminText1")) {
                    this.m_JuminText1 = editText;
                    if (this.onForeignInputMDNResultCallback != null) {
                        this.m_JuminText1.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
                    }
                } else if (id2.equals("JuminText2")) {
                    this.m_JuminText2 = editText;
                    if (this.onForeignInputMDNResultCallback != null) {
                        this.m_JuminText2.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
                    }
                } else if (id2.equals("OCBRegText1")) {
                    this.m_OCBRegText1 = editText;
                    this.m_OCBRegText1.addTextChangedListener(new NextFocusTextWatcher(this, editText, null));
                } else if (id2.equals("OCBRegText2")) {
                    this.m_OCBRegText2 = editText;
                    this.m_OCBRegText2.addTextChangedListener(new NextFocusTextWatcher(this, editText, null));
                } else if (id2.equals("OCBRegText3")) {
                    this.m_OCBRegText3 = editText;
                    this.m_OCBRegText3.addTextChangedListener(new NextFocusTextWatcher(this, editText, null));
                } else if (id2.equals("OCBRegText4")) {
                    this.m_OCBRegText4 = editText;
                } else if (id2.equals("OCBPWText")) {
                    this.m_OCBPWText = editText;
                    this.m_OCBPWText.addTextChangedListener(new OKCashbackTextWatcher(this, null));
                } else if (id2.equals("cultureID")) {
                    this.m_CultureLandID = editText;
                    if (mCultureLoginFlag) {
                        this.m_CultureLandID.setText(mCultureLandID);
                    }
                    this.m_CultureLandID.addTextChangedListener(this.mCultureLandTextWatcher);
                } else if (id2.equals("culturePW")) {
                    this.m_CultureLandPW = editText;
                    this.m_CultureLandPW.addTextChangedListener(this.mCultureLandTextWatcher);
                } else if (id2.equals("dotoriSmsAuthText")) {
                    this.m_DotoriSMSAuthNum = editText;
                } else if (id2.equals("MDN1")) {
                    this.m_MDN1 = editText;
                    this.m_MDN1.addTextChangedListener(new NextFocusTextWatcher(this, editText, null));
                    this.m_MDN1.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
                } else if (id2.equals("MDN2")) {
                    this.m_MDN2 = editText;
                    this.m_MDN2.addTextChangedListener(new NextFocusTextWatcher(this, editText, null));
                    this.m_MDN2.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
                } else if (id2.equals("MDN3")) {
                    this.m_MDN3 = editText;
                    this.m_MDN3.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
                }
            }
            String backGround = findAttribute(atts, "a:background");
            if (backGround != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + backGround + ".png");
                editText.setBackgroundDrawable(Drawable.createFromStream(is2, backGround));
                try {
                    is2.close();
                } catch (IOException e9) {
                }
            }
            if (findAttribute(atts, "a:ocbTextColor") != null) {
                editText.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, new int[0]}, new int[]{Color.parseColor("#5A5A5A"), Color.parseColor("#CCCCCC")}));
            }
            if (this.m_DotoriSMSAuthNum != null) {
                this.m_DotoriSMSAuthNum.addTextChangedListener(new TextWatcher() { // from class: com.feelingk.iap.gui.parser.ParserXML.39
                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence s, int start, int before, int count) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable s) {
                        if (s.length() > 0 && ParserXML.sendDotoriSmsFlag) {
                            ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                            ParserXML.this.mOkBtn.setClickable(true);
                        } else {
                            ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                            ParserXML.this.mOkBtn.setClickable(false);
                        }
                    }
                });
            }
            if (this.m_MDN3 != null) {
                this.m_MDN3.addTextChangedListener(this.mForeignDevelopeTextLengthWatcher);
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private class OKCashbackTextWatcher implements TextWatcher {
        private OKCashbackTextWatcher() {
        }

        /* synthetic */ OKCashbackTextWatcher(ParserXML parserXML, OKCashbackTextWatcher oKCashbackTextWatcher) {
            this();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (ParserXML.this.m_OCBPWText.getText().length() >= 6) {
                ParserXML.this.mOKCashbackOKButton.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                ParserXML.this.mOKCashbackOKButton.setClickable(true);
            } else {
                ParserXML.this.mOKCashbackOKButton.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                ParserXML.this.mOKCashbackOKButton.setClickable(false);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    private class CultureLandTextWatcher implements TextWatcher {
        private CultureLandTextWatcher() {
        }

        /* synthetic */ CultureLandTextWatcher(ParserXML parserXML, CultureLandTextWatcher cultureLandTextWatcher) {
            this();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (ParserXML.this.m_CultureLandID.getText().length() > 0 && ParserXML.this.m_CultureLandPW.getText().length() > 0) {
                ParserXML.this.mCultureOKButton.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                ParserXML.this.mCultureOKButton.setClickable(true);
            } else {
                ParserXML.this.mCultureOKButton.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                ParserXML.this.mCultureOKButton.setClickable(false);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    private class ForeignDevelopeTextLengthWatcher implements TextWatcher {
        private ForeignDevelopeTextLengthWatcher() {
        }

        /* synthetic */ ForeignDevelopeTextLengthWatcher(ParserXML parserXML, ForeignDevelopeTextLengthWatcher foreignDevelopeTextLengthWatcher) {
            this();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() == 1) {
                if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10) {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                    ParserXML.this.mOkBtn.setClickable(true);
                    return;
                } else {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                    ParserXML.this.mOkBtn.setClickable(false);
                    return;
                }
            }
            if (ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() == 2 || ParserXML.this.onForeignInputMDNClickLisener.getCurrentSelected() == 3) {
                if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10 && ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() == 13) {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                    ParserXML.this.mOkBtn.setClickable(true);
                } else {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                    ParserXML.this.mOkBtn.setClickable(false);
                }
            }
        }
    }

    private class NextFocusTextWatcher implements TextWatcher {
        private EditText mEditText;
        private int strNum;

        /* synthetic */ NextFocusTextWatcher(ParserXML parserXML, EditText editText, NextFocusTextWatcher nextFocusTextWatcher) {
            this(editText);
        }

        private NextFocusTextWatcher(EditText editText) {
            this.mEditText = editText;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (ParserXML.this.mOCBRegBtn != null) {
                ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
                if (s.length() >= 4) {
                    if (this.mEditText == ParserXML.this.m_OCBRegText1) {
                        ParserXML.this.m_OCBRegText2.requestFocus();
                        ParserXML.this.strNumOCBRegText1 = s.length();
                    } else if (this.mEditText == ParserXML.this.m_OCBRegText2) {
                        ParserXML.this.m_OCBRegText3.requestFocus();
                        ParserXML.this.strNumOCBRegText2 = s.length();
                    } else if (this.mEditText == ParserXML.this.m_OCBRegText3) {
                        ParserXML.this.m_OCBRegText4.requestFocus();
                        ParserXML.this.strNumOCBRegText3 = s.length();
                    }
                } else if (this.mEditText != ParserXML.this.m_OCBRegText1) {
                    if (this.mEditText != ParserXML.this.m_OCBRegText2) {
                        if (this.mEditText == ParserXML.this.m_OCBRegText3) {
                            ParserXML.this.strNumOCBRegText3 = s.length();
                        }
                    } else {
                        ParserXML.this.strNumOCBRegText2 = s.length();
                    }
                } else {
                    ParserXML.this.strNumOCBRegText1 = s.length();
                }
                this.strNum = ParserXML.this.strNumOCBRegText1 + ParserXML.this.strNumOCBRegText2 + ParserXML.this.strNumOCBRegText3;
                if (this.strNum >= 12) {
                    ParserXML.this.mOCBRegBtn.setBackgroundDrawable(ParserXML.this.mActiveOCBRegDrawables);
                    ParserXML.this.mOCBRegBtn.setClickable(true);
                    ParserXML.this.mOCBRegBtn.setTextColor(Color.parseColor("#DDDDDD"));
                    ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
                } else {
                    ParserXML.this.mOCBRegBtn.setBackgroundDrawable(ParserXML.this.mInactiveOCBRegDrawables);
                    ParserXML.this.mOCBRegBtn.setClickable(false);
                    ParserXML.this.mOCBRegBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    ParserXML.this.mOCBRegBtn.setPadding(0, 0, 0, 0);
                }
            }
            if (ParserXML.this.onForeignInputMDNResultCallback != null) {
                if (this.mEditText != ParserXML.this.m_MDN1 || s.length() < 3) {
                    if (this.mEditText == ParserXML.this.m_MDN2 && s.length() >= 4) {
                        ParserXML.this.m_MDN3.requestFocus();
                        return;
                    }
                    return;
                }
                ParserXML.this.m_MDN2.requestFocus();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    private View createViewYesNoPopup(XmlPullParser parse, String message) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String textID = findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textID != null) {
                tv.setText(message);
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            Button btn = (Button) result;
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e2) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream2, onimage);
            try {
                isStream2.close();
            } catch (IOException e3) {
            }
            StateListDrawable drawables = new StateListDrawable();
            drawables.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables.addState(new int[0], btOn);
            btn.setBackgroundDrawable(drawables);
            if (onimage.equals("btn_con_sel")) {
                btn.setOnClickListener(this.okYesNoBtn);
            } else {
                btn.setOnClickListener(this.cancelYesNoBtn);
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewImagePopup(XmlPullParser parse, String message) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is2, image2));
                try {
                    is2.close();
                } catch (IOException e2) {
                }
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String textID = findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textID != null) {
                tv.setText(message);
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            Button btn = (Button) result;
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e3) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream2, onimage);
            try {
                isStream2.close();
            } catch (IOException e4) {
            }
            StateListDrawable drawables = new StateListDrawable();
            drawables.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables.addState(new int[0], btOn);
            btn.setBackgroundDrawable(drawables);
            if (onimage.equals("btn_con_sel")) {
                btn.setOnClickListener(this.imageBtn);
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewAutoPurchaseFormPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else if (gravity.equals("right")) {
                    ll.setGravity(5);
                } else if (gravity.equals("left")) {
                    ll.setGravity(3);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String paddingLeft = findAttribute(atts, "a:paddingleft");
            String paddingTop = findAttribute(atts, "a:paddingTop");
            String paddingRight = findAttribute(atts, "a:paddingRight");
            String paddingBottom = findAttribute(atts, "a:paddingBottom");
            int sizeLeft = 0;
            if (paddingLeft != null) {
                sizeLeft = readDPSize(paddingLeft);
            }
            int sizeTop = paddingTop != null ? readDPSize(paddingTop) : 0;
            int sizeRight = paddingRight != null ? readDPSize(paddingRight) : 0;
            int sizeBottom = paddingBottom != null ? readDPSize(paddingBottom) : 0;
            ll.setPadding(sizeLeft, sizeTop, sizeRight, sizeBottom);
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is2, image2));
                try {
                    is2.close();
                } catch (IOException e2) {
                }
            }
        }
        if (result instanceof CheckBox) {
            String oncheckimage = findAttribute(atts, "a:onImage");
            Object id = findAttribute(atts, "a:checkid");
            CheckBox checkbtn = (CheckBox) result;
            checkbtn.setTag(id);
            String modelName = Build.MODEL;
            boolean xperia = false;
            if (modelName.endsWith("LT15i")) {
                xperia = true;
                this.xperiacheckbox = true;
            }
            if (!xperia) {
                InputStream onStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + oncheckimage + ".png");
                Drawable btOn = Drawable.createFromStream(onStream, oncheckimage);
                try {
                    onStream.close();
                } catch (IOException e3) {
                }
                InputStream onStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "checkbox_y.png");
                Drawable btCheck = Drawable.createFromStream(onStream2, "checkbox_y");
                try {
                    onStream2.close();
                } catch (IOException e4) {
                }
                StateListDrawable drawables = new StateListDrawable();
                StateListDrawable drawables2 = new StateListDrawable();
                drawables.addState(new int[]{-16842912, -16842908}, btOn);
                drawables.addState(new int[]{R.attr.state_checked, -16842908}, btCheck);
                drawables2.addState(new int[]{-16842910, -16842908}, null);
                drawables2.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{-16842912, -16842908}, null);
                drawables2.addState(new int[]{R.attr.state_checked, -16842908}, null);
                checkbtn.setButtonDrawable(drawables2);
                checkbtn.setBackgroundDrawable(drawables);
            }
            checkbtn.setChecked(false);
            checkbtn.setOnCheckedChangeListener(this.changeCheckBox);
        } else if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            Button btn = (Button) result;
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn2 = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e5) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream2, onimage);
            try {
                isStream2.close();
            } catch (IOException e6) {
            }
            StateListDrawable drawables3 = new StateListDrawable();
            drawables3.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables3.addState(new int[0], btOn2);
            btn.setBackgroundDrawable(drawables3);
            if (onimage.equals("btn_con_sel")) {
                btn.setOnClickListener(this.autoPurchaseFormBtn);
            } else if (onimage.equals("btn_buycancel_sel")) {
                btn.setOnClickListener(this.cancelAutoPurchaseFormBtn);
            }
        } else if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String nortext = findAttribute(atts, "a:nortext");
            String nametext = findAttribute(atts, "a:nametext");
            String centertext = findAttribute(atts, "a:centertext");
            String agreetext = findAttribute(atts, "a:agreetext");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            findAttribute(atts, "a:id");
            if (nortext != null) {
                tv.setText(nortext);
            }
            if (nametext != null) {
                tv.setText(CommonString.getString(CommonString.Index.MENT_MONT_AUTO_PAYMENTS));
            }
            if (centertext != null) {
                centertext.replace("\\n", "\n");
                tv.setText(CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            }
            if (agreetext != null) {
                tv.setText(agreetext);
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textGravity != null) {
                if (textGravity.equals("center")) {
                    tv.setGravity(17);
                } else if (textGravity.equals("right")) {
                    tv.setGravity(5);
                } else if (textGravity.equals("left")) {
                    tv.setGravity(3);
                } else {
                    tv.setGravity(19);
                }
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewIMEIPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else if (gravity.equals("right")) {
                    ll.setGravity(5);
                } else if (gravity.equals("left")) {
                    ll.setGravity(3);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String paddingLeft = findAttribute(atts, "a:paddingleft");
            String paddingTop = findAttribute(atts, "a:paddingTop");
            String paddingRight = findAttribute(atts, "a:paddingRight");
            String paddingBottom = findAttribute(atts, "a:paddingBottom");
            int sizeLeft = 0;
            if (paddingLeft != null) {
                sizeLeft = readDPSize(paddingLeft);
            }
            int sizeTop = paddingTop != null ? readDPSize(paddingTop) : 0;
            int sizeRight = paddingRight != null ? readDPSize(paddingRight) : 0;
            int sizeBottom = paddingBottom != null ? readDPSize(paddingBottom) : 0;
            ll.setPadding(sizeLeft, sizeTop, sizeRight, sizeBottom);
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is2, image2));
                try {
                    is2.close();
                } catch (IOException e2) {
                }
            }
        }
        if (result instanceof CheckBox) {
            String oncheckimage = findAttribute(atts, "a:onImage");
            Object id = findAttribute(atts, "a:checkid");
            CheckBox checkbtn = (CheckBox) result;
            checkbtn.setTag(id);
            String modelName = Build.MODEL;
            boolean xperia = false;
            if (modelName.endsWith("LT15i")) {
                xperia = true;
                this.xperiacheckbox = true;
            }
            if (!xperia) {
                InputStream onStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + oncheckimage + ".png");
                Drawable btOn = Drawable.createFromStream(onStream, oncheckimage);
                try {
                    onStream.close();
                } catch (IOException e3) {
                }
                InputStream onStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "checkbox_y.png");
                Drawable btCheck = Drawable.createFromStream(onStream2, "checkbox_y");
                try {
                    onStream2.close();
                } catch (IOException e4) {
                }
                StateListDrawable drawables = new StateListDrawable();
                StateListDrawable drawables2 = new StateListDrawable();
                drawables.addState(new int[]{-16842912, -16842908}, btOn);
                drawables.addState(new int[]{R.attr.state_checked, -16842908}, btCheck);
                drawables2.addState(new int[]{-16842910, -16842908}, null);
                drawables2.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{-16842912, -16842908}, null);
                drawables2.addState(new int[]{R.attr.state_checked, -16842908}, null);
                checkbtn.setButtonDrawable(drawables2);
                checkbtn.setBackgroundDrawable(drawables);
            }
            checkbtn.setChecked(false);
            checkbtn.setOnCheckedChangeListener(this.changeCheckBox);
        } else if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            Button btn = (Button) result;
            if (onimage.equals("bt_confirm_dim")) {
                this.mIMEIOkBtn = btn;
            }
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn2 = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e5) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream2, onimage);
            try {
                isStream2.close();
            } catch (IOException e6) {
            }
            StateListDrawable drawables3 = new StateListDrawable();
            drawables3.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables3.addState(new int[0], btOn2);
            if (onimage.equals("bt_confirm_dim")) {
                this.mIMEInotCheckedDrawble = drawables3;
                this.mIMEICheckedDrawbles = new StateListDrawable();
                InputStream isStream3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_con_nor.png");
                Drawable btOn3 = Drawable.createFromStream(isStream3, "btn_con_nor");
                try {
                    isStream3.close();
                } catch (IOException e7) {
                }
                InputStream isStream4 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_con_sel.png");
                Drawable btOver2 = Drawable.createFromStream(isStream4, "btn_con_sel");
                try {
                    isStream4.close();
                } catch (IOException e8) {
                }
                this.mIMEICheckedDrawbles.addState(new int[]{R.attr.state_pressed}, btOver2);
                this.mIMEICheckedDrawbles.addState(new int[0], btOn3);
                if (this.mIMEICheckList[0]) {
                    this.mIMEIOkBtn.setBackgroundDrawable(this.mIMEICheckedDrawbles);
                    this.mIMEIOkBtn.setOnClickListener(this.imeiAuthBtn);
                } else {
                    this.mIMEIOkBtn.setBackgroundDrawable(drawables3);
                }
            } else {
                btn.setBackgroundDrawable(drawables3);
            }
            if (onimage.equals("btn_cancel_sel_h")) {
                btn.setOnClickListener(this.imeiAuthCancelBtn);
            }
        } else if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String nortext = findAttribute(atts, "a:nortext");
            String nametext = findAttribute(atts, "a:nametext");
            String centertext = findAttribute(atts, "a:centertext");
            String agreetext = findAttribute(atts, "a:agreetext");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            findAttribute(atts, "a:id");
            if (nortext != null) {
                tv.setText(nortext);
            }
            if (nametext != null) {
                tv.setText(CommonString.getString(CommonString.Index.MENT_PRIVACY_POLICY));
            }
            if (centertext != null) {
                centertext.replace("\\n", "\n");
                tv.setText(CommonString.getString(CommonString.Index.WORK_IMEIAUTH_STRING));
            }
            if (agreetext != null) {
                tv.setText(agreetext);
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textGravity != null) {
                if (textGravity.equals("center")) {
                    tv.setGravity(17);
                } else if (textGravity.equals("right")) {
                    tv.setGravity(5);
                } else if (textGravity.equals("left")) {
                    tv.setGravity(3);
                } else {
                    tv.setGravity(19);
                }
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewJoinPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else if (name.equals("CheckBox")) {
            result = new CheckBox(this.context);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                if (image.equals("dot_line")) {
                    InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "line_dot_01.png");
                    Drawable line_dot_01 = Drawable.createFromStream(is, null);
                    try {
                        is.close();
                    } catch (IOException e) {
                    }
                    ((BitmapDrawable) line_dot_01).setTileModeX(Shader.TileMode.REPEAT);
                    ((BitmapDrawable) line_dot_01).setTileModeY(Shader.TileMode.REPEAT);
                    ll.setBackgroundDrawable(line_dot_01);
                } else {
                    InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                    ll.setBackgroundDrawable(Drawable.createFromStream(is2, image));
                    try {
                        is2.close();
                    } catch (IOException e2) {
                    }
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else if (gravity.equals("left")) {
                    ll.setGravity(3);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String paddingLeft = findAttribute(atts, "a:paddingleft");
            String paddingTop = findAttribute(atts, "a:paddingTop");
            String paddingRight = findAttribute(atts, "a:paddingRight");
            String paddingBottom = findAttribute(atts, "a:paddingBottom");
            int sizeLeft = 0;
            if (paddingLeft != null) {
                sizeLeft = readDPSize(paddingLeft);
            }
            int sizeTop = paddingTop != null ? readDPSize(paddingTop) : 0;
            int sizeRight = paddingRight != null ? readDPSize(paddingRight) : 0;
            int sizeBottom = paddingBottom != null ? readDPSize(paddingBottom) : 0;
            ll.setPadding(sizeLeft, sizeTop, sizeRight, sizeBottom);
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is3 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is3, image2));
                try {
                    is3.close();
                } catch (IOException e3) {
                }
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String textID = findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                text = text.replace("\\n", "\n");
                tv.setText(text);
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textID != null) {
                tv.setText(text);
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof CheckBox) {
            CheckBox checkbtn = (CheckBox) result;
            String id = findAttribute(atts, "a:checkid");
            checkbtn.setTag(id);
            String modelName = Build.MODEL;
            boolean xperia = false;
            if (modelName.endsWith("LT15i")) {
                xperia = true;
                this.xperiacheckbox = true;
            }
            if (!xperia) {
                String onimage = findAttribute(atts, "a:onImage");
                InputStream onStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
                Drawable btOn = Drawable.createFromStream(onStream, onimage);
                try {
                    onStream.close();
                } catch (IOException e4) {
                }
                InputStream onStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "checkbox_y.png");
                Drawable btCheck = Drawable.createFromStream(onStream2, "checkbox_y");
                try {
                    onStream2.close();
                } catch (IOException e5) {
                }
                StateListDrawable drawables = new StateListDrawable();
                StateListDrawable drawables2 = new StateListDrawable();
                drawables.addState(new int[]{-16842912, -16842908}, btOn);
                drawables.addState(new int[]{R.attr.state_checked, -16842908}, btCheck);
                drawables2.addState(new int[]{-16842910, -16842908}, null);
                drawables2.addState(new int[]{-16842912, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{R.attr.state_checked, R.attr.state_pressed}, null);
                drawables2.addState(new int[]{-16842912, -16842908}, null);
                drawables2.addState(new int[]{R.attr.state_checked, -16842908}, null);
                checkbtn.setBackgroundDrawable(drawables);
                checkbtn.setButtonDrawable(drawables2);
            }
            checkbtn.setChecked(false);
            checkbtn.setOnCheckedChangeListener(this.changeCheckBox);
        } else if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage2 = findAttribute(atts, "a:onImage");
            findAttribute(atts, "a:gravity");
            if (offimage != null) {
                Button btn = (Button) result;
                InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
                Drawable btOn2 = Drawable.createFromStream(isStream, offimage);
                try {
                    isStream.close();
                } catch (IOException e6) {
                }
                InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage2 + ".png");
                Drawable btOver = Drawable.createFromStream(isStream2, onimage2);
                try {
                    isStream2.close();
                } catch (IOException e7) {
                }
                StateListDrawable drawables3 = new StateListDrawable();
                drawables3.addState(new int[]{R.attr.state_pressed}, btOver);
                drawables3.addState(new int[0], btOn2);
                btn.setBackgroundDrawable(drawables3);
                if (onimage2.equals("btn_con_sel")) {
                    btn.setOnClickListener(this.okJoinBtn);
                } else if (onimage2.equals("btn_cancel_sel_h")) {
                    btn.setOnClickListener(this.cancelJoinBtn);
                } else if (onimage2.equals("btn_terms_sel_b")) {
                    btn.setOnClickListener(this.moreInfoFormBtn1);
                } else if (onimage2.equals("btn_terms_sel_b2")) {
                    btn.setOnClickListener(this.moreInfoFormBtn2);
                } else if (onimage2.equals("btn_policy_sel_b")) {
                    btn.setOnClickListener(this.moreInfoFormBtn3);
                }
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewOtpPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("EditText")) {
            result = new EditText(this.context);
            ((EditText) result).setImeOptions(268435456);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof ImageView) {
            ImageView iv = (ImageView) result;
            String image2 = findAttribute(atts, "a:src");
            if (image2 != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                iv.setImageDrawable(Drawable.createFromStream(is2, image2));
                try {
                    is2.close();
                } catch (IOException e2) {
                }
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            findAttribute(atts, "a:id");
            String text = findAttribute(atts, "a:text");
            String otpnumbertext = findAttribute(atts, "a:otpnumbertext");
            String infotext = findAttribute(atts, "a:infotext");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (otpnumbertext != null) {
                int num = 0;
                for (int i = 1; i <= 20; i++) {
                    num = (int) ((Math.random() * ((double) 9000)) + ((double) Objects.FINDIMAGE_TOTALNUM));
                }
                otpnumbertext.replace("\\n", "\n");
                tv.setText(new StringBuilder().append(num).toString());
                this.otpAuthNumber = String.valueOf(num);
            }
            if (infotext != null) {
                tv.setText(infotext.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
        }
        if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            Button btn = (Button) result;
            InputStream isStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            Drawable btOn = Drawable.createFromStream(isStream, offimage);
            try {
                isStream.close();
            } catch (IOException e3) {
            }
            InputStream isStream2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            Drawable btOver = Drawable.createFromStream(isStream2, onimage);
            try {
                isStream2.close();
            } catch (IOException e4) {
            }
            StateListDrawable drawables = new StateListDrawable();
            drawables.addState(new int[]{R.attr.state_pressed}, btOver);
            drawables.addState(new int[0], btOn);
            btn.setBackgroundDrawable(drawables);
            if (onimage.equals("btn_locking_sel")) {
                btn.setOnClickListener(this.okOtpBtn);
            }
        }
        if (result instanceof EditText) {
            final EditText editText = (EditText) result;
            editText.setHint(CommonString.getString(CommonString.Index.HINT_INPUT_SECURITY));
            editText.setFocusable(true);
            editText.setBackgroundDrawable(null);
            editText.setInputType(2);
            String maxLength = findAttribute(atts, "a:maxLength");
            if (maxLength != null) {
                editText.setSingleLine();
                InputFilter[] filterArray = {new InputFilter.LengthFilter(Integer.parseInt(maxLength))};
                editText.setFilters(filterArray);
            }
            findAttribute(atts, "a:id");
            editText.addTextChangedListener(new TextWatcher() { // from class: com.feelingk.iap.gui.parser.ParserXML.40
                String inputStr;

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    this.inputStr = s.toString();
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    if (this.inputStr.length() == 4) {
                        if (ParserXML.this.otpAuthNumber.equals(this.inputStr)) {
                            ParserXML.this.onOtpCallback.onOtpDialogOK();
                            return;
                        }
                        this.inputStr = GameView.CHARACTER_AI;
                        editText.setText(GameView.CHARACTER_AI);
                        editText.setHint("잘못된 인증번호를 입력하셨습니다.");
                    }
                }
            });
            editText.setOnClickListener(new View.OnClickListener() { // from class: com.feelingk.iap.gui.parser.ParserXML.41
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (ParserXML.this.cursorFlag) {
                        editText.setHint(GameView.CHARACTER_AI);
                    }
                    ParserXML.this.cursorFlag = false;
                }
            });
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private View createViewLguSmsAuthPopup(XmlPullParser parse) {
        String name = parse.getName();
        View result = null;
        AttributeSet atts = Xml.asAttributeSet(parse);
        if (name.equals("LinearLayout")) {
            result = new LinearLayout(this.context);
        } else if (name.equals("TextView")) {
            result = new TextView(this.context);
        } else if (name.equals("Button")) {
            result = new Button(this.context);
        } else if (name.equals("ImageView")) {
            result = new ImageView(this.context);
        } else if (name.equals("EditText")) {
            result = new EditText(this.context);
            ((EditText) result).setImeOptions(268435456);
        } else if (name.equals("ScrollView")) {
            result = new ScrollView(this.context);
            result.setScrollbarFadingEnabled(false);
        } else {
            Assert.fail("# UnSupported tag:" + name);
        }
        if (result == null) {
            return null;
        }
        if (result instanceof LinearLayout) {
            LinearLayout ll = (LinearLayout) result;
            String orient = findAttribute(atts, "a:orientation");
            if (orient != null) {
                if (orient.equals("horizontal")) {
                    ll.setOrientation(0);
                } else if (orient.equals("vertical")) {
                    ll.setOrientation(1);
                }
            }
            String image = findAttribute(atts, "a:background");
            if (image != null) {
                InputStream is = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image + ".png");
                ll.setBackgroundDrawable(Drawable.createFromStream(is, image));
                try {
                    is.close();
                } catch (IOException e) {
                }
            }
            String imageColor = findAttribute(atts, "a:backgroudcolor");
            if (imageColor != null) {
                ll.setBackgroundColor(-65536);
            }
            String gravity = findAttribute(atts, "a:gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    ll.setGravity(17);
                } else {
                    ll.setGravity(5);
                }
            }
            String padding = findAttribute(atts, "a:padding");
            if (padding != null) {
                int size = readDPSize(padding);
                ll.setPadding(size, size, size, size);
            }
            String touchMode = findAttribute(atts, "a:focusableInTouchMode");
            if (touchMode != null) {
                ll.setFocusableInTouchMode(true);
            }
        }
        if (result instanceof EditText) {
            EditText et = (EditText) result;
            et.setGravity(5);
            et.setInputType(2);
            String image2 = findAttribute(atts, "a:background");
            if (image2 != null) {
                InputStream is2 = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + image2 + ".png");
                et.setBackgroundDrawable(Drawable.createFromStream(is2, image2));
                try {
                    is2.close();
                } catch (IOException e2) {
                }
            }
            String lgu_auth_text = findAttribute(atts, "a:lgu_auth_text");
            if (lgu_auth_text != null) {
                mLguSmsAuthTv = et;
                if (IAPLib.getOTPNumber() != null) {
                    et.setText(IAPLib.getOTPNumber());
                    et.setTextColor(Color.parseColor("#FF6F00"));
                    et.setTextSize(1, 30.0f);
                    mLguSmsAuthBtn.setBackgroundDrawable(mReClaimDrawables);
                } else {
                    et.setText(CommonString.getString(CommonString.Index.MENT_REQUEST_AUTHORIZATION));
                }
                mLguSmsAuthTv.addTextChangedListener(new TextWatcher() { // from class: com.feelingk.iap.gui.parser.ParserXML.42
                    String inputStr;

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence s, int start, int before, int count) {
                        this.inputStr = s.toString();
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable s) {
                        if (this.inputStr.length() != 6) {
                            ParserXML.nextStep = true;
                        }
                        if (ParserXML.nextStep.booleanValue() && this.inputStr.length() == 6) {
                            ParserXML.nextStep = false;
                            IAPLib.setOTPNumber(this.inputStr);
                        }
                    }
                });
            }
        }
        if (result instanceof TextView) {
            TextView tv = (TextView) result;
            String text = findAttribute(atts, "a:text");
            findAttribute(atts, "a:lgu_auth_text");
            findAttribute(atts, "a:lgu_info_text");
            String textSize = findAttribute(atts, "a:textSize");
            String textColor = findAttribute(atts, "a:textColor");
            String textGravity = findAttribute(atts, "a:gravity");
            if (text != null) {
                tv.setText(text.replace("\\n", "\n"));
            }
            if (textSize != null) {
                tv.setTextSize(1, readFontSize(textSize));
            }
            if (textColor != null) {
                tv.setTextColor(Color.parseColor(textColor));
            }
            if (textGravity != null) {
                tv.setGravity(17);
            } else {
                tv.setGravity(19);
            }
            tv.setLineSpacing(0.0f, 1.15f);
            if (IAPLib.getOTPNumber() != null) {
                mLguSmsAuthTv.setText(IAPLib.getOTPNumber());
                mLguSmsAuthTv.setTextColor(Color.parseColor("#FF6F00"));
                mLguSmsAuthTv.setTextSize(1, 30.0f);
                mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
            }
        }
        if (result instanceof Button) {
            String offimage = findAttribute(atts, "a:offImage");
            String onimage = findAttribute(atts, "a:onImage");
            String id = findAttribute(atts, "a:id");
            this.mBtn = (Button) result;
            String padding2 = findAttribute(atts, "a:padding");
            if (padding2 != null) {
                int size2 = readDPSize(padding2);
                this.mBtn.setPadding(size2, size2, size2, size2);
            }
            if (id != null) {
                if (id.equals("lgu_smsAuth_btn")) {
                    this.mBtn.setPadding(0, 0, 0, 0);
                }
                this.mBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_REQUEST));
            }
            if (offimage.equals("bt_01_nor.9")) {
                mLguSmsAuthBtn = this.mBtn;
                mLguSmsAuthBtn.setPadding(0, 0, 0, 0);
                mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.RECEIVE_CODE));
            }
            if (offimage.equals("bt_confirm_dim")) {
                mLguSmsAuthOkBtn = this.mBtn;
            }
            this.mStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + offimage + ".png");
            this.mbtOn = Drawable.createFromStream(this.mStream, offimage);
            try {
                this.mStream.close();
            } catch (IOException e3) {
            }
            this.mStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + onimage + ".png");
            this.mbtOver = Drawable.createFromStream(this.mStream, onimage);
            try {
                this.mStream.close();
            } catch (IOException e4) {
            }
            this.mDrawables = new StateListDrawable();
            this.mDrawables.addState(new int[]{R.attr.state_pressed}, this.mbtOver);
            this.mDrawables.addState(new int[0], this.mbtOn);
            this.mReClaimStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "bt_01_reclaim_nor.png");
            this.mLimitExcessbtOn = Drawable.createFromStream(this.mReClaimStream, "bt_01_reclaim_nor");
            try {
                this.mReClaimStream.close();
            } catch (IOException e5) {
            }
            this.mReClaimStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "bt_01_reclaim_sel.png");
            this.mLimitExcessbtOver = Drawable.createFromStream(this.mReClaimStream, "bt_01_reclaim_sel");
            try {
                this.mReClaimStream.close();
            } catch (IOException e6) {
            }
            mReClaimDrawables = new StateListDrawable();
            mReClaimDrawables.addState(new int[]{R.attr.state_pressed}, this.mLimitExcessbtOver);
            mReClaimDrawables.addState(new int[0], this.mLimitExcessbtOn);
            this.mAuthOkStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_con_nor.png");
            this.mAuthOkbtOn = Drawable.createFromStream(this.mAuthOkStream, "btn_con_nor");
            try {
                this.mAuthOkStream.close();
            } catch (IOException e7) {
            }
            this.mAuthOkStream = getClass().getResourceAsStream(String.valueOf(getResourcePath()) + "btn_con_sel.png");
            this.mAuthOkbtOver = Drawable.createFromStream(this.mAuthOkStream, "btn_con_sel");
            try {
                this.mAuthOkStream.close();
            } catch (IOException e8) {
            }
            mSmsAuthDrawables = new StateListDrawable();
            mSmsAuthDrawables.addState(new int[]{R.attr.state_pressed}, this.mAuthOkbtOver);
            mSmsAuthDrawables.addState(new int[0], this.mAuthOkbtOn);
            this.mBtn.setBackgroundDrawable(this.mDrawables);
            if (mLguSmsAuthClickFlag.booleanValue() && offimage.equals("bt_01_sel.9")) {
                this.mBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                this.mBtn.setTextColor(Color.parseColor("#999999"));
            }
            if (IAPLib.getOTPNumber() != null) {
                mLguSmsAuthBtn.setText(CommonString.getString(CommonString.Index.MENT_NUMBER_RECLAIMED));
                mLguSmsAuthBtn.setTextColor(Color.parseColor("#999999"));
                mLguSmsAuthOkBtn.setBackgroundDrawable(mSmsAuthDrawables);
                mLguSmsAuthOkBtn.setOnClickListener(okLguSmsAuthBtn);
            }
            if (id != null && id.equals("lgu_smsAuth_btn")) {
                this.mBtn.setPadding(0, 0, 0, 0);
            }
            if (onimage.equals("bt_01_sel.9")) {
                this.mBtn.setOnClickListener(this.getlguSmsAuthBtn);
            } else if (onimage.equals("btn_con_sel")) {
                this.mBtn.setOnClickListener(okLguSmsAuthBtn);
            } else if (onimage.equals("btn_cancel_sel_h")) {
                this.mBtn.setOnClickListener(this.cancelLguSmsAuthBtn);
            } else if (onimage.equals("btn_locking_sel")) {
                PackageManager pm = this.context.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i = 0; i < nSize; i++) {
                    ApplicationInfo app = appList.get(i);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        this.tStoreFlag = true;
                    }
                }
                this.mBtn.setOnClickListener(this.tStoreInfoBtn);
            }
        }
        if (this.layoutStack.size() > 0) {
            result.setLayoutParams(loadLayoutParams(atts, this.layoutStack.peek()));
            return result;
        }
        return result;
    }

    private int lookupId(String id) {
        int ix = id.indexOf(Objects.Animation.DEVIDER_DATA);
        if (ix == -1) {
            return -1;
        }
        String idName = id.substring(ix + 1);
        Integer n = this.ids.get(idName);
        if (n == null && id.startsWith("@+")) {
            int i = this.idg;
            this.idg = i + 1;
            n = new Integer(i);
            this.ids.put(idName, n);
        }
        if (n != null) {
            return n.intValue();
        }
        return -1;
    }

    private String findAttribute(AttributeSet atts, String id) {
        for (int i = 0; i < atts.getAttributeCount(); i++) {
            if (atts.getAttributeName(i).equals(id)) {
                return atts.getAttributeValue(i);
            }
        }
        int ix = id.indexOf(":");
        if (ix != -1) {
            return atts.getAttributeValue("http://schemas.android.com/apk/res/android", id.substring(ix + 1));
        }
        return null;
    }

    private ViewGroup.LayoutParams loadLayoutParams(AttributeSet atts, ViewGroup vg) {
        int w;
        int h;
        ViewGroup.LayoutParams lps = null;
        String width = findAttribute(atts, "a:layout_width");
        String height = findAttribute(atts, "a:layout_height");
        String xwidth = findAttribute(atts, "a:xlayout_width");
        String xheight = findAttribute(atts, "a:xlayout_height");
        String modelName = Build.MODEL;
        if (modelName.endsWith("LT15i") && this.xperiacheckbox) {
            w = readSize(xwidth);
            h = readSize(xheight);
            this.xperiacheckbox = false;
        } else {
            w = readSize(width);
            h = readSize(height);
        }
        if (vg instanceof LinearLayout) {
            lps = new LinearLayout.LayoutParams(w, h);
        }
        if (vg instanceof ScrollView) {
            lps = new LinearLayout.LayoutParams(w, h);
        }
        if (lps instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams l = (LinearLayout.LayoutParams) lps;
            String gravity = findAttribute(atts, "a:layout_gravity");
            if (gravity != null) {
                if (gravity.equals("center")) {
                    l.gravity = 17;
                } else if (gravity.equals("left")) {
                    l.gravity = 3;
                } else {
                    l.gravity = 5;
                }
            }
            String weight = findAttribute(atts, "a:layout_weight");
            if (weight != null) {
                l.weight = Float.parseFloat(weight);
            }
            String marginTop = findAttribute(atts, "a:layout_marginTop");
            String marginLeft = findAttribute(atts, "a:layout_marginLeft");
            String marginRight = findAttribute(atts, "a:layout_marginRight");
            String marginBottom = findAttribute(atts, "a:layout_marginBottom");
            if (marginTop != null) {
                l.topMargin = readDPSize(marginTop);
            }
            if (marginLeft != null) {
                l.leftMargin = readDPSize(marginLeft);
            }
            if (marginBottom != null) {
                l.bottomMargin = readSize(marginBottom);
            }
            if (marginRight != null) {
                l.rightMargin = readDPSize(marginRight);
            }
            return l;
        }
        return lps;
    }

    private int readSize(String val) {
        int iDipToInt;
        if ("wrap_content".equals(val)) {
            return -2;
        }
        if ("fill_parent".equals(val)) {
            return -1;
        }
        if (val == null) {
            return -2;
        }
        try {
            float size = Float.parseFloat(val.substring(0, val.length() - 2));
            if (val.endsWith("dp")) {
                iDipToInt = dipToInt(size);
            } else if (val.endsWith("pt")) {
                float dpChange = (float) (((double) size) / 1.5d);
                iDipToInt = (int) (dpChange * 1.0f);
            } else {
                iDipToInt = Integer.parseInt(val);
            }
            return iDipToInt;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private int readFontSize(String val) {
        try {
            float size = Float.parseFloat(val.substring(0, val.length() - 2));
            float dpChange = (float) (((double) size) / 1.5d);
            return (int) dpChange;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private int readDPSize(String val) {
        int iDipToInt;
        try {
            float size = Float.parseFloat(val.substring(0, val.length() - 2));
            if (val.endsWith("dp")) {
                iDipToInt = dipToInt(size);
            } else {
                iDipToInt = Integer.parseInt(val);
            }
            return iDipToInt;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private String getResourceXMLPath() {
        if (CommonF.getCarrier(this.context) == 1) {
            String path = String.format("%s", this.XML_FILE_PATH);
            return path;
        }
        String path2 = String.format("%s", this.XML_FILE_PATH_KTLG);
        return path2;
    }

    private String getResourcePath() {
        return this.RES_VERT_FILE_PATH;
    }

    private int dipToInt(float number) {
        if (number == 0.0f) {
            return 0;
        }
        return (int) TypedValue.applyDimension(1, number, this.context.getResources().getDisplayMetrics());
    }

    public class OnClickForeignInputMDN implements View.OnClickListener {
        private RadioButton mRadioButton1;
        private RadioButton mRadioButton2;
        private RadioButton mRadioButton3;

        public OnClickForeignInputMDN() {
        }

        public void setRadioButton1(RadioButton radioButton) {
            this.mRadioButton1 = radioButton;
            this.mRadioButton1.setChecked(true);
            ParserXML.this.foreignInputCarrier = 1;
        }

        public void setRadioButton2(RadioButton radioButton) {
            this.mRadioButton2 = radioButton;
        }

        public void setRadioButton3(RadioButton radioButton) {
            this.mRadioButton3 = radioButton;
        }

        public int getCurrentSelected() {
            if (this.mRadioButton1.isChecked()) {
                this.mRadioButton1.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
                return 1;
            }
            if (this.mRadioButton2.isChecked()) {
                this.mRadioButton2.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
                return 2;
            }
            if (this.mRadioButton3.isChecked()) {
                this.mRadioButton3.addTextChangedListener(ParserXML.this.mForeignDevelopeTextLengthWatcher);
                return 3;
            }
            return 0;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.mRadioButton1) {
                this.mRadioButton1.setChecked(true);
                this.mRadioButton2.setChecked(false);
                this.mRadioButton3.setChecked(false);
                ParserXML.mJumiLlView.setVisibility(8);
                ParserXML.this.foreignInputCarrier = 1;
                ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                ParserXML.this.mOkBtn.setClickable(false);
                if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10) {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                    ParserXML.this.mOkBtn.setClickable(true);
                    return;
                }
                return;
            }
            if (view == this.mRadioButton2) {
                this.mRadioButton1.setChecked(false);
                this.mRadioButton2.setChecked(true);
                this.mRadioButton3.setChecked(false);
                ParserXML.mJumiLlView.setVisibility(0);
                ParserXML.this.foreignInputCarrier = 2;
                ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                ParserXML.this.mOkBtn.setClickable(false);
                if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10 && ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() == 13) {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                    ParserXML.this.mOkBtn.setClickable(true);
                    return;
                }
                return;
            }
            if (view == this.mRadioButton3) {
                this.mRadioButton1.setChecked(false);
                this.mRadioButton2.setChecked(false);
                this.mRadioButton3.setChecked(true);
                ParserXML.mJumiLlView.setVisibility(0);
                ParserXML.this.foreignInputCarrier = 3;
                ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.dotoriInactive);
                ParserXML.this.mOkBtn.setClickable(false);
                if (ParserXML.this.m_MDN1.getText().length() + ParserXML.this.m_MDN2.getText().length() + ParserXML.this.m_MDN3.getText().length() >= 10 && ParserXML.this.m_JuminText1.getText().length() + ParserXML.this.m_JuminText2.getText().length() == 13) {
                    ParserXML.this.mOkBtn.setBackgroundDrawable(ParserXML.this.mOkDrawbles);
                    ParserXML.this.mOkBtn.setClickable(true);
                }
            }
        }
    }

    public void UseTCash(Boolean flag) {
        if (flag.booleanValue()) {
            int total = this.mItemPurchaseItemInfo.itemPrice - this.mItemPurchaseItemInfo.itemTCash;
            if (total > 0) {
                DecimalFormat df = new DecimalFormat("###,###,###");
                this.m_AccountPriceTextView.setText(String.valueOf(df.format(total)) + CommonString.getString(CommonString.Index.WON));
                return;
            } else {
                DecimalFormat df2 = new DecimalFormat("###,###,###");
                String dfMoney = df2.format(this.mItemPurchaseItemInfo.itemPrice);
                this.m_AccountPriceTextView.setText(String.valueOf(dfMoney) + CommonString.getString(CommonString.Index.WON) + "-" + dfMoney + "P=0" + CommonString.getString(CommonString.Index.WON));
                return;
            }
        }
        DecimalFormat df3 = new DecimalFormat("###,###,###");
        this.m_AccountPriceTextView.setText(String.valueOf(df3.format(this.mItemPurchaseItemInfo.itemPrice)) + CommonString.getString(CommonString.Index.WON));
    }

    public void add_payments_amount(String kind) {
        CommonF.LOGGER.i(TAG, "add_payments_amount: " + kind);
        if (kind.equals("OCB")) {
            int ocbPoint = Integer.parseInt(IAPLib.getOCBPoint());
            int compareValue = SingletonCounter.getInstance().getmPostPay() - (ocbPoint - (ocbPoint % 10));
            if (compareValue > 0) {
                SingletonCounter.getInstance().setmPostPay(compareValue);
                SingletonCounter.getInstance().setmOCBUse(ocbPoint);
                SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() - (SingletonCounter.getInstance().getmOCBUse() % 10));
                SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() <= 0 ? 0 : SingletonCounter.getInstance().getmOCBUse());
                this.mOCBText.setText(String.valueOf(ocbPoint - SingletonCounter.getInstance().getmOCBUse()) + " P");
                this.m_AccountPriceTextView.setText(String.valueOf(String.valueOf(SingletonCounter.getInstance().getmPostPay())) + CommonString.getString(CommonString.Index.WON));
            } else {
                SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmPostPay());
                SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() - (SingletonCounter.getInstance().getmOCBUse() % 10));
                SingletonCounter.getInstance().setmOCBUse(SingletonCounter.getInstance().getmOCBUse() <= 0 ? 0 : SingletonCounter.getInstance().getmOCBUse());
                CommonF.LOGGER.i(TAG, "OCB 사용액: " + SingletonCounter.getInstance().getmOCBUse() + " P");
                SingletonCounter.getInstance().setmPostPay(0);
                this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmOCBUse() % 10) + CommonString.getString(CommonString.Index.WON));
                this.mOCBText.setText(String.valueOf(ocbPoint - SingletonCounter.getInstance().getmOCBUse()) + " P");
                if (SingletonCounter.getInstance().getmDotoriUse() == 0) {
                    this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
                    this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mDotoriBtn.setClickable(false);
                    this.mDotoriBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmCultureUse() == 0) {
                    this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
                    this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mCultureBtn.setClickable(false);
                    this.mCultureBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmTCashUse() == 0) {
                    this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
                    this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mTcashBtn.setClickable(false);
                    this.mTcashBtn.setPadding(0, 0, 0, 0);
                }
            }
        } else if (kind.equals("DOTORI")) {
            int compareValue2 = SingletonCounter.getInstance().getmPostPay() - (this.mItemPurchaseItemInfo.dotoriBalance - (this.mItemPurchaseItemInfo.dotoriBalance % 100));
            if (compareValue2 > 0) {
                boolean dotoriText = false;
                if (SingletonCounter.getInstance().getmPostPay() > 100000 && this.mItemPurchaseItemInfo.dotoriBalance > 100000) {
                    SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() - 100000);
                    SingletonCounter.getInstance().setmDotoriUse(100000);
                    dotoriText = true;
                } else {
                    SingletonCounter.getInstance().setmPostPay(compareValue2);
                    SingletonCounter.getInstance().setmDotoriUse(this.mItemPurchaseItemInfo.dotoriBalance);
                }
                SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - (SingletonCounter.getInstance().getmDotoriUse() % 100));
                SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() <= 0 ? 0 : SingletonCounter.getInstance().getmDotoriUse());
                if (dotoriText) {
                    this.mDotoriText.setText(String.valueOf((this.mItemPurchaseItemInfo.dotoriBalance - SingletonCounter.getInstance().getmDotoriUse()) / 100) + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                } else {
                    this.mDotoriText.setText(InAppError.SUCCESS + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                }
                this.m_AccountPriceTextView.setText(String.valueOf(String.valueOf(SingletonCounter.getInstance().getmPostPay())) + CommonString.getString(CommonString.Index.WON));
                CommonF.LOGGER.i(TAG, "도토리 사용액: " + SingletonCounter.getInstance().getmDotoriUse() + CommonString.getString(CommonString.Index.WON));
            } else {
                if (SingletonCounter.getInstance().getmPostPay() > 100000 && this.mItemPurchaseItemInfo.dotoriBalance > 100000) {
                    SingletonCounter.getInstance().setmDotoriUse(100000);
                    SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - (SingletonCounter.getInstance().getmDotoriUse() % 100));
                    SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() <= 0 ? 0 : SingletonCounter.getInstance().getmDotoriUse());
                } else {
                    SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmPostPay());
                    SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() - (SingletonCounter.getInstance().getmDotoriUse() % 100));
                    SingletonCounter.getInstance().setmDotoriUse(SingletonCounter.getInstance().getmDotoriUse() <= 0 ? 0 : SingletonCounter.getInstance().getmDotoriUse());
                }
                CommonF.LOGGER.i(TAG, "도토리 사용액: " + SingletonCounter.getInstance().getmDotoriUse() + CommonString.getString(CommonString.Index.WON));
                SingletonCounter.getInstance().setmDotoriUse((SingletonCounter.getInstance().getmDotoriUse() / 100) * 100);
                this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay() - SingletonCounter.getInstance().getmDotoriUse()) + CommonString.getString(CommonString.Index.WON));
                SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() - SingletonCounter.getInstance().getmDotoriUse());
                int dotoriNum = (this.mItemPurchaseItemInfo.dotoriBalance - SingletonCounter.getInstance().getmDotoriUse()) / 100;
                this.mDotoriText.setText(String.valueOf(dotoriNum) + CommonString.getString(CommonString.Index.DOTORI_COUNT));
                if (SingletonCounter.getInstance().getmPostPay() < 10) {
                    if (SingletonCounter.getInstance().getmOCBUse() == 0) {
                        this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                        this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        this.mOCBBtn.setClickable(false);
                        this.mOCBBtn.setPadding(0, 0, 0, 0);
                    }
                    if (SingletonCounter.getInstance().getmCultureUse() == 0) {
                        this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
                        this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        this.mCultureBtn.setClickable(false);
                        this.mCultureBtn.setPadding(0, 0, 0, 0);
                    }
                    if (SingletonCounter.getInstance().getmTCashUse() == 0) {
                        this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
                        this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                        this.mTcashBtn.setClickable(false);
                        this.mTcashBtn.setPadding(0, 0, 0, 0);
                    }
                }
            }
        } else if (kind.equals("CULTURE")) {
            int CLPoint = Integer.parseInt(IAPLib.getCultureLandCashPoint());
            int compareValue3 = SingletonCounter.getInstance().getmPostPay() - (CLPoint - (CLPoint % 10));
            if (compareValue3 > 0) {
                SingletonCounter.getInstance().setmPostPay(compareValue3);
                SingletonCounter.getInstance().setmCultureUse(CLPoint);
                SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() - (SingletonCounter.getInstance().getmCultureUse() % 10));
                SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() <= 0 ? 0 : SingletonCounter.getInstance().getmCultureUse());
                this.mCultureText.setText(String.valueOf(CLPoint - SingletonCounter.getInstance().getmCultureUse()) + CommonString.getString(CommonString.Index.WON));
                this.m_AccountPriceTextView.setText(String.valueOf(String.valueOf(SingletonCounter.getInstance().getmPostPay())) + CommonString.getString(CommonString.Index.WON));
            } else {
                SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmPostPay());
                SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() - (SingletonCounter.getInstance().getmCultureUse() % 10));
                SingletonCounter.getInstance().setmCultureUse(SingletonCounter.getInstance().getmCultureUse() <= 0 ? 0 : SingletonCounter.getInstance().getmCultureUse());
                CommonF.LOGGER.i(TAG, "CULTURE 사용액: " + SingletonCounter.getInstance().getmCultureUse() + " P");
                SingletonCounter.getInstance().setmPostPay(0);
                this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmCultureUse() % 10) + CommonString.getString(CommonString.Index.WON));
                this.mCultureText.setText(String.valueOf(CLPoint - SingletonCounter.getInstance().getmCultureUse()) + CommonString.getString(CommonString.Index.WON));
                if (SingletonCounter.getInstance().getmOCBUse() == 0) {
                    this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                    this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mOCBBtn.setClickable(false);
                    this.mOCBBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmDotoriUse() == 0) {
                    this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
                    this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mDotoriBtn.setClickable(false);
                    this.mDotoriBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmTCashUse() == 0) {
                    this.mTcashBtn.setBackgroundDrawable(this.mInactiveTcashDrawables);
                    this.mTcashBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mTcashBtn.setClickable(false);
                    this.mTcashBtn.setPadding(0, 0, 0, 0);
                }
            }
        } else if (kind.equals("TCASH")) {
            int compareValue4 = SingletonCounter.getInstance().getmPostPay() - (this.mItemPurchaseItemInfo.itemTCash - (this.mItemPurchaseItemInfo.itemTCash % 10));
            if (compareValue4 > 0) {
                SingletonCounter.getInstance().setmPostPay(compareValue4);
                SingletonCounter.getInstance().setmTCashUse(this.mItemPurchaseItemInfo.itemTCash);
                SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() - (SingletonCounter.getInstance().getmTCashUse() % 10));
                SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() <= 0 ? 0 : SingletonCounter.getInstance().getmTCashUse());
                this.mTcashText.setText(String.valueOf(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse()) + " P");
                this.m_AccountPriceTextView.setText(String.valueOf(String.valueOf(SingletonCounter.getInstance().getmPostPay())) + CommonString.getString(CommonString.Index.WON));
            } else {
                SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmPostPay());
                SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() - (SingletonCounter.getInstance().getmTCashUse() % 10));
                SingletonCounter.getInstance().setmTCashUse(SingletonCounter.getInstance().getmTCashUse() <= 0 ? 0 : SingletonCounter.getInstance().getmTCashUse());
                CommonF.LOGGER.i(TAG, "티캐쉬 사용액: " + SingletonCounter.getInstance().getmTCashUse() + "P");
                SingletonCounter.getInstance().setmPostPay(0);
                this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmTCashUse() % 10) + CommonString.getString(CommonString.Index.WON));
                this.mTcashText.setText(String.valueOf(this.mItemPurchaseItemInfo.itemTCash - SingletonCounter.getInstance().getmTCashUse()) + " P");
                if (SingletonCounter.getInstance().getmOCBUse() == 0) {
                    this.mOCBBtn.setBackgroundDrawable(this.mInactiveDrawables);
                    this.mOCBBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mOCBBtn.setClickable(false);
                    this.mOCBBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmDotoriUse() == 0) {
                    this.mDotoriBtn.setBackgroundDrawable(this.mInactiveDotoriDrawables);
                    this.mDotoriBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mDotoriBtn.setClickable(false);
                    this.mDotoriBtn.setPadding(0, 0, 0, 0);
                }
                if (SingletonCounter.getInstance().getmCultureUse() == 0) {
                    this.mCultureBtn.setBackgroundDrawable(this.mInactiveCultureDrawables);
                    this.mCultureBtn.setTextColor(Color.parseColor("#8B8B8B"));
                    this.mCultureBtn.setClickable(false);
                    this.mCultureBtn.setPadding(0, 0, 0, 0);
                }
            }
        }
        SingletonCounter.getInstance().setmPaymentTotal(SingletonCounter.getInstance().getmOCBUse() + SingletonCounter.getInstance().getmDotoriUse() + SingletonCounter.getInstance().getmCultureUse() + SingletonCounter.getInstance().getmTCashUse());
        this.m_discountTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPaymentTotal()) + CommonString.getString(CommonString.Index.WON));
        if (SingletonCounter.getInstance().getmPaymentTotal() == SingletonCounter.getInstance().getmTotalBalance() && IAPLib.getLimitExcess()) {
            this.mOkBtn.setBackgroundDrawable(this.mOkDrawbles);
            this.mFlag = false;
            this.mOkBtn.setOnClickListener(this.okBtn);
        } else if (SingletonCounter.getInstance().getmPaymentTotal() < SingletonCounter.getInstance().getmTotalBalance() && IAPLib.getLimitExcess()) {
            this.mOkBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
            this.mFlag = true;
            this.mOkBtn.setOnClickListener(null);
        }
    }

    public void del_payments_amount(String kind) {
        CommonF.LOGGER.i(TAG, "del_payments_amount: " + kind);
        if (kind.equals("OCB")) {
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmOCBUse());
            SingletonCounter.getInstance().setmOCBUse(0);
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            this.mOCBText.setText(String.valueOf(IAPLib.getOCBPoint()) + " P");
            if (this.mItemPurchaseItemInfo.dotoriBalance != 0) {
                this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
                this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mDotoriBtn.setClickable(true);
                this.mDotoriBtn.setPadding(0, 0, 0, 0);
            }
            if (!IAPLib.getCultureLandCashPoint().equals(InAppError.SUCCESS)) {
                this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
                this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mCultureBtn.setClickable(true);
                this.mCultureBtn.setPadding(0, 0, 0, 0);
            }
            if (this.mItemPurchaseItemInfo.itemTCash > 0) {
                this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
                this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mTcashBtn.setClickable(true);
                this.mTcashBtn.setPadding(0, 0, 0, 0);
            }
        } else if (kind.equals("DOTORI")) {
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmDotoriUse());
            SingletonCounter.getInstance().setmDotoriUse(0);
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            int dotoriNum = this.mItemPurchaseItemInfo.dotoriBalance / 100;
            this.mDotoriText.setText(String.valueOf(dotoriNum) + CommonString.getString(CommonString.Index.DOTORI_COUNT));
            this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
            this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
            this.mOCBBtn.setClickable(true);
            this.mOCBBtn.setPadding(0, 0, 0, 0);
            if (!IAPLib.getCultureLandCashPoint().equals(InAppError.SUCCESS)) {
                this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
                this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mCultureBtn.setClickable(true);
                this.mCultureBtn.setPadding(0, 0, 0, 0);
            }
            if (this.mItemPurchaseItemInfo.itemTCash > 0) {
                this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
                this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mTcashBtn.setClickable(true);
                this.mTcashBtn.setPadding(0, 0, 0, 0);
            }
        } else if (kind.equals("CULTURE")) {
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmCultureUse());
            SingletonCounter.getInstance().setmCultureUse(0);
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            this.mCultureText.setText(String.valueOf(IAPLib.getCultureLandCashPoint()) + CommonString.getString(CommonString.Index.WON));
            this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
            this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
            this.mOCBBtn.setClickable(true);
            this.mOCBBtn.setPadding(0, 0, 0, 0);
            if (this.mItemPurchaseItemInfo.dotoriBalance != 0) {
                this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
                this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mDotoriBtn.setClickable(true);
                this.mDotoriBtn.setPadding(0, 0, 0, 0);
            }
            if (this.mItemPurchaseItemInfo.itemTCash > 0) {
                this.mTcashBtn.setBackgroundDrawable(this.mActiveTcashDrawables);
                this.mTcashBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mTcashBtn.setClickable(true);
                this.mTcashBtn.setPadding(0, 0, 0, 0);
            }
        } else if (kind.equals("TCASH")) {
            SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmPostPay() + SingletonCounter.getInstance().getmTCashUse());
            SingletonCounter.getInstance().setmTCashUse(0);
            this.m_AccountPriceTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPostPay()) + CommonString.getString(CommonString.Index.WON));
            this.mTcashText.setText(String.valueOf(this.mItemPurchaseItemInfo.itemTCash) + " P");
            this.mOCBBtn.setBackgroundDrawable(this.mActiveDrawables);
            this.mOCBBtn.setTextColor(Color.parseColor("#CFCFCF"));
            this.mOCBBtn.setClickable(true);
            this.mOCBBtn.setPadding(0, 0, 0, 0);
            if (this.mItemPurchaseItemInfo.dotoriBalance != 0) {
                this.mDotoriBtn.setBackgroundDrawable(this.mActiveDotoriDrawables);
                this.mDotoriBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mDotoriBtn.setClickable(true);
                this.mDotoriBtn.setPadding(0, 0, 0, 0);
            }
            if (!IAPLib.getCultureLandCashPoint().equals(InAppError.SUCCESS)) {
                this.mCultureBtn.setBackgroundDrawable(this.mActiveCultureDrawables);
                this.mCultureBtn.setTextColor(Color.parseColor("#CFCFCF"));
                this.mCultureBtn.setClickable(true);
                this.mCultureBtn.setPadding(0, 0, 0, 0);
            }
        }
        SingletonCounter.getInstance().setmPaymentTotal(SingletonCounter.getInstance().getmOCBUse() + SingletonCounter.getInstance().getmDotoriUse() + SingletonCounter.getInstance().getmCultureUse() + SingletonCounter.getInstance().getmTCashUse());
        this.m_discountTextView.setText(String.valueOf(SingletonCounter.getInstance().getmPaymentTotal()) + CommonString.getString(CommonString.Index.WON));
        if (SingletonCounter.getInstance().getmPaymentTotal() == SingletonCounter.getInstance().getmTotalBalance() && IAPLib.getLimitExcess()) {
            this.mOkBtn.setBackgroundDrawable(this.mOkDrawbles);
            this.mFlag = false;
            this.mOkBtn.setOnClickListener(this.okBtn);
        } else if (SingletonCounter.getInstance().getmPaymentTotal() < SingletonCounter.getInstance().getmTotalBalance() && IAPLib.getLimitExcess()) {
            this.mOkBtn.setBackgroundDrawable(this.mLiminExcessDrawables);
            this.mFlag = true;
            this.mOkBtn.setOnClickListener(null);
        }
    }

    public class filterAlphaNum implements InputFilter {
        public filterAlphaNum() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            Pattern ps = Pattern.compile("^[a-zA-Z0-9]*$");
            if (source == null || ps.matcher(source).matches()) {
                return null;
            }
            return GameView.CHARACTER_AI;
        }
    }
}
