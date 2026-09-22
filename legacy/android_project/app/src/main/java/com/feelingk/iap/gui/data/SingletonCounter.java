package com.feelingk.iap.gui.data;

/* JADX INFO: loaded from: classes.dex */
public class SingletonCounter {
    private static SingletonCounter singleton = null;
    private int mTotalBalance = 0;
    private int mPostPay = 0;
    private int mPaymentTotal = 0;
    private int mOCBUse = 0;
    private int mDotoriUse = 0;
    private int mCultureUse = 0;
    private int mTCashUse = 0;
    private boolean mOCBBtnFlag = false;
    private boolean mDotoriBtnFlag = false;
    private boolean mCultureBtnFlag = false;
    private boolean mTCashUseFlag = false;

    private SingletonCounter() {
    }

    public static SingletonCounter getInstance() {
        if (singleton == null) {
            singleton = new SingletonCounter();
        }
        return singleton;
    }

    public void clear() {
        this.mTotalBalance = 0;
        this.mPostPay = 0;
        this.mPaymentTotal = 0;
        this.mOCBUse = 0;
        this.mDotoriUse = 0;
        this.mCultureUse = 0;
        this.mTCashUse = 0;
        this.mOCBBtnFlag = false;
        this.mDotoriBtnFlag = false;
        this.mCultureBtnFlag = false;
        this.mTCashUseFlag = false;
    }

    public int getmTotalBalance() {
        return this.mTotalBalance;
    }

    public void setmTotalBalance(int mTotalBalance) {
        this.mTotalBalance = mTotalBalance;
    }

    public int getmPostPay() {
        return this.mPostPay;
    }

    public void setmPostPay(int mPostPay) {
        this.mPostPay = mPostPay;
    }

    public int getmPaymentTotal() {
        return this.mPaymentTotal;
    }

    public void setmPaymentTotal(int mPaymentTotal) {
        this.mPaymentTotal = mPaymentTotal;
    }

    public int getmOCBUse() {
        return this.mOCBUse;
    }

    public void setmOCBUse(int mOCBUse) {
        this.mOCBUse = mOCBUse;
    }

    public int getmDotoriUse() {
        return this.mDotoriUse;
    }

    public void setmDotoriUse(int mDotoriUse) {
        this.mDotoriUse = mDotoriUse;
    }

    public int getmCultureUse() {
        return this.mCultureUse;
    }

    public void setmCultureUse(int mCultureUse) {
        this.mCultureUse = mCultureUse;
    }

    public int getmTCashUse() {
        return this.mTCashUse;
    }

    public void setmTCashUse(int mTCashUse) {
        this.mTCashUse = mTCashUse;
    }

    public boolean ismOCBBtnFlag() {
        return this.mOCBBtnFlag;
    }

    public void setmOCBBtnFlag(boolean mOCBBtnFlag) {
        this.mOCBBtnFlag = mOCBBtnFlag;
    }

    public boolean ismDotoriBtnFlag() {
        return this.mDotoriBtnFlag;
    }

    public void setmDotoriBtnFlag(boolean mDotoriBtnFlag) {
        this.mDotoriBtnFlag = mDotoriBtnFlag;
    }

    public boolean ismCultureBtnFlag() {
        return this.mCultureBtnFlag;
    }

    public void setmCultureBtnFlag(boolean mCultureBtnFlag) {
        this.mCultureBtnFlag = mCultureBtnFlag;
    }

    public boolean ismTCashUseFlag() {
        return this.mTCashUseFlag;
    }

    public void setmTCashUseFlag(boolean mTCashUseFlag) {
        this.mTCashUseFlag = mTCashUseFlag;
    }
}
