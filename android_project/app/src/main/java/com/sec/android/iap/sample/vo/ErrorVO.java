package com.sec.android.iap.sample.vo;

import com.findit.battle.GameView;

/* JADX INFO: loaded from: classes.dex */
public class ErrorVO {
    private int mErrorCode = 0;
    private String mErrorString = GameView.CHARACTER_AI;
    private String mExtraString = GameView.CHARACTER_AI;

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public void setErrorCode(int _errorCode) {
        this.mErrorCode = _errorCode;
    }

    public String getErrorString() {
        return this.mErrorString;
    }

    public void setErrorString(String _errorString) {
        this.mErrorString = _errorString;
    }

    public String getExtraString() {
        return this.mExtraString;
    }

    public void setExtraString(String _extraString) {
        this.mExtraString = _extraString;
    }

    public String dump() {
        String dump = "ErrorCode    : " + getErrorCode() + "\nErrorString  : " + getErrorString() + "\nExtraString  : " + getExtraString();
        return dump;
    }
}
