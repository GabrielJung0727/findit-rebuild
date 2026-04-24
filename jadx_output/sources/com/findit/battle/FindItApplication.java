package com.findit.battle;

import android.app.Application;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class FindItApplication extends Application {
    private static int m_nDisplayScreenWidth = 600;
    private static int m_nDisplayScreenHeight = 600;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        DisplayMetrics oDM = new DisplayMetrics();
        ((WindowManager) getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(oDM);
        setDisplayScreenWidth(oDM.widthPixels);
        setDisplayScreenHeight(oDM.heightPixels);
    }

    public static int getDisplayScreenWidth() {
        return m_nDisplayScreenWidth;
    }

    public static int getDisplayScreenHeight() {
        return m_nDisplayScreenHeight;
    }

    private void setDisplayScreenWidth(int nWidth) {
        m_nDisplayScreenWidth = nWidth;
    }

    private void setDisplayScreenHeight(int nHeight) {
        m_nDisplayScreenHeight = nHeight;
    }
}
