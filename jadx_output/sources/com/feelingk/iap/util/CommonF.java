package com.feelingk.iap.util;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.feelingk.iap.encryption.CryptoManager;
import com.findit.battle.GameView;
import com.sec.android.iap.sample.helper.SamsungIapHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class CommonF {
    static final String TAG = "Util.CommonF";
    static int m_UsimState = 0;
    static long timeDiff = 0;
    public static String mMDN = null;
    public static int mCarrier = 0;

    public static void setMDN(String mdn) {
        mMDN = mdn;
    }

    public static String getMDN(Context context, int CarrierIndex) {
        if (mMDN == null) {
            TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
            if (tm == null) {
                return null;
            }
            String phoneNumber = tm.getLine1Number();
            mMDN = phoneNumber;
            LOGGER.i(TAG, "phoneNumber=" + phoneNumber);
            LOGGER.i(TAG, "mMDN=" + mMDN);
            if (CarrierIndex == 2 || CarrierIndex == 3) {
                mMDN = convertMDN(phoneNumber);
                return mMDN;
            }
            return phoneNumber;
        }
        return mMDN;
    }

    public static String convertMDN(String telNumber) {
        String converMDN = telNumber;
        if (telNumber.startsWith("+82", 0)) {
            converMDN = String.format("0%s", telNumber.substring(3));
        }
        if (telNumber.startsWith("82", 0)) {
            converMDN = String.format("0%s", telNumber.substring(2));
        }
        LOGGER.e(TAG, "converMDN=" + converMDN);
        return converMDN;
    }

    public static String getTID(Context context, String pid) {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        String FixDate = format.format(date);
        String makeTID = String.format("%s_%s", FixDate, pid);
        return makeTID;
    }

    public static void setCarrier(Context context, int comType) {
        if (comType == 1) {
            mCarrier = 1;
        } else if (comType == 2) {
            mCarrier = 2;
        } else if (comType == 3) {
            mCarrier = 3;
        }
    }

    public static int getCarrier(Context context) {
        String strNetworkOperator;
        TelephonyManager systemService = (TelephonyManager) context.getSystemService("phone");
        if (systemService == null || (strNetworkOperator = systemService.getSimOperator()) == null) {
            return 0;
        }
        if (strNetworkOperator.indexOf("05") != -1) {
            return 1;
        }
        if (strNetworkOperator.indexOf(SamsungIapHelper.ITEM_TYPE_SUBSCRIPTION) == -1 && strNetworkOperator.indexOf("04") == -1 && strNetworkOperator.indexOf("08") == -1) {
            return strNetworkOperator.indexOf("06") != -1 ? 3 : 0;
        }
        return 2;
    }

    public static String getModelName(Context context) {
        String modelName = Build.MODEL;
        StringTokenizer st = new StringTokenizer(modelName, " ", false);
        String convertModelName = GameView.CHARACTER_AI;
        while (st.hasMoreElements()) {
            convertModelName = String.valueOf(convertModelName) + st.nextElement();
        }
        LOGGER.i(TAG, "convertModelName: " + convertModelName);
        return convertModelName;
    }

    public static String addLineEndString(String str, int len, String addStr) {
        if (str == null) {
            return GameView.CHARACTER_AI;
        }
        char[] charArray = str.toCharArray();
        StringBuffer returnStr = new StringBuffer(GameView.CHARACTER_AI);
        int byteSize = 0;
        for (int i = 0; i < str.length(); i++) {
            if (charArray[i] < 256) {
                byteSize++;
            } else {
                byteSize += 2;
            }
            if (byteSize >= len) {
                byteSize = 0;
                returnStr.append(charArray[i]).append(addStr);
            } else {
                returnStr.append(charArray[i]);
            }
        }
        String returnString = returnStr.toString();
        if (returnString.endsWith("-")) {
            return returnString.substring(0, returnString.length() - 1);
        }
        return returnString;
    }

    public static long getTimeDifference(String start, String end) {
        Calendar cal01 = Calendar.getInstance();
        Calendar cal02 = Calendar.getInstance();
        cal01.set(Integer.parseInt(start.substring(0, 4)), Integer.parseInt(start.substring(4, 6)), Integer.parseInt(start.substring(6, 8)), Integer.parseInt(start.substring(8, 10)), Integer.parseInt(start.substring(10, 12)), Integer.parseInt(start.substring(12, 14)));
        cal02.set(Integer.parseInt(end.substring(0, 4)), Integer.parseInt(end.substring(4, 6)), Integer.parseInt(end.substring(6, 8)), Integer.parseInt(end.substring(8, 10)), Integer.parseInt(end.substring(10, 12)), Integer.parseInt(end.substring(12, 14)));
        timeDiff = (cal02.getTime().getTime() - cal01.getTime().getTime()) / 1000;
        LOGGER.i(TAG, "timeDiff: " + timeDiff);
        return timeDiff;
    }

    public static String getUAProfileData(int carrier) {
        LOGGER.i(TAG, "carrier: " + carrier);
        String UACD = "0000";
        String strModelName = Build.MODEL;
        LOGGER.i(TAG, "strModelName: " + strModelName);
        if (carrier != 1) {
            LOGGER.i(TAG, "UACD Check : 타사");
            return "0000";
        }
        if (strModelName.indexOf("Nexus S") != -1) {
            return "SSNL";
        }
        if (strModelName.indexOf("Nexus One") != -1) {
            return "HT11";
        }
        if (strModelName.indexOf("Galaxy Nexus") != -1) {
            return "SSO0";
        }
        File in = new File("/system/skt/ua/uafield.dat");
        try {
            FileReader fileRead = new FileReader(in);
            try {
                BufferedReader bufferRead = new BufferedReader(fileRead);
                try {
                    String strUAProfile = bufferRead.readLine().substring(0, 25);
                    LOGGER.i(TAG, "strUAProfile: " + strUAProfile);
                    bufferRead.close();
                    fileRead.close();
                    UACD = strUAProfile.substring(5, 9);
                    LOGGER.i(TAG, "UACD: " + UACD);
                    return UACD;
                } catch (FileNotFoundException e) {
                    e = e;
                    e.printStackTrace();
                    return UACD;
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    return UACD;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    return UACD;
                }
            } catch (FileNotFoundException e4) {
                e = e4;
            } catch (IOException e5) {
                e = e5;
            } catch (Exception e6) {
                e = e6;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        }
    }

    public static String getIMEI(Context context) {
        TelephonyManager m_telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String imei = m_telephonyManager.getDeviceId();
        try {
            String encImei = CryptoManager.encrypt(imei);
            return encImei;
        } catch (Exception e) {
            e.printStackTrace();
            return GameView.CHARACTER_AI;
        }
    }

    public static String getSTRFilter(String str) {
        String[] filter_word = {GameView.CHARACTER_AI, "[%]", "[&]"};
        for (String str2 : filter_word) {
            String str_imsi = str.replaceAll(str2, GameView.CHARACTER_AI);
            str = str_imsi;
        }
        return str;
    }

    public static final class LOGGER {
        public static void i(String tag, String msg) {
            Log.i(tag, msg);
        }

        public static void e(String tag, String msg) {
            Log.e(tag, msg);
        }

        public static void ex(String tag, String msg) {
            Log.w(tag, "Exception : " + msg);
        }
    }
}
