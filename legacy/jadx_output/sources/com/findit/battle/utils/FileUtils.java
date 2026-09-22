package com.findit.battle.utils;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public class FileUtils {
    public static void copyDb() throws Throwable {
        FileOutputStream os;
        FileInputStream is = null;
        FileOutputStream os2 = null;
        FileChannel src = null;
        FileChannel dst = null;
        try {
            try {
                File data = Environment.getDataDirectory();
                File sd = Environment.getExternalStorageDirectory();
                if (sd.canWrite()) {
                    File currentDB = new File(data, "//data//com.findit.battle//databases//FinditData");
                    File backupDB = new File(sd, "FinditData.db");
                    FileInputStream is2 = new FileInputStream(currentDB);
                    try {
                        os = new FileOutputStream(backupDB);
                    } catch (Exception e) {
                        e = e;
                        is = is2;
                    } catch (Throwable th) {
                        th = th;
                        is = is2;
                    }
                    try {
                        src = is2.getChannel();
                        dst = os.getChannel();
                        dst.transferFrom(src, 0L, src.size());
                        os2 = os;
                        is = is2;
                    } catch (Exception e2) {
                        e = e2;
                        os2 = os;
                        is = is2;
                        e.printStackTrace();
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (os2 != null) {
                            try {
                                os2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (src != null) {
                            try {
                                src.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        if (dst != null) {
                            try {
                                dst.close();
                                return;
                            } catch (IOException e6) {
                                e6.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        os2 = os;
                        is = is2;
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        if (os2 != null) {
                            try {
                                os2.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        if (src != null) {
                            try {
                                src.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (dst != null) {
                            try {
                                dst.close();
                                throw th;
                            } catch (IOException e10) {
                                e10.printStackTrace();
                                throw th;
                            }
                        }
                        throw th;
                    }
                }
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                }
                if (os2 != null) {
                    try {
                        os2.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                if (src != null) {
                    try {
                        src.close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                }
                if (dst != null) {
                    try {
                        dst.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e15) {
            e = e15;
        }
    }
}
