package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class SellerInfoConfirm extends MsgConfirm {
    static final String TAG = "SellerInfoConfirm";
    private String mCompanyName;
    private String mSeller;
    private String mSellerEmail;
    private String mSellerName;
    private String mSellerPhoneNumber = null;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        try {
            CommonF.LOGGER.i(TAG, "SellerInfoConfirm result code : " + ((int) getResultCode()));
            byte[] _tempSeller = new byte[8];
            System.arraycopy(v, offset, _tempSeller, 0, 8);
            this.mSeller = new String(_tempSeller, "MS949").trim();
            int offset2 = offset + 8;
            CommonF.LOGGER.i(TAG, "mSeller: " + this.mSeller);
            int _nameLen = v[offset2] & 255;
            CommonF.LOGGER.i(TAG, "mSellerName[offset]: " + ((int) v[offset2]));
            int offset3 = offset2 + 1;
            byte[] _tempName = new byte[_nameLen];
            System.arraycopy(v, offset3, _tempName, 0, _tempName.length);
            this.mSellerName = new String(_tempName, "MS949").trim();
            int offset4 = offset3 + _tempName.length;
            CommonF.LOGGER.i(TAG, "mSellerName: " + this.mSellerName);
            int _emailLen = v[offset4] & 255;
            CommonF.LOGGER.i(TAG, "_emailLen[offset]: " + ((int) v[offset4]));
            int offset5 = offset4 + 1;
            byte[] _tempEmail = new byte[_emailLen];
            System.arraycopy(v, offset5, _tempEmail, 0, _tempEmail.length);
            this.mSellerEmail = new String(_tempEmail, "MS949").trim();
            int offset6 = offset5 + _tempEmail.length;
            CommonF.LOGGER.i(TAG, "mSellerEmail: " + this.mSellerEmail);
            int _companyName = v[offset6] & 255;
            CommonF.LOGGER.i(TAG, "_companyName[offset]: " + ((int) v[offset6]));
            int offset7 = offset6 + 1;
            byte[] _tempCompanyName = new byte[_companyName];
            System.arraycopy(v, offset7, _tempCompanyName, 0, _tempCompanyName.length);
            this.mCompanyName = new String(_tempCompanyName, "MS949").trim();
            int offset8 = offset7 + _tempCompanyName.length;
            CommonF.LOGGER.i(TAG, "mCompanyName: " + this.mCompanyName);
            int _sellerPhoneNumber = v[offset8] & 255;
            CommonF.LOGGER.i(TAG, "_sellerPhoneNumber[offset]: " + ((int) v[offset8]));
            int offset9 = offset8 + 1;
            byte[] _tempPhoneNumber = new byte[_sellerPhoneNumber];
            System.arraycopy(v, offset9, _tempPhoneNumber, 0, _tempPhoneNumber.length);
            this.mSellerPhoneNumber = new String(_tempPhoneNumber, "MS949").trim();
            int length = offset9 + _tempPhoneNumber.length;
            CommonF.LOGGER.i(TAG, "mSellerPhoneNumber: " + this.mSellerPhoneNumber);
        } catch (Exception e) {
            CommonF.LOGGER.e(TAG, "[SellerInfoConfirm] :" + e.toString());
            setResultCode((byte) -10);
        }
    }

    public String getmSeller() {
        return this.mSeller;
    }

    public String getmSellerName() {
        return this.mSellerName;
    }

    public String getmSellerEmail() {
        return this.mSellerEmail;
    }

    public String getmCompanyName() {
        return this.mCompanyName;
    }

    public String getmSellerPhoneNumber() {
        return this.mSellerPhoneNumber;
    }
}
