package com.kt.olleh.inapp.crypt;

import com.findit.battle.GameView;
import com.findit.battle.Objects;
import java.lang.reflect.Method;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class AESCrypt {
    private static final String AESTYPE = "AES/ECB/PKCS5Padding";

    public static String encrypt(String keyStr, String value) throws Exception {
        if (keyStr == null || GameView.CHARACTER_AI.equals(keyStr)) {
            throw new NullPointerException("The key can not be null or an empty string..");
        }
        if (value == null || GameView.CHARACTER_AI.equals(value)) {
            throw new NullPointerException("The cipher string can not be null or an empty string.");
        }
        Cipher cipher = Cipher.getInstance(AESTYPE);
        cipher.init(1, generateKey(keyStr));
        byte[] encrypt = cipher.doFinal(value.getBytes());
        return new String(encodeBase64(encrypt));
    }

    public static String decrypt(String keyStr, String value) throws Exception {
        if (keyStr == null || GameView.CHARACTER_AI.equals(keyStr)) {
            throw new NullPointerException("The key can not be null or an empty string..");
        }
        if (value == null || GameView.CHARACTER_AI.equals(value)) {
            throw new NullPointerException("The cipher string can not be null or an empty string.");
        }
        String value2 = value.replaceAll("[$]", Objects.Animation.DEVIDER_DATA);
        Cipher cipher = Cipher.getInstance(AESTYPE);
        cipher.init(2, generateKey(keyStr));
        byte[] decrypt = cipher.doFinal(decodeBase64(value2.getBytes()));
        return new String(decrypt).trim();
    }

    private static Key generateKey(String key) throws Exception {
        SecretKeySpec keySpec = new SecretKeySpec(key.getBytes(), "AES");
        return keySpec;
    }

    public static byte[] encodeBase64(byte[] binaryData) {
        byte[] buf = (byte[]) null;
        try {
            Class<?> Base64 = Class.forName("org.apache.commons.codec.binary.Base64");
            Method encodeBase64 = Base64.getMethod("encodeBase64", byte[].class);
            byte[] buf2 = (byte[]) encodeBase64.invoke(Base64, binaryData);
            return buf2;
        } catch (Exception e) {
            return buf;
        }
    }

    public static byte[] decodeBase64(byte[] base64Data) {
        byte[] buf = (byte[]) null;
        try {
            Class<?> Base64 = Class.forName("org.apache.commons.codec.binary.Base64");
            Method decodeBase64 = Base64.getMethod("decodeBase64", byte[].class);
            byte[] buf2 = (byte[]) decodeBase64.invoke(Base64, base64Data);
            return buf2;
        } catch (Exception e) {
            return buf;
        }
    }
}
