package com.kt.olleh.inapp.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.kt.olleh.inapp.net.InAppError;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Util {
    static String INSTALL = "com.kt.olleh.istore";
    static String PRELOAD = "com.kt.olleh.storefront";
    static String DEFAULT_APP_VERSION = "01.00.00";

    public static void addString(StringBuffer str, String title, String value) {
        str.append(title);
        str.append(":");
        str.append(value);
        str.append("\n");
    }

    public static void addString(StringBuffer str, String title, int value) {
        str.append(title);
        str.append(":");
        str.append(value);
        str.append("\n");
    }

    public static void addString(StringBuffer str, String title, boolean value) {
        str.append(title);
        str.append(":");
        str.append(value);
        str.append("\n");
    }

    public static void addString(StringBuffer str, String title, float value) {
        str.append(title);
        str.append(":");
        str.append(value);
        str.append("\n");
    }

    public static void addUrlString(StringBuffer str, String title, String value, boolean next) {
        str.append(title);
        str.append("=");
        str.append(value);
        if (next) {
            str.append(Objects.Animation.DEVIDER_SUB);
        }
    }

    public static int checkMarket(Context context) {
        PackageManager manager = context.getPackageManager();
        List<ApplicationInfo> apps = manager.getInstalledApplications(512);
        if (apps != null) {
            int count = apps.size();
            for (int i = 0; i < count; i++) {
                ApplicationInfo info = apps.get(i);
                if (INSTALL.equals(info.packageName)) {
                    return 1;
                }
                if (PRELOAD.equals(info.packageName)) {
                    return 2;
                }
            }
        }
        return -1;
    }

    public static String appVersion(Context context) {
        String packageName;
        try {
            PackageManager pm = context.getPackageManager();
            int packageType = checkMarket(context);
            if (packageType == 1) {
                packageName = INSTALL;
            } else if (packageType == 2) {
                packageName = PRELOAD;
            } else {
                return "unknown";
            }
            PackageInfo packageInfo = pm.getPackageInfo(packageName, 0);
            return appVersion(packageInfo.versionName);
        } catch (Exception e) {
            return DEFAULT_APP_VERSION;
        }
    }

    public static String appVersion(String versionName) {
        try {
            String versionName2 = versionName.trim();
            if (versionName2 == null || GameView.CHARACTER_AI.equals(versionName2)) {
                String versionName3 = DEFAULT_APP_VERSION;
                return versionName3;
            }
            String[] split = versionName2.split("[.]+");
            int size = split.length <= 3 ? split.length : 3;
            String versionName4 = GameView.CHARACTER_AI;
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    versionName4 = String.valueOf(versionName4) + ".";
                }
                String tmp = split[i].trim();
                if (tmp.length() < 2) {
                    versionName4 = String.valueOf(versionName4) + InAppError.SUCCESS + tmp;
                } else {
                    versionName4 = String.valueOf(versionName4) + tmp;
                }
            }
            switch (size) {
                case 1:
                    return String.valueOf(versionName4) + ".00.00";
                case 2:
                    return String.valueOf(versionName4) + ".00";
                default:
                    return versionName4;
            }
        } catch (Exception e) {
            e.printStackTrace();
            String versionName5 = DEFAULT_APP_VERSION;
            return versionName5;
        }
    }
}
