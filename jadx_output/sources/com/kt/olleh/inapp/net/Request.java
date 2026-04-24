package com.kt.olleh.inapp.net;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
public class Request {
    private static final String ADDINFO = "add_info";
    private static final String APP_ID = "app_id";
    private static final String APP_VER = "oscv";
    private static final String BRAND_ID = "brand_id";
    private static final String CHANNEL = "channel";
    private static final String CHARGE_YN = "charge_yn";
    private static final String CID = "cid";
    private static final String CNAME = "c_name";
    private static final String COMMAND = "c";
    private static final String CONTENT = "content";
    private static final String CONTENTS_TYPE = "contents_type";
    private static final String C_ID = "c_id";
    private static final String DEGREE = "degree";
    private static final String DEVICE_NUMBER = "dn";
    private static final String DEVICE_TYPE = "dt";
    private static final String EMAIL = "email";
    private static final String EVENTKEY = "eventKey";
    private static final String F_ID = "f_id";
    private static final String F_TYPE = "f_type";
    public static final String GETSYMKEYGEN = "getSymKeyGen";
    private static final String ID = "id";
    private static final String JUMIN_NUM = "jumin";
    private static final String KEYWORD = "keyword";
    private static final String LCDSIZE = "lcd";
    private static final String MAIN_YN = "main_yn";
    private static final String ME2_ID = "me2_id";
    private static final String ME2_KEY = "me2_key";
    private static final String MODEL = "model";
    private static final String MY_ONE_CODE = "code_id";
    private static final String MY_ONE_DEVICE_INFO = "device_info";
    private static final String MY_ONE_PNO = "pno";
    private static final String MY_ONE_QNA_TITLE = "qna_title";
    private static final String NEW_PWD = "new_pwd";
    private static final String NOTICE_ID = "notice_id";
    private static final String N_ID = "n_id";
    private static final String OFF_SET = "off_set";
    private static final String PARENT_ID = "parent_id";
    private static final String PAY_KEY = "pay_key";
    private static final String PAY_TYPE = "pay_type";
    private static final String PG = "pg";
    private static final String PG_SIZE = "pg_size";
    private static final String PHONENO = "phone";
    private static final String PWD = "pwd";
    private static final String P_ID = "p_id";
    private static final String P_TYPE = "p_type";
    private static final String QNA_CONTENT = "qna_content";
    private static final String QNA_ID = "qna_id";
    private static final String QNA_TYPE = "qna_type";
    private static final String REPLY_ID = "reply_id";
    private static final String REPORT_CONTENT = "report_content";
    private static final String REPORT_TYPE = "report_type";
    private static final String REQUIRY_ID = "requiry_id";
    private static final String REQ_TIME = "rt";
    private static final String SELLER_ID = "seller_id";
    private static final String STARSCORE = "starscore";
    private static final String TRAND_ID = "trand_id";
    private static final String TW_ID = "tw_id";
    private static final String TW_PW = "tw_pw";
    private static final String TYPE = "type";
    private static String mAppVer;
    private static String mChannel;
    private static int mCommand;
    private static String mDeviceNumber;
    private static String mDeviceType;
    private static String mLCDSize;
    private static String mMainUrl;
    private static String mModel;
    private static String mPageUrl;
    private static String mPhoneNo;
    private static List<NameValuePair> params;
    private static String streamData;

    public static void init(String mainUrl, String pageUrl, String phoneNo, String deviceNumber, String deviceType, String model, String lcd, String appVer, String channel) {
        mMainUrl = mainUrl;
        mPageUrl = pageUrl;
        mPhoneNo = phoneNo;
        mDeviceNumber = deviceNumber;
        mDeviceType = deviceType;
        mModel = model;
        mLCDSize = lcd;
        mAppVer = appVer;
        mChannel = channel;
    }

    public static void setMainURL(String mainUrl) {
        mMainUrl = mainUrl;
    }

    public static void setDeviceID(String id) {
        mDeviceNumber = id;
    }

    protected static StringBuffer toURL(int command) {
        mCommand = command;
        StringBuffer str = new StringBuffer();
        str.append(getMainURL());
        str.append(getPageUrl());
        params = new ArrayList();
        params.add(new BasicNameValuePair(COMMAND, String.valueOf(command)));
        params.add(new BasicNameValuePair(PHONENO, mPhoneNo));
        params.add(new BasicNameValuePair(DEVICE_NUMBER, mDeviceNumber));
        params.add(new BasicNameValuePair(DEVICE_TYPE, mDeviceType));
        params.add(new BasicNameValuePair(MODEL, mModel));
        params.add(new BasicNameValuePair(LCDSIZE, mLCDSize));
        params.add(new BasicNameValuePair(APP_VER, mAppVer));
        params.add(new BasicNameValuePair(CHANNEL, mChannel));
        return str;
    }

    public static String getMainURL() {
        return mMainUrl;
    }

    private static String getPageUrl() {
        return mPageUrl;
    }

    protected static int getCommand() {
        return mCommand;
    }

    public static List<NameValuePair> getParams() {
        return params;
    }

    public static void clearParams() {
        params.clear();
        params = null;
    }

    public static void setData(String data) {
        streamData = data;
    }

    public static String getData() {
        return streamData;
    }

    public static String request(int command) {
        return toURL(command).toString();
    }

    public static String requestContSearch(int command, int page, int pagesize, String n_id, String keyword) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(KEYWORD, keyword));
        return toString(str.toString());
    }

    public static String requestContAllSearch(int command, int page, int pagesize, String keyword) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(KEYWORD, keyword));
        return toString(str.toString());
    }

    public static String requestList(int command, int page, int pagesize, String p_type, String p_id, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestEventDetail(int command, int page, int pagesize, String p_type, String p_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        return toString(str.toString());
    }

    public static String requestList(int command, int page, int pagesize) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        return toString(str.toString());
    }

    public static String requestBrandList(int command, int page, int pagesize, String main_yn, String brand_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(MAIN_YN, main_yn));
        params.add(new BasicNameValuePair(BRAND_ID, brand_id));
        return toString(str.toString());
    }

    public static String requestBrandCategory(int command, String brand_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(BRAND_ID, brand_id));
        return toString(str.toString());
    }

    public static String requestNIDList(int command, int page, int pagesize, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestList(int command, int page, int pagesize, String main_yn, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(MAIN_YN, main_yn));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestBestList(int command, int page, int pagesize, String main_yn, String n_id, String charge_yn) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(MAIN_YN, main_yn));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(CHARGE_YN, charge_yn));
        return toString(str.toString());
    }

    public static String requestMusicList(int command, int page, int pagesize, String main_yn, String n_id, String contents_type) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(MAIN_YN, main_yn));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(CONTENTS_TYPE, contents_type));
        return toString(str.toString());
    }

    public static String requestCategory(int command, String parent_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PARENT_ID, parent_id));
        return toString(str.toString());
    }

    public static String requestDetail(int command, String p_type, String p_id, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestDetail(int command, String p_type, String p_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        return toString(str.toString());
    }

    public static String requestStarScore(int command, String p_type, String p_id, String n_id, String seller_id, int starscore) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(SELLER_ID, seller_id));
        params.add(new BasicNameValuePair(STARSCORE, String.valueOf(starscore)));
        return toString(str.toString());
    }

    public static String requestReplyList(int command, int page, int pagesize, String p_type, String p_id, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestReplyRegister(int command, String p_type, String p_id, String n_id, String content, String me2_id, String me2_key, String tw_id, String tw_pw) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(CONTENT, content));
        if (me2_id != null) {
            params.add(new BasicNameValuePair(ME2_ID, me2_id));
            params.add(new BasicNameValuePair(ME2_KEY, me2_key));
        }
        if (tw_id != null) {
            params.add(new BasicNameValuePair(TW_ID, tw_id));
            params.add(new BasicNameValuePair(TW_PW, tw_pw));
        }
        return toString(str.toString());
    }

    public static String requestSellerList(int command, int page, int pagesize, String n_id, String seller_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(SELLER_ID, seller_id));
        return toString(str.toString());
    }

    public static String requestInquirySeller(int command, String qnaType, String qna_content, String email, String p_type, String p_id, String n_id, String Seller_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(QNA_TYPE, qnaType));
        params.add(new BasicNameValuePair(QNA_CONTENT, qna_content));
        params.add(new BasicNameValuePair(EMAIL, email));
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(SELLER_ID, Seller_id));
        return toString(str.toString());
    }

    public static String requestBuy(int command, String p_type, String p_id, String n_id, String f_type, int payType, String payKey) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(F_TYPE, f_type));
        if (payType != -1) {
            params.add(new BasicNameValuePair(PAY_TYPE, String.valueOf(payType)));
            params.add(new BasicNameValuePair(PAY_KEY, payKey));
        }
        return toString(str.toString());
    }

    public static String requestContentRecommand(int command, String p_type, String p_id, String n_id, String c_name, String add_Info, String me2_id, String me2_key, String tw_id, String tw_pw) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(CNAME, c_name));
        params.add(new BasicNameValuePair(ADDINFO, add_Info));
        params.add(new BasicNameValuePair(ME2_ID, me2_id));
        params.add(new BasicNameValuePair(ME2_KEY, me2_key));
        params.add(new BasicNameValuePair(TW_ID, tw_id));
        params.add(new BasicNameValuePair(TW_PW, tw_pw));
        return toString(str.toString());
    }

    public static String requestStreaming(int command, String p_type, String p_id, String c_id, String n_id, String f_type) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, p_type));
        params.add(new BasicNameValuePair(P_ID, p_id));
        params.add(new BasicNameValuePair(C_ID, c_id));
        params.add(new BasicNameValuePair(N_ID, n_id));
        params.add(new BasicNameValuePair(F_TYPE, f_type));
        return toString(str.toString());
    }

    public static String requestBeingSave(int command, String c_id, String off_set) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(C_ID, c_id));
        params.add(new BasicNameValuePair(OFF_SET, off_set));
        return toString(str.toString());
    }

    public static String requestAnroidManifest(int command, String c_id, String f_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(C_ID, c_id));
        params.add(new BasicNameValuePair(F_ID, f_id));
        return toString(str.toString());
    }

    public static String requestMyBuyList(int command, int page, int pagesize, String n_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, Integer.toString(page)));
        params.add(new BasicNameValuePair(PG_SIZE, Integer.toString(pagesize)));
        params.add(new BasicNameValuePair(N_ID, n_id));
        return toString(str.toString());
    }

    public static String requestMySellerDetail(int command, int requiry_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(REQUIRY_ID, String.valueOf(requiry_id)));
        return toString(str.toString());
    }

    public static String requestMyReplyDel(int command, String Reply_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(REPLY_ID, Reply_id));
        return toString(str.toString());
    }

    public static String requestMyReplyEvaluation(int command, int Requiry_id, int degree) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(REQUIRY_ID, String.valueOf(Requiry_id)));
        params.add(new BasicNameValuePair(DEGREE, String.valueOf(degree)));
        return toString(str.toString());
    }

    public static String requestMyOneInquiryReg(int command, String codeId, String qnaTitle, String qnaContent, String email, String pno, String deviceInfo) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(MY_ONE_CODE, codeId));
        params.add(new BasicNameValuePair(MY_ONE_QNA_TITLE, qnaTitle));
        params.add(new BasicNameValuePair(QNA_CONTENT, qnaContent));
        params.add(new BasicNameValuePair(EMAIL, email));
        params.add(new BasicNameValuePair(MY_ONE_PNO, pno));
        params.add(new BasicNameValuePair(MY_ONE_DEVICE_INFO, deviceInfo));
        return toString(str.toString());
    }

    public static String requestMyOneQuestionDetail(int command, int qna_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(QNA_ID, String.valueOf(qna_id)));
        return toString(str.toString());
    }

    public static String requestNotice(int command, String notice_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(NOTICE_ID, notice_id));
        return toString(str.toString());
    }

    public static String requestAppRecentVersionList(int command, int page, int pagesize) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PG, String.valueOf(page)));
        params.add(new BasicNameValuePair(PG_SIZE, String.valueOf(pagesize)));
        return toString(str.toString());
    }

    public static String requestAppRecentVersion(int command, String appId) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair("app_id", appId));
        return toString(str.toString());
    }

    public static String requestBuyPwd(int command, String buy_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PWD, buy_pwd));
        return toString(str.toString());
    }

    public static String requestBuyPwdInit(int command, String type, String buy_pwd, String new_buy_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(TYPE, type));
        params.add(new BasicNameValuePair(PWD, buy_pwd));
        params.add(new BasicNameValuePair(NEW_PWD, new_buy_pwd));
        return toString(str.toString());
    }

    public static String requestAdultPwd(int command, String adult_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PWD, adult_pwd));
        return toString(str.toString());
    }

    public static String requestAdultPwdInit(int command, String type, String adult_pwd, String new_adult_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(PWD, adult_pwd));
        params.add(new BasicNameValuePair(NEW_PWD, new_adult_pwd));
        return toString(str.toString());
    }

    public static String requestSnsPwd(int command, String type, String user_sns_id, String user_sns_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(TYPE, type));
        params.add(new BasicNameValuePair(ID, user_sns_id));
        params.add(new BasicNameValuePair(PWD, user_sns_pwd));
        return toString(str.toString());
    }

    public static String requestJuminNum(int command, String adult_pwd) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(JUMIN_NUM, adult_pwd));
        return toString(str.toString());
    }

    public static String requestTrandDetail(int command, String pType, String trand_id) {
        StringBuffer str = toURL(command);
        params.add(new BasicNameValuePair(P_TYPE, pType));
        params.add(new BasicNameValuePair(TRAND_ID, trand_id));
        return toString(str.toString());
    }

    public static String requestContentInfo(int command, String cid, String appid) {
        StringBuffer str = toURL(command);
        if (cid != null) {
            params.add(new BasicNameValuePair(C_ID, cid));
        }
        if (appid != null) {
            params.add(new BasicNameValuePair("app_id", appid));
        }
        return toString(str.toString());
    }

    private static String toString(String str) {
        return str.replaceAll(" ", "%20");
    }
}
