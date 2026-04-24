package com.kt.olleh.inapp;

import android.util.Log;
import com.kt.olleh.inapp.Config.Config;
import com.sec.android.iap.sample.helper.SamsungIapHelper;

/* JADX INFO: loaded from: classes.dex */
public class InAppSettings {
    static String Authen = null;
    static String UserInfo = null;
    static userInfo UserInfo2 = null;
    static final String authen_KPAD = "03";
    static final String authen_OllehID = "04";
    static String authen_SP = SamsungIapHelper.ITEM_TYPE_NON_CONSUMABLE;
    static final String authen_ShowID = "03";
    static final String authen_SoIP = "02";
    static final String loginCancelCode = "I002";
    static final String loginCancelMsg = "사용자 요청(로그인)에 의한 취소";
    static final String payInternetPhone = "인터넷전화 결제";
    static final String payMobile = "핸드폰 결제";
    static final String userCancelCode = "I001";
    static final String userCancelMsg = "사용자 요청에 의한 취소";

    InAppSettings() {
        if (UserInfo2 == null) {
            UserInfo2 = new userInfo();
        }
    }

    static String getUserInfo() {
        if (Config.DEBUG) {
            Log.e("#####", "##### get:user_info = " + userInfo.UserInfo);
        }
        return userInfo.UserInfo;
    }

    static void setUserInfo(String value) {
        if (Config.DEBUG) {
            Log.e("#####", "##### set:user_info = " + value);
        }
        userInfo.UserInfo = value;
    }

    static String getAuthen() {
        if (Config.DEBUG) {
            Log.e("#####", "##### get:authen = " + userInfo.Authen);
        }
        return userInfo.Authen;
    }

    static void setAuthen(String value) {
        if (Config.DEBUG) {
            Log.e("#####", "##### set:authen = " + value);
        }
        userInfo.Authen = value;
    }
}
