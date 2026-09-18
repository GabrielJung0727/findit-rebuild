package com.jargoandroid.connectnetwork;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.findit.battle.finals.LOG;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class ConnectNetwork {
    private static final int CONNECT_TIMEOUT = 10000;
    public static final int DOWNLOADFAIL_FAIL = 1;
    public static final int DOWNLOADFAIL_PERMISSION_DENIED = 2;
    public static final int DOWNLOADFAIL_SUCCESS = 0;
    public static final String EUC_KR = "euc-kr";
    public static final String GET = "GET";
    public static final String HANDLER_MSG_KEY = "result";
    public static final String HANDLER_MSG_KEY_DATA = "data";
    public static final String HANDLER_MSG_KEY_FILENAME = "filename";
    public static final String HANDLER_MSG_KEY_FILEPATH = "filepath";
    public static final String HANDLER_MSG_KEY_TAG_INT = "tag_int";
    public static final String HANDLER_MSG_KEY_TAG_STRING = "tag_string";
    public static final String POST = "POST";
    public static final int RESULT_TYPE_JSONARRAY = 1;
    public static final int RESULT_TYPE_JSONOBJECT = 2;
    public static final int RESULT_TYPE_STRING = 3;
    public static final int RESULT_TYPE_XML = 0;
    public static final String UTF_8 = "utf-8";
    private boolean mConnecting;
    private Context mContext;
    private HashMap<String, String> mDataMap;
    private JSONArray mJSONArray;
    private JSONObject mJSONObject;
    private ArrayList<Data> mParameterList;
    private XmlPullParser mParser;
    private Handler mReceiveSockerMsgHandler;
    private boolean mReceiveSocketMsgThreadRun;
    private ReceiveSocketMsgThread mReceiveSocketMsgthread = null;
    private Handler mResultHandler;
    private SocketChannel mSc;
    private String mServerFile;
    private String mServerFolder;
    private String mServerUri;

    public ConnectNetwork(Context context) {
        LOG.verbose(">> ConnectNetwork()");
        this.mParser = null;
        this.mResultHandler = null;
        this.mServerUri = null;
        this.mServerFolder = null;
        this.mServerFile = null;
        this.mParameterList = new ArrayList<>();
        this.mDataMap = null;
        this.mJSONArray = null;
        this.mJSONObject = null;
        this.mConnecting = false;
        try {
            XmlPullParserFactory parserCreator = XmlPullParserFactory.newInstance();
            this.mParser = parserCreator.newPullParser();
        } catch (XmlPullParserException e) {
            Toast.makeText(context, "Parser instance error", 0).show();
        }
    }

    public void setServerUri(String domain, String file) {
        LOG.verbose(">> setServerUri() domain: " + domain + " file: " + file);
        this.mServerUri = domain;
        this.mServerFolder = GameView.CHARACTER_AI;
        this.mServerFile = file;
    }

    public void setServerUri(String domain, String folder, String file) {
        LOG.verbose(">> setServerUri() domain: " + domain + " folder: " + folder + " file: " + file);
        this.mServerUri = domain;
        this.mServerFolder = folder;
        this.mServerFile = file;
    }

    public int setParameter(String name, String value) {
        LOG.verbose(">> setParameter() name: " + name + " value: " + value);
        int index = searchParameter(name);
        if (index > -1) {
            this.mParameterList.get(index).mValue = value;
        } else {
            this.mParameterList.add(new Data(name, value));
        }
        return this.mParameterList.size();
    }

    private int searchParameter(String name) {
        LOG.verbose(">> searchParameter() name: " + name);
        ArrayList<Data> list = this.mParameterList;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).mName.equals(name)) {
                return i;
            }
        }
        return -1;
    }

    public void clearParameter() {
        LOG.verbose(">> clearParameter()");
        this.mParameterList.clear();
    }

    private boolean checkEmpty(String text) {
        LOG.verbose(">> checkEmpty()");
        int length = text.length();
        if (length < 1) {
            return false;
        }
        if (text.indexOf("\n") == -1 && text.indexOf("\t") == -1) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            String subtext = text.substring(i, i + 1);
            if (!subtext.equals("\n") && !subtext.equals("\t")) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONArray parsingJSONArray(String encodingtype, String requesttype) {
        LOG.verbose(">> parsingJSONArray()");
        try {
            String jsondata = doParsing(encodingtype, requesttype);
            if (jsondata == null) {
                return null;
            }
            LOG.debug("jsondata: " + jsondata);
            return new JSONArray(jsondata);
        } catch (Exception e) {
            LOG.error("e: " + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject parsingJSONObject(String encodingtype, String requesttype) {
        LOG.verbose(">> parsingJSONObject()");
        try {
            String jsondata = doParsing(encodingtype, requesttype);
            if (TextUtils.isEmpty(jsondata)) {
                return null;
            }
            LOG.debug("jsondata: " + jsondata);
            return new JSONObject(jsondata);
        } catch (Exception e) {
            LOG.error("e: " + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String doParsing(String encodingtype, String requesttype) throws Exception {
        LOG.verbose(">> doParsing()");
        ArrayList<Data> list = this.mParameterList;
        int size = list.size();
        ProgressThread oProgressthread = new ProgressThread();
        oProgressthread.start();
        String spec = String.valueOf(this.mServerUri) + this.mServerFolder + this.mServerFile;
        HttpURLConnection conn = (HttpURLConnection) new URL(spec).openConnection();
        conn.setConnectTimeout(10000);
        conn.setReadTimeout(10000);
        conn.setDefaultUseCaches(false);
        conn.setDoInput(true);
        conn.setDoOutput(true);
        conn.setRequestMethod(requesttype);
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < size; i++) {
            sb.append(list.get(i).mName).append("=").append(list.get(i).mValue).append(Objects.Animation.DEVIDER_SUB);
        }
        PrintWriter pw = new PrintWriter(new OutputStreamWriter(conn.getOutputStream(), encodingtype));
        pw.write(sb.toString());
        pw.flush();
        StringBuffer b = new StringBuffer();
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), encodingtype));
        while (true) {
            int ch = br.read();
            if (ch == -1) {
                break;
            }
            b.append((char) ch);
        }
        conn.disconnect();
        if (oProgressthread.mTime < 1) {
            return null;
        }
        oProgressthread.mTime = 0;
        return b.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> parsingData(String encodingtype, String requesttype) {
        LOG.verbose(">> parsingData()");
        try {
            XmlPullParser parser = this.mParser;
            ArrayList<Data> list = this.mParameterList;
            int size = list.size();
            String spec = String.valueOf(this.mServerUri) + this.mServerFolder + this.mServerFile;
            if (requesttype.equals(GET)) {
                int i = 0;
                while (i < size) {
                    String name = URLEncoder.encode(list.get(i).mName, EUC_KR);
                    String value = URLEncoder.encode(list.get(i).mValue, EUC_KR);
                    spec = String.valueOf(spec) + (i == 0 ? "?" : Objects.Animation.DEVIDER_SUB) + name + "=" + value;
                    i++;
                }
                HttpURLConnection conn = (HttpURLConnection) new URL(spec).openConnection();
                conn.setConnectTimeout(10000);
                conn.setReadTimeout(10000);
                parser.setInput(conn.getInputStream(), encodingtype);
                conn.disconnect();
            } else {
                HttpURLConnection conn2 = (HttpURLConnection) new URL(spec).openConnection();
                conn2.setConnectTimeout(10000);
                conn2.setReadTimeout(10000);
                conn2.setDefaultUseCaches(false);
                conn2.setDoInput(true);
                conn2.setDoOutput(true);
                conn2.setRequestMethod(POST);
                conn2.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                StringBuffer sb = new StringBuffer();
                for (int i2 = 0; i2 < size; i2++) {
                    sb.append(list.get(i2).mName).append("=").append(list.get(i2).mValue).append(Objects.Animation.DEVIDER_SUB);
                }
                PrintWriter pw = new PrintWriter(new OutputStreamWriter(conn2.getOutputStream(), encodingtype));
                pw.write(sb.toString());
                pw.flush();
                InputStream is = conn2.getInputStream();
                StringBuffer b = new StringBuffer();
                while (true) {
                    int ch = is.read();
                    if (ch == -1) {
                        break;
                    }
                    b.append((char) ch);
                }
                conn2.disconnect();
                parser.setInput(new StringReader(b.toString()));
            }
            HashMap<String, String> datamap = doParsing(parser);
            return datamap;
        } catch (Exception e) {
            return null;
        }
    }

    private HashMap<String, String> doParsing(XmlPullParser parser) throws Exception {
        LOG.verbose(">> doParsing()");
        HashMap<String, String> datamap = new HashMap<>();
        ProgressThread thread = new ProgressThread();
        thread.start();
        String tag = GameView.CHARACTER_AI;
        int parserEvent = parser.getEventType();
        while (parserEvent != 1 && thread.mTime > 0) {
            switch (parserEvent) {
                case 2:
                    tag = parser.getName();
                    if (tag == null) {
                        tag = GameView.CHARACTER_AI;
                    }
                    int count = parser.getAttributeCount();
                    for (int i = 0; i < count; i++) {
                        String counttag = String.valueOf(tag) + "<" + parser.getAttributeName(i) + ">";
                        if (datamap.get(counttag) == null) {
                            datamap.put(counttag, parser.getAttributeValue(i));
                        } else {
                            int index = 1;
                            while (true) {
                                int index2 = index + 1;
                                String counttag2 = String.valueOf(tag) + "<" + parser.getAttributeName(i) + ">/" + index + Objects.Animation.DEVIDER_DATA;
                                if (datamap.get(counttag2) == null) {
                                    datamap.put(counttag2, parser.getAttributeValue(i));
                                } else {
                                    index = index2;
                                }
                            }
                        }
                    }
                    break;
                case 3:
                    tag = GameView.CHARACTER_AI;
                    break;
                case 4:
                    String text = parser.getText();
                    if (text != null && !checkEmpty(text)) {
                        if (datamap.get(tag) == null) {
                            datamap.put(tag, text);
                        } else {
                            int index3 = 1;
                            while (true) {
                                int index4 = index3 + 1;
                                String counttag3 = String.valueOf(tag) + Objects.Animation.DEVIDER_DATA + index3 + Objects.Animation.DEVIDER_DATA;
                                if (datamap.get(counttag3) == null) {
                                    datamap.put(counttag3, text);
                                } else {
                                    index3 = index4;
                                }
                            }
                        }
                    }
                    break;
            }
            parserEvent = parser.next();
        }
        if (thread.mTime < 1) {
            return null;
        }
        thread.mTime = 0;
        return datamap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> uploadFile(String srcpath, String srcname, long size, String despath, String desname) {
        LOG.verbose(">> uploadFile()");
        try {
            String urlstr = String.valueOf(this.mServerUri) + this.mServerFolder + this.mServerFile;
            String filepath = String.valueOf(srcpath) + srcname;
            URL url = new URL(urlstr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(10000);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setUseCaches(false);
            conn.setRequestMethod(POST);
            conn.setRequestProperty("Connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
            DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
            dos.writeBytes(String.valueOf("--") + "*****\r\n");
            dos.writeBytes("Content-Disposition: form-data; name=\"uploadedfile\";filename=\"" + filepath + "\"\r\n");
            dos.writeBytes("\r\n");
            FileInputStream fis = new FileInputStream(filepath);
            int datasize = fis.available();
            if (datasize >= 1024) {
                datasize = 1024;
            }
            byte[] data = new byte[datasize];
            int read = fis.read(data, 0, datasize);
            long total = read;
            while (read > 0) {
                dos.write(data, 0, datasize);
                datasize = fis.available();
                if (datasize >= 1024) {
                    datasize = 1024;
                }
                read = fis.read(data, 0, datasize);
                total += (long) read;
                long percent = (long) ((total / size) * 100.0f);
                LOG.debug("upload: " + total + ", " + percent + "%");
            }
            dos.writeBytes("\r\n");
            dos.writeBytes(String.valueOf("--") + "*****--\r\n");
            fis.close();
            dos.flush();
            dos.close();
            InputStream is = conn.getInputStream();
            StringBuffer b = new StringBuffer();
            while (true) {
                int ch = is.read();
                if (ch == -1) {
                    break;
                }
                b.append((char) ch);
            }
            conn.disconnect();
            XmlPullParser parser = this.mParser;
            parser.setInput(new StringReader(b.toString()));
            HashMap<String, String> datamap = doParsing(parser);
            if (total < size) {
                return null;
            }
            return datamap;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int downloadFile(String srcpath, String srcname, long size, String despath, String desname) throws Throwable {
        int i;
        LOG.verbose(">> downloadFile()");
        File file = new File(String.valueOf(despath) + desname);
        InputStream is = null;
        FileOutputStream fos = null;
        try {
            try {
                String urlstr = String.valueOf(this.mServerUri) + this.mServerFolder + srcpath + srcname;
                HttpURLConnection conn = (HttpURLConnection) new URL(urlstr).openConnection();
                conn.setConnectTimeout(10000);
                conn.setReadTimeout(10000);
                is = conn.getInputStream();
                if (is == null || conn == null) {
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (0 != 0) {
                        try {
                            fos.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    i = 1;
                } else {
                    File filepath = new File(despath);
                    filepath.mkdirs();
                    file.createNewFile();
                    FileOutputStream fos2 = new FileOutputStream(file);
                    try {
                        int datasize = is.available();
                        if (datasize <= 0) {
                            datasize = 1024;
                        }
                        byte[] data = new byte[datasize];
                        long total = 0;
                        while (true) {
                            int read = is.read(data);
                            if (read == -1) {
                                break;
                            }
                            fos2.write(data, 0, read);
                            fos2.flush();
                            total += (long) read;
                            long percent = (long) ((total / size) * 100.0f);
                            LOG.debug("download: " + total + ", " + percent + "%");
                        }
                        conn.disconnect();
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (fos2 != null) {
                            try {
                                fos2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        i = 0;
                        fos = fos2;
                    } catch (Exception e5) {
                        e = e5;
                        fos = fos2;
                        file.delete();
                        LOG.error("download Exception: " + e.getMessage());
                        if (e == null || e.getMessage() == null || !e.getMessage().equals("Permission denied")) {
                            if (is != null) {
                                try {
                                    is.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (fos != null) {
                                try {
                                    fos.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                            i = 1;
                        } else {
                            if (is != null) {
                                try {
                                    is.close();
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                }
                            }
                            if (fos != null) {
                                try {
                                    fos.close();
                                } catch (IOException e9) {
                                    e9.printStackTrace();
                                }
                            }
                            i = 2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fos = fos2;
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (fos != null) {
                            try {
                                fos.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e12) {
            e = e12;
        }
        return i;
    }

    public void startParsingData(String encodingtype, String requesttype, int resulttype, Handler handler) {
        LOG.verbose(">> startParsingData()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("ParsingThread start");
        ParsingThread thread = new ParsingThread(encodingtype, requesttype, resulttype);
        thread.start();
    }

    public void startParsingData(String encodingtype, String requesttype, int resulttype, String tag, Handler handler) {
        LOG.verbose(">> startParsingData()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("ParsingThread start");
        ParsingThread thread = new ParsingThread(encodingtype, requesttype, resulttype, tag);
        thread.start();
    }

    public void startUploadFile(String srcpath, String srcname, long size, String despath, String desname, Handler handler) {
        LOG.verbose(">> startUploadFile()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("LoadThread start");
        LoadThread thread = new LoadThread(srcpath, srcname, size, despath, desname, 0, true);
        thread.start();
    }

    public void startUploadFile(String srcpath, String srcname, long size, String despath, String desname, int tag, Handler handler) {
        LOG.verbose(">> startUploadFile()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("LoadThread start");
        LoadThread thread = new LoadThread(srcpath, srcname, size, despath, desname, tag, true);
        thread.start();
    }

    public void startDownloadFile(String srcpath, String srcname, long size, String despath, String desname, Handler handler) {
        LOG.verbose(">> startDownloadFile()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("LoadThread start");
        LoadThread thread = new LoadThread(srcpath, srcname, size, despath, desname, 0, false);
        thread.start();
    }

    public void startDownloadFile(String srcpath, String srcname, long size, String despath, String desname, int tag, Handler handler) {
        LOG.verbose(">> startDownloadFile()");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("LoadThread start");
        LoadThread thread = new LoadThread(srcpath, srcname, size, despath, desname, tag, false);
        thread.start();
    }

    public boolean isConnecting() {
        LOG.verbose(">> isConnecting()");
        return this.mConnecting;
    }

    public HashMap<String, String> getDataMap() {
        LOG.verbose(">> getDataMap()");
        return this.mDataMap;
    }

    public JSONArray getJSONArray() {
        LOG.verbose(">> getJSONArray()");
        return this.mJSONArray;
    }

    public JSONObject getJSONObject() {
        LOG.verbose(">> getJSONObject()");
        return this.mJSONObject;
    }

    class Data {
        public String mName;
        public String mValue;

        public Data(String name, String value) {
            LOG.verbose(">> Data()");
            this.mName = name;
            this.mValue = value;
        }
    }

    class ParsingThread extends Thread {
        private String mEncodingType;
        private String mRequestType;
        private int mResultType;
        private String mTag;

        public ParsingThread(String encodingtype, String requesttype, int resulttype) {
            LOG.verbose(">> ParsingThread()");
            this.mEncodingType = encodingtype;
            this.mRequestType = requesttype;
            this.mResultType = resulttype;
            this.mTag = null;
            setName("ParsingThread");
        }

        public ParsingThread(String encodingtype, String requesttype, int resulttype, String tag) {
            LOG.verbose(">> ParsingThread()");
            this.mEncodingType = encodingtype;
            this.mRequestType = requesttype;
            this.mResultType = resulttype;
            this.mTag = tag;
            setName("ParsingThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LOG.verbose(">>ParsingThread:run()");
            Message msg = ConnectNetwork.this.mResultHandler.obtainMessage();
            Bundle bundle = new Bundle();
            boolean result = false;
            switch (this.mResultType) {
                case 0:
                    ConnectNetwork.this.mDataMap = ConnectNetwork.this.parsingData(this.mEncodingType, this.mRequestType);
                    result = ConnectNetwork.this.mDataMap != null;
                    break;
                case 1:
                    ConnectNetwork.this.mJSONArray = ConnectNetwork.this.parsingJSONArray(this.mEncodingType, this.mRequestType);
                    result = ConnectNetwork.this.mJSONArray != null;
                    break;
                case 2:
                    ConnectNetwork.this.mJSONObject = ConnectNetwork.this.parsingJSONObject(this.mEncodingType, this.mRequestType);
                    result = ConnectNetwork.this.mJSONObject != null;
                    break;
                case 3:
                    try {
                        String jsondata = ConnectNetwork.this.doParsing(this.mEncodingType, this.mRequestType);
                        bundle.putString(ConnectNetwork.HANDLER_MSG_KEY_DATA, jsondata);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;
            }
            bundle.putBoolean("result", result);
            bundle.putString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING, this.mTag);
            msg.setData(bundle);
            ConnectNetwork.this.mResultHandler.sendMessage(msg);
            ConnectNetwork.this.mConnecting = false;
            LOG.error("ParsingThread end");
        }
    }

    class LoadThread extends Thread {
        private String mDesName;
        private String mDesPath;
        private boolean mLoadType;
        private long mSize;
        private String mSrcName;
        private String mSrcPath;
        private int mTag;

        public LoadThread(String srcpath, String srcname, long size, String despath, String desname, int tag, boolean loadtype) {
            LOG.verbose(">> LoadThread()");
            this.mSrcPath = srcpath;
            this.mSrcName = srcname;
            this.mTag = tag;
            this.mSize = size;
            this.mDesPath = despath;
            this.mDesName = desname;
            this.mLoadType = loadtype;
            setName("LoadThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            LOG.verbose(">>LoadThread:run()");
            Message msg = ConnectNetwork.this.mResultHandler.obtainMessage();
            Bundle bundle = new Bundle();
            if (this.mLoadType) {
                ConnectNetwork.this.mDataMap = ConnectNetwork.this.uploadFile(this.mSrcPath, this.mSrcName, this.mSize, this.mDesPath, this.mDesName);
                boolean result = ConnectNetwork.this.mDataMap != null;
                bundle.putBoolean("result", result);
            } else {
                int result2 = ConnectNetwork.this.downloadFile(this.mSrcPath, this.mSrcName, this.mSize, this.mDesPath, this.mDesName);
                bundle.putInt("result", result2);
            }
            bundle.putInt(ConnectNetwork.HANDLER_MSG_KEY_TAG_INT, this.mTag);
            bundle.putString(ConnectNetwork.HANDLER_MSG_KEY_FILEPATH, this.mDesPath);
            bundle.putString(ConnectNetwork.HANDLER_MSG_KEY_FILENAME, this.mDesName);
            msg.setData(bundle);
            ConnectNetwork.this.mResultHandler.sendMessage(msg);
            ConnectNetwork.this.mConnecting = false;
            LOG.error("LoadThread end");
        }
    }

    public void closeSocket(boolean bClearMem) {
        LOG.error(">> closeSocket()");
        if (bClearMem) {
            clearMemberData();
        }
        this.mReceiveSocketMsgThreadRun = false;
        try {
            if (this.mSc != null) {
                this.mSc.close();
                this.mSc = null;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void clearMemberData() {
        LOG.verbose(">> clearMemberData()");
        if (this.mDataMap != null) {
            this.mDataMap.clear();
            this.mDataMap = null;
        }
    }

    public boolean isConnectSocket() {
        LOG.verbose(">> isConnectSocket():");
        SocketChannel sc = this.mSc;
        if (sc == null) {
            return false;
        }
        return sc.isConnected();
    }

    public void setReceiveSocketMsgHandler(Handler handler) {
        LOG.verbose(">> setReceiveSocketMsgHandler()");
        this.mReceiveSockerMsgHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SocketChannel connectSocket(String ip, int port) {
        LOG.verbose(">> connectSocket()");
        try {
            InetAddress server_addr = InetAddress.getByName(ip);
            InetSocketAddress address = new InetSocketAddress(server_addr, port);
            SocketChannel sc = SocketChannel.open();
            sc.configureBlocking(false);
            sc.connect(address);
            for (int i = 0; i < 20; i++) {
                LOG.debug("connectSocket connecting");
                if (sc.finishConnect()) {
                    break;
                }
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if (sc.isConnected()) {
                LOG.debug("connectSocket pass");
                return sc;
            }
            if (sc != null) {
                sc.close();
            }
            LOG.debug("connectSocket null1");
            return null;
        } catch (IOException e2) {
            LOG.error("connectSocket null0");
            return null;
        }
    }

    public boolean sendSocketMsg(String msg) {
        LOG.verbose(">> sendSocketMsg():" + msg);
        SocketChannel sc = this.mSc;
        boolean result = true;
        if (sc == null) {
            return false;
        }
        ByteBuffer buffer = ByteBuffer.allocateDirect(msg.getBytes().length);
        buffer.clear();
        buffer.put(msg.getBytes());
        buffer.flip();
        try {
            sc.write(buffer);
        } catch (IOException e) {
            result = false;
            closeSocket(false);
            LOG.error("sendSocketMsg e: " + e.getMessage());
        }
        buffer.clear();
        return result;
    }

    public void startReceiveSocketMsg(Handler handler) {
        LOG.verbose(">> startReceiveSocketMsg()");
        this.mReceiveSockerMsgHandler = handler;
        LOG.error("ReceiveSocketMsgThread start");
        this.mReceiveSocketMsgthread = new ReceiveSocketMsgThread();
        this.mReceiveSocketMsgthread.start();
    }

    public void startConnectSocket(String ip, int port, Handler handler) {
        LOG.verbose(">> startConnectSocket():\"\"");
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("ConnectSocketThread start");
        ConnectSocketThread thread = new ConnectSocketThread(ip, port, GameView.CHARACTER_AI);
        thread.start();
    }

    public void startConnectSocket(String ip, int port, String tag, Handler handler) {
        LOG.verbose(">> startConnectSocket():" + tag);
        this.mResultHandler = handler;
        this.mConnecting = true;
        LOG.error("ConnectSocketThread start");
        ConnectSocketThread thread = new ConnectSocketThread(ip, port, tag);
        thread.start();
    }

    class ConnectSocketThread extends Thread {
        private String mIp;
        private int mPort;
        private String mTag;

        public ConnectSocketThread(String ip, int port, String tag) {
            LOG.verbose(">> ConnectSocketThread()");
            this.mIp = ip;
            this.mPort = port;
            this.mTag = tag;
            setName("ConnectSocketThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LOG.verbose(">> run()");
            Message msg = ConnectNetwork.this.mResultHandler.obtainMessage();
            Bundle bundle = new Bundle();
            ConnectNetwork.this.mSc = ConnectNetwork.this.connectSocket(this.mIp, this.mPort);
            bundle.putBoolean("result", ConnectNetwork.this.isConnectSocket());
            bundle.putString(ConnectNetwork.HANDLER_MSG_KEY_TAG_STRING, this.mTag);
            msg.setData(bundle);
            ConnectNetwork.this.mResultHandler.sendMessage(msg);
            ConnectNetwork.this.mConnecting = false;
            LOG.error("ConnectSocketThread end");
        }
    }

    class ReceiveSocketMsgThread extends Thread {
        public ReceiveSocketMsgThread() {
            LOG.verbose(">> ReceiveSocketMsgThread()");
            ConnectNetwork.this.mReceiveSocketMsgThreadRun = true;
            setName("ReceiveSocketMsgThread");
        }

        public void requestexitAndWait() {
            LOG.verbose(">> requestexitAndWait()");
            ConnectNetwork.this.mReceiveSocketMsgThreadRun = false;
            try {
                join();
                ConnectNetwork.this.mReceiveSocketMsgthread = null;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0075, code lost:
        
            com.findit.battle.finals.LOG.debug("isConnectSocket1");
            r16.this$0.closeSocket(false);
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 403
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.jargoandroid.connectnetwork.ConnectNetwork.ReceiveSocketMsgThread.run():void");
        }
    }

    class ProgressThread extends Thread {
        private int mTime;

        public ProgressThread() {
            LOG.verbose(">> ProgressThread()");
            this.mTime = 10;
            setName("ProgressThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                LOG.verbose("ProgressThread start");
                while (true) {
                    int i = this.mTime - 1;
                    this.mTime = i;
                    if (i <= 0) {
                        break;
                    }
                    Thread.sleep(1000L);
                    LOG.debug("ProgressThread mTime: " + this.mTime);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            LOG.error("ProgressThread end");
        }
    }
}
