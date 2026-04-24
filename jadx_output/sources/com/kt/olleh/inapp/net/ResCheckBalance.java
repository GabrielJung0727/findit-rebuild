package com.kt.olleh.inapp.net;

import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResCheckBalance extends Response {
    public String mDay_balance = null;
    public String mMonth_balance = null;
    public String mTotal_balance = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mDay_balance = null;
        this.mMonth_balance = null;
        this.mTotal_balance = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.DAY_BALANCE)) {
            this.mDay_balance = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.MONTH_BALANCE)) {
            this.mMonth_balance = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.TOTAL_BALANCE)) {
            return false;
        }
        this.mTotal_balance = getValue(item);
        return true;
    }

    public String getDayBalance() {
        return this.mDay_balance;
    }

    public void setDayBalance(String dayBalance) {
        this.mDay_balance = dayBalance;
    }

    public String getMonthBalance() {
        return this.mMonth_balance;
    }

    public void setMonthBalance(String monthBalance) {
        this.mMonth_balance = monthBalance;
    }

    public String getTotalBalance() {
        return this.mTotal_balance;
    }

    public void setTotalBalance(String TotalBalance) {
        this.mTotal_balance = TotalBalance;
    }
}
