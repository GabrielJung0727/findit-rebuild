package com.findit.battle.finals;

import android.util.Log;
import com.findit.battle.GameView;

/* JADX INFO: loaded from: classes.dex */
public class LOG {
    private static final String LOG_TAG_NAME = "FindItBattle";

    public static void verbose(String strMsg) {
        if (!isLogMode()) {
            Log.v(LOG_TAG_NAME, String.valueOf(getClassNameAndLineNumber()) + strMsg);
        }
    }

    public static void verboseFromObjectsClass(String strMsg) {
    }

    public static void verboseLoop(String strMsg) {
    }

    public static void info(String strMsg) {
        if (!isLogMode()) {
            Log.i(LOG_TAG_NAME, String.valueOf(getClassNameAndLineNumber()) + strMsg);
        }
    }

    public static void debug(String strMsg) {
        if (!isLogMode()) {
            Log.d(LOG_TAG_NAME, String.valueOf(getClassNameAndLineNumber()) + strMsg);
        }
    }

    public static void myloga(Object oclass, String strMsg) {
        if (!isLogMode()) {
            Log.w(LOG_TAG_NAME, String.valueOf(getClassNameAndLineNumber()) + strMsg);
        }
    }

    public static void error(String strMsg) {
        if (!isLogMode()) {
            Log.e(LOG_TAG_NAME, String.valueOf(getClassNameAndLineNumber()) + strMsg);
        }
    }

    private static boolean isLogMode() {
        return true;
    }

    private static String getClassNameAndLineNumber() {
        Thread objThread = Thread.currentThread();
        String strThreadName = objThread.getName();
        String strFileName = objThread.getStackTrace()[4].getFileName();
        int nLineNumber = objThread.getStackTrace()[4].getLineNumber();
        if (strFileName != null && strFileName.contains(".java")) {
            strFileName = strFileName.replace(".java", GameView.CHARACTER_AI);
        }
        return String.valueOf(strThreadName) + ":" + strFileName + "[" + nLineNumber + "] ";
    }
}
