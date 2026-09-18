package com.findit.battle.utils;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

public class FileUtils {
    public static void copyDb() {
        FileInputStream is = null;
        FileOutputStream os = null;
        FileChannel src = null;
        FileChannel dst = null;
        try {
            File data = Environment.getDataDirectory();
            File sd = Environment.getExternalStorageDirectory();
            if (!sd.canWrite()) {
                return;
            }
            File currentDB = new File(data, "//data//com.findit.battle//databases//FinditData");
            File backupDB = new File(sd, "FinditData.db");
            is = new FileInputStream(currentDB);
            os = new FileOutputStream(backupDB);
            src = is.getChannel();
            dst = os.getChannel();
            dst.transferFrom(src, 0L, src.size());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeQuietly(is);
            closeQuietly(os);
            closeQuietly(src);
            closeQuietly(dst);
        }
    }

    private static void closeQuietly(AutoCloseable c) {
        if (c == null) return;
        try {
            c.close();
        } catch (Exception ignored) {
        }
    }
}
