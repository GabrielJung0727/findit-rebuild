package com.feelingk.iap.net;

import android.content.Context;
import android.os.Build;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.Objects;
import com.kt.olleh.inapp.ILibMode;
import com.kt.olleh.inapp.net.InAppError;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class IAPNet {
    static final String TAG = "IAPNet";
    private static Context mContext = null;
    private static boolean isWifi = false;
    private static boolean connectBP = false;
    private static boolean connect = false;
    private static boolean isInit = false;
    private static Socket socketGateway = null;
    private static InputStream inputStream = null;
    private static OutputStream outputStream = null;
    private static Socket socketBP = null;
    private static InputStream inputStreamBP = null;
    private static OutputStream outputStreamBP = null;

    protected static InitConfirm iapConnect(ServerInfo info, int telecom, String mcid, String min, String bpServerIP, int bpServerPort, String pID, String pTID, String pEncJumin, boolean useBpServer, Context context) {
        mContext = context;
        InitConfirm initConfirm = new InitConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] Server connect - Start : iapConnect Wifi= " + isWifi);
        if (connect) {
            initConfirm.setResultCode((byte) -1);
        } else {
            try {
                if (isWifi) {
                    SocketAddress socketAddress = new InetSocketAddress(info.getHostAddress(), info.getPort());
                    SSLContext sslcontext = SSLContext.getInstance("TLS");
                    TrustManager[] trustManagers = {new TrustManager()};
                    sslcontext.init(null, trustManagers, new SecureRandom());
                    SSLSocketFactory FACTORY = sslcontext.getSocketFactory();
                    socketGateway = FACTORY.createSocket();
                    socketGateway.setSoTimeout(20000);
                    socketGateway.connect(socketAddress, 20000);
                    inputStream = socketGateway.getInputStream();
                    outputStream = socketGateway.getOutputStream();
                } else {
                    socketGateway = new Socket();
                    socketGateway.setSoTimeout(20000);
                    socketGateway.connect(new InetSocketAddress(info.getHostAddress(), info.getPort()), 20000);
                    inputStream = socketGateway.getInputStream();
                    outputStream = socketGateway.getOutputStream();
                }
                connect = true;
                CommonF.LOGGER.i(TAG, "[ DEBUG ] Server connect - Complete!!!");
                iapSendInit(initConfirm, telecom, mcid, pEncJumin, min, bpServerIP, bpServerPort, pID, pTID, useBpServer);
                if (initConfirm.getResultCode() != 0) {
                    if (initConfirm.getResultCode() != -7) {
                        isInit = false;
                    }
                    if (initConfirm.getResultCode() == -5 || initConfirm.getResultCode() == -4) {
                        initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                } else {
                    byte[] recv = iapReceive(initConfirm);
                    if (initConfirm.getResultCode() != 0) {
                        isInit = false;
                        initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
                    } else {
                        initConfirm.parse(recv);
                    }
                }
            } catch (SocketTimeoutException e) {
                connect = false;
                initConfirm.setResultCode(Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_NORMAL_TIMEOUT_FAIL);
                initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                e.printStackTrace();
            } catch (IOException e2) {
                connect = false;
                CommonF.LOGGER.i(TAG, "[ Exception ] iapConnect() DUMP!!! :" + e2.toString());
                initConfirm.setResultCode((byte) -3);
                initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                e2.printStackTrace();
            } catch (Exception e3) {
                CommonF.LOGGER.i(TAG, "[ Exception ] iapConnect() ~~~~~DUMP~! :" + e3.toString());
                connect = false;
                initConfirm.setResultCode((byte) -3);
                initConfirm.SetDumpMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                e3.printStackTrace();
            }
        }
        return initConfirm;
    }

    protected static int iapClose(boolean isResRelease) {
        CommonF.LOGGER.e(TAG, "[ DEBUG ] Socket Close!");
        try {
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e) {
        }
        try {
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Exception e2) {
        }
        try {
            if (socketGateway != null) {
                socketGateway.close();
            }
        } catch (Exception e3) {
        }
        inputStream = null;
        outputStream = null;
        socketGateway = null;
        connect = false;
        isInit = false;
        return 0;
    }

    protected static void iapSendInit(InitConfirm initConfirm, int pTelecom, String applicationID, String encJuminNumber, String MIN, String bpServerIP, int bpServerPort, String pID, String pTID, boolean useBpServer) {
        String sHeaderPacket;
        CommonF.LOGGER.i(TAG, "====================iapSendInit  Start()====================");
        CommonF.LOGGER.i(TAG, "iapSendInit  Start() isInit=" + isInit);
        CommonF.LOGGER.i(TAG, "iapSendInit  Start() useBpServer =" + useBpServer);
        CommonF.LOGGER.i(TAG, "iapSendInit  Start() encJuminNumberCheck =" + (encJuminNumber != null ? 1 : 0));
        if (encJuminNumber == null) {
            encJuminNumber = "0000000000";
        }
        if (isInit) {
            initConfirm.setResultCode((byte) -7);
            return;
        }
        byte[] ipBytes = bpServerIP != null ? bpServerIP.getBytes() : null;
        byte[] portBytes = String.valueOf(bpServerPort).getBytes();
        int packet_len = 12;
        if (pTID != null) {
            sHeaderPacket = "QP";
            packet_len = 12 + 100;
        } else {
            sHeaderPacket = "IP";
        }
        int packet_len2 = packet_len + 1 + 8 + 1 + 10 + 11 + 1;
        if (ipBytes != null) {
            packet_len2 += ipBytes.length;
        }
        int packet_len3 = packet_len2 + 7 + 10;
        if (pTelecom == 2 || pTelecom == 3) {
            int packet_len4 = packet_len3 + 2;
            if (useBpServer) {
                packet_len3 = packet_len4 + 1 + Defines.IAP_SENDBPDATA_PROTOCOL.length();
            } else {
                packet_len3 = packet_len4 + 1 + encJuminNumber.length();
            }
        }
        int packet_len5 = packet_len3 + 1 + 1;
        byte[] packetBytes = new byte[packet_len5];
        for (int i = 0; i < packet_len5; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader(sHeaderPacket, packet_len5 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        int offset2 = offset + 1;
        packetBytes[offset] = 71;
        System.arraycopy(Defines.IAP_PROTOCOL_VERSION.getBytes(), 0, packetBytes, offset2, 8);
        int offset3 = offset2 + 8;
        int offset4 = offset3 + 1;
        packetBytes[offset3] = 65;
        System.arraycopy(applicationID.getBytes(), 0, packetBytes, offset4, Math.min(applicationID.getBytes().length, 10));
        int offset5 = offset4 + 10;
        System.arraycopy(MIN.getBytes(), 0, packetBytes, offset5, Math.min(MIN.getBytes().length, 11));
        int offset6 = offset5 + 11;
        if (ipBytes != null) {
            packetBytes[offset6] = (byte) ipBytes.length;
        }
        int offset7 = offset6 + 1;
        if (ipBytes != null) {
            System.arraycopy(ipBytes, 0, packetBytes, offset7, ipBytes.length);
            offset7 = ipBytes.length + 44;
            System.arraycopy(portBytes, 0, packetBytes, offset7, portBytes.length);
        }
        int offset8 = offset7 + 7;
        if (pID != null) {
            byte[] byte_pID = String.valueOf(pID).getBytes();
            if (byte_pID.length <= 10) {
                System.arraycopy(byte_pID, 0, packetBytes, offset8, byte_pID.length);
            }
        }
        int offset9 = offset8 + 10;
        if (pTID != null) {
            byte[] byte_pTID = String.valueOf(pTID).getBytes();
            System.arraycopy(byte_pTID, 0, packetBytes, offset9, byte_pTID.length);
            offset9 += 100;
        }
        if (pTelecom == 2 || pTelecom == 3) {
            String currTelecom = pTelecom == 2 ? Defines.KOR_TELECOM_PACKET.KT_TELECOM : Defines.KOR_TELECOM_PACKET.LG_TELECOM;
            byte[] byte_pTelecom = String.valueOf(currTelecom).getBytes();
            System.arraycopy(byte_pTelecom, 0, packetBytes, offset9, byte_pTelecom.length);
            int offset10 = offset9 + 2;
            if (useBpServer) {
                int offset11 = offset10 + 1;
                packetBytes[offset10] = (byte) Defines.IAP_SENDBPDATA_PROTOCOL.length();
                byte[] byte_pSendBPData = Defines.IAP_SENDBPDATA_PROTOCOL.getBytes();
                System.arraycopy(byte_pSendBPData, 0, packetBytes, offset11, byte_pSendBPData.length);
                offset9 = offset11 + byte_pSendBPData.length;
            } else {
                int offset12 = offset10 + 1;
                packetBytes[offset10] = (byte) encJuminNumber.length();
                byte[] byte_pJumin = encJuminNumber.getBytes();
                System.arraycopy(byte_pJumin, 0, packetBytes, offset12, byte_pJumin.length);
                offset9 = offset12 + encJuminNumber.getBytes().length;
            }
        }
        int offset13 = offset9 + 1;
        packetBytes[offset9] = 78;
        packetBytes[packet_len5 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            initConfirm.setResultCode(ret);
            initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            initConfirm.setResultCode((byte) 0);
            isInit = true;
            CommonF.LOGGER.i(TAG, "====================iapSendInit  End()====================");
        }
    }

    protected static MsgConfirm iapSendCommonInfo() {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendCommonInfo  Start()====================");
        String modelName = CommonF.getModelName(mContext);
        CommonF.LOGGER.i(TAG, "modelName= " + modelName);
        int carrier = CommonF.getCarrier(mContext);
        CommonF.LOGGER.i(TAG, "Carrier= " + carrier);
        String encImei = CommonF.getIMEI(mContext);
        CommonF.LOGGER.i(TAG, "encImei= " + encImei);
        String UACD = CommonF.getUAProfileData(carrier);
        CommonF.LOGGER.i(TAG, "UACD= " + UACD);
        int packet_len = 12 + 50;
        int i = packet_len + 4 + 1;
        int packet_len2 = encImei.length() + 67;
        int packet_len3 = packet_len2 + 4 + 1;
        byte[] packetBytes = new byte[packet_len3];
        for (int i2 = 0; i2 < packet_len3; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("IR", packet_len3 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pModelName = String.valueOf(modelName).getBytes();
        System.arraycopy(byte_pModelName, 0, packetBytes, offset, byte_pModelName.length);
        int offset2 = offset + 50;
        byte[] byte_mUACD = String.valueOf(UACD).getBytes();
        System.arraycopy(byte_mUACD, 0, packetBytes, offset2, byte_mUACD.length);
        int offset3 = offset2 + 4;
        packetBytes[offset3] = (byte) encImei.length();
        byte[] byte_pEncImei = String.valueOf(encImei).getBytes();
        System.arraycopy(byte_pEncImei, 0, packetBytes, offset3 + 1, byte_pEncImei.length);
        int offset4 = encImei.getBytes().length + 67;
        byte[] byte_versionCode = String.valueOf(Defines.IAP_VERSION_CODE).getBytes();
        System.arraycopy(byte_versionCode, 0, packetBytes, offset4, byte_versionCode.length);
        int i3 = offset4 + 4;
        packetBytes[packet_len3 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendCommonInfo  End()====================");
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendISImeiAuthReq(String MDN) {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendISImeiAuthReq  Start()====================");
        CommonF.LOGGER.i(TAG, "MDN= " + MDN);
        int packet_len = 12 + 11 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("AR", 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pMDN = String.valueOf(MDN).getBytes();
        System.arraycopy(byte_pMDN, 0, packetBytes, offset, byte_pMDN.length);
        int i2 = offset + 11;
        packetBytes[23] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendISImeiAuthReq  End()====================");
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendImeiAuthReq(String MDN) {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendImeiAuthReq  Start()====================");
        CommonF.LOGGER.i(TAG, "MDN= " + MDN);
        int packet_len = 12 + 11 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("AM", 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pMDN = String.valueOf(MDN).getBytes();
        System.arraycopy(byte_pMDN, 0, packetBytes, offset, byte_pMDN.length);
        int i2 = offset + 11;
        packetBytes[23] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendImeiAuthReq  End()====================");
            }
        }
        return msgConfirm;
    }

    protected static InitConfirm iapReAuth(int pTelecom, String applicationID, String pJuminNumber, String MDN, String bpServerIP, int bpServerPort, String pID, String pTID) {
        InitConfirm initConfirm = new InitConfirm();
        isInit = false;
        iapSendInit(initConfirm, pTelecom, applicationID, pJuminNumber, MDN, bpServerIP, bpServerPort, pID, pTID, false);
        if (initConfirm.getResultCode() == 0) {
            byte[] recv = iapReceive(initConfirm);
            if (initConfirm.getResultCode() != 0) {
                initConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                initConfirm.parse(recv);
            }
        }
        return initConfirm;
    }

    protected static synchronized byte iapWrite(byte[] sendBuf) {
        byte b = 0;
        synchronized (IAPNet.class) {
            CommonF.LOGGER.e(TAG, "[ DEBUG ] iapWrite connect(" + connect + ")");
            if (!connect) {
                b = -2;
            } else {
                IAPNetworkUtil.packetDebug(sendBuf, sendBuf.length);
                try {
                    outputStream.write(sendBuf, 0, sendBuf.length);
                    outputStream.flush();
                    CommonF.LOGGER.e(TAG, "[ DEBUG ] iapWrite End  ");
                } catch (SocketTimeoutException e) {
                    CommonF.LOGGER.i(TAG, "[ Exception ] iapWrite() " + e);
                    e.printStackTrace();
                    b = Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_SEND_TIMEOUT_FAIL;
                } catch (IOException e2) {
                    CommonF.LOGGER.i(TAG, "[ Exception ] iapWrite() " + e2);
                    b = -4;
                }
            }
        }
        return b;
    }

    private static synchronized byte[] iapReceive(Confirm confirm) {
        byte[] returnData;
        CommonF.LOGGER.e(TAG, "[ DEBUG ] iapReceive() Header Start (" + isInit + ")");
        if (!isInit) {
            confirm.setResultCode((byte) -6);
            returnData = null;
        } else {
            int receivedBytes = 0;
            try {
                try {
                    byte[] header = new byte[12];
                    while (true) {
                        if (receivedBytes >= 12) {
                            break;
                        }
                        int reads = inputStream.read(header, receivedBytes, header.length - receivedBytes);
                        if (reads != -1) {
                            receivedBytes += reads;
                        } else if (reads == -1) {
                            confirm.setResultCode((byte) -5);
                            returnData = null;
                        }
                    }
                    String datalength = new String(header, 2, 10).trim();
                    if (datalength.length() > 0) {
                        int data_len = Integer.parseInt(datalength);
                        byte[] data = new byte[data_len];
                        int receivedBytes2 = 0;
                        while (receivedBytes2 < data_len) {
                            int reads2 = inputStream.read(data, receivedBytes2, data.length - receivedBytes2);
                            if (reads2 == -1) {
                                break;
                            }
                            receivedBytes2 += reads2;
                        }
                        if (23 != data[data_len - 1]) {
                            CommonF.LOGGER.e(TAG, "[ DEBUG ] IAP_ERR_INVALIDPARITY =");
                            confirm.setResultCode((byte) -8);
                            returnData = null;
                        } else {
                            returnData = new byte[header.length + data.length];
                            System.arraycopy(header, 0, returnData, 0, header.length);
                            System.arraycopy(data, 0, returnData, header.length, data.length - 1);
                            if (confirm != null) {
                                confirm.setResultCode((byte) 0);
                            }
                            IAPNetworkUtil.packetDebug(returnData, header.length + data.length);
                            CommonF.LOGGER.e(TAG, "[ DEBUG ] iapReceive() Success!!  ");
                        }
                    } else {
                        confirm.setResultCode((byte) -5);
                        returnData = null;
                    }
                } catch (SocketTimeoutException e) {
                    CommonF.LOGGER.i(TAG, "[ Exception ] iapReceive() " + e);
                    confirm.setResultCode(Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_RECV_TIMEOUT_FAIL);
                    returnData = null;
                }
            } catch (Exception e2) {
                CommonF.LOGGER.i(TAG, "[ Exception ] iapReceive() " + e2);
                confirm.setResultCode((byte) -5);
                returnData = null;
            }
        }
        return returnData;
    }

    protected static InitConfirm iapConnectBP(ServerInfo info, int telecom, String mcid, String min, String bpServerIP, int bpServerPort) {
        InitConfirm init = new InitConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapConnectBP - Start! isWifi= " + isWifi);
        if (connectBP) {
            init.setResultCode((byte) -1);
        } else {
            try {
                if (isWifi) {
                    SSLContext context = SSLContext.getInstance("TLS");
                    TrustManager[] trustManagers = {new TrustManager()};
                    context.init(null, trustManagers, new SecureRandom());
                    SSLSocketFactory FACTORY = context.getSocketFactory();
                    socketBP = FACTORY.createSocket();
                } else {
                    socketBP = new Socket();
                }
                socketBP.connect(new InetSocketAddress(info.getHostAddress(), info.getPort()), Objects.Skills.BERRYSKILL_INDEX);
                inputStreamBP = socketBP.getInputStream();
                outputStreamBP = socketBP.getOutputStream();
                connectBP = true;
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapConnectBP - Connection Complete!");
                iapSendInitBP(init, telecom, mcid, min, bpServerIP.getBytes(), bpServerPort);
                if (init.getResultCode() != 0 && init.getResultCode() != -7) {
                    init.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                } else {
                    byte[] recv = iapReceiveBP(init);
                    if (init.getResultCode() != 0) {
                        init.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    } else {
                        init.parse(recv);
                    }
                }
            } catch (Exception e) {
                CommonF.LOGGER.i(TAG, "[ Exception ] iapConnectBP() " + e);
                connectBP = false;
                init.setResultCode((byte) -3);
                init.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
            }
        }
        return init;
    }

    protected static int iapCloseBP(boolean isResRelease) {
        try {
            if (inputStreamBP != null) {
                inputStreamBP.close();
            }
        } catch (Exception e) {
        }
        try {
            if (outputStreamBP != null) {
                outputStreamBP.close();
            }
        } catch (Exception e2) {
        }
        try {
            if (socketBP != null) {
                socketBP.close();
            }
        } catch (Exception e3) {
        }
        inputStreamBP = null;
        outputStreamBP = null;
        socketBP = null;
        connectBP = false;
        return 0;
    }

    protected static void iapSendInitBP(InitConfirm init, int pTelecom, String applicationID, String MIN, byte[] ip, int port) {
        byte[] portBytes = String.valueOf(port).getBytes();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendInitBP()  __ Start");
        int packet_len = 12 + 1;
        int packet_len2 = packet_len + 8 + 1 + 10 + 11 + 1;
        if (ip != null) {
            packet_len2 = ip.length + 44;
        }
        int packet_len3 = packet_len2 + 7 + 10;
        if (pTelecom == 2 || pTelecom == 3) {
            packet_len3 = packet_len3 + 2 + 1 + Defines.IAP_SENDBPDATA_PROTOCOL.length();
        }
        int packet_len4 = packet_len3 + 1;
        byte[] packetBytes = new byte[packet_len4];
        for (int i = 0; i < packet_len4; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("IP", packet_len4 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        int offset2 = offset + 1;
        packetBytes[offset] = 71;
        System.arraycopy(Defines.IAP_PROTOCOL_VERSION.getBytes(), 0, packetBytes, offset2, 8);
        int offset3 = offset2 + 8;
        int offset4 = offset3 + 1;
        packetBytes[offset3] = 65;
        System.arraycopy(applicationID.getBytes(), 0, packetBytes, offset4, Math.min(applicationID.getBytes().length, 10));
        int offset5 = offset4 + 10;
        System.arraycopy(MIN.getBytes(), 0, packetBytes, offset5, Math.min(MIN.getBytes().length, 11));
        int offset6 = offset5 + 11;
        if (ip != null) {
            packetBytes[offset6] = (byte) ip.length;
        }
        int offset7 = offset6 + 1;
        if (ip != null) {
            System.arraycopy(ip, 0, packetBytes, offset7, ip.length);
            offset7 = ip.length + 44;
            System.arraycopy(portBytes, 0, packetBytes, offset7, portBytes.length);
        }
        int offset8 = offset7 + 7 + 10;
        if (pTelecom == 2 || pTelecom == 3) {
            String currTelecom = pTelecom == 2 ? Defines.KOR_TELECOM_PACKET.KT_TELECOM : Defines.KOR_TELECOM_PACKET.LG_TELECOM;
            byte[] byte_pTelecom = String.valueOf(currTelecom).getBytes();
            System.arraycopy(byte_pTelecom, 0, packetBytes, offset8, byte_pTelecom.length);
            int offset9 = offset8 + 2;
            int offset10 = offset9 + 1;
            packetBytes[offset9] = (byte) Defines.IAP_SENDBPDATA_PROTOCOL.length();
            byte[] byte_pSendBPData = Defines.IAP_SENDBPDATA_PROTOCOL.getBytes();
            System.arraycopy(byte_pSendBPData, 0, packetBytes, offset10, byte_pSendBPData.length);
            int length = offset10 + byte_pSendBPData.length;
        }
        packetBytes[packet_len4 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWriteBP(packetBytes);
        if (ret != 0) {
            init.setResultCode(ret);
            init.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
        } else {
            init.setResultCode((byte) 0);
        }
    }

    protected static synchronized byte iapWriteBP(byte[] sendBuf) {
        byte b = 0;
        synchronized (IAPNet.class) {
            if (!connectBP) {
                b = -2;
            } else {
                try {
                    outputStreamBP.write(sendBuf, 0, sendBuf.length);
                    outputStreamBP.flush();
                } catch (IOException e) {
                    CommonF.LOGGER.i(TAG, "[ DEBUG ] iapWriteBP() " + e);
                    b = -4;
                }
            }
        }
        return b;
    }

    protected static byte[] iapSendDataBP(byte[] data) {
        DataPacket dp = new DataPacket();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendDataBP()");
        int packet_len = data.length + 12 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("DP", data.length + 1);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        System.arraycopy(data, 0, packetBytes, 12, data.length);
        packetBytes[packet_len - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWriteBP(packetBytes);
        if (ret != 0) {
            return null;
        }
        byte[] recv = iapReceiveBP(dp);
        IAPNetworkUtil.packetDebug(recv, recv.length);
        if (dp.getResultCode() != 0) {
            return null;
        }
        dp.parse(recv);
        return dp.getData();
    }

    private static synchronized byte[] iapReceiveBP(Confirm c) {
        byte[] bArr = null;
        synchronized (IAPNet.class) {
            int receivedBytes = 0;
            try {
                byte[] header = new byte[12];
                while (true) {
                    if (receivedBytes >= 12) {
                        break;
                    }
                    int reads = inputStreamBP.read(header, receivedBytes, header.length - receivedBytes);
                    if (reads != -1) {
                        receivedBytes += reads;
                    } else if (reads == -1) {
                        c.setResultCode((byte) -5);
                    }
                }
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapReceiveBP() Header Receive Complete!");
                String datalength = new String(header, 2, 10).trim();
                if (datalength.length() > 0) {
                    int data_len = Integer.parseInt(datalength);
                    CommonF.LOGGER.i(TAG, "[ DEBUG ] iapReceiveBP() Data Length: " + data_len);
                    byte[] data = new byte[data_len];
                    int receivedBytes2 = 0;
                    while (receivedBytes2 < data_len) {
                        int reads2 = inputStreamBP.read(data, receivedBytes2, data.length - receivedBytes2);
                        if (reads2 == -1) {
                            break;
                        }
                        receivedBytes2 += reads2;
                    }
                    byte b = data[data_len - 1];
                    byte[] returnData = new byte[header.length + data.length];
                    System.arraycopy(header, 0, returnData, 0, header.length);
                    System.arraycopy(data, 0, returnData, header.length, data.length - 1);
                    if (c != null) {
                        c.setResultCode((byte) 0);
                    }
                    IAPNetworkUtil.packetDebug(returnData, header.length + data.length);
                    bArr = returnData;
                } else {
                    c.setResultCode((byte) -5);
                }
            } catch (Exception e) {
                CommonF.LOGGER.i(TAG, "[ Exception ] iapReceiveBP() " + e);
                c.setResultCode((byte) -5);
            }
        }
        return bArr;
    }

    protected static byte[] iapSendData(byte[] data) {
        DataPacket datapacket = new DataPacket();
        CommonF.LOGGER.e(TAG, "[ DEBUG ] iapSendData!!!!() Start ~~~~~~~~~~~~~~~~~~~~");
        int packet_len = data.length + 12 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("DP", data.length + 1);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        System.arraycopy(data, 0, packetBytes, 12, data.length);
        packetBytes[packet_len - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            return null;
        }
        byte[] recv = iapReceive(datapacket);
        if (datapacket.getResultCode() != 0) {
            return null;
        }
        datapacket.parse(recv);
        CommonF.LOGGER.e(TAG, "[ DEBUG ] iapSendData() End~~~~~~~~~~~~~~~~~~~~");
        return datapacket.getData();
    }

    protected static boolean isConnect() {
        return connect;
    }

    protected static boolean isWifi() {
        return isWifi;
    }

    protected static void setWifi(boolean isWifi2) {
        isWifi = isWifi2;
    }

    protected static MsgConfirm iapSendItemQuery(String pID, String pName, String pTID, String pBPInfo) {
        String headerParam = "LP";
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendItemQuery Start()====================");
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemQuery() PID=" + pID);
        int packet_len = 12 + 10;
        int packet_len2 = packet_len + 1;
        if (pName != null) {
            packet_len2 = pName.getBytes().length + 23;
            headerParam = "EP";
            CommonF.LOGGER.i(TAG, "pName: " + pName);
        }
        if (pTID != null) {
            headerParam = "NP";
            packet_len2 = packet_len2 + 100 + 1;
            CommonF.LOGGER.i(TAG, "pTID: " + pTID);
        }
        if (pBPInfo != null) {
            packet_len2 += pBPInfo.getBytes().length;
            CommonF.LOGGER.i(TAG, "pBPInfo: " + pBPInfo);
        }
        int packet_len3 = packet_len2 + 1;
        byte[] packetBytes = new byte[packet_len3];
        for (int i = 0; i < packet_len3; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader(headerParam, packet_len3 - 12);
        IAPNetworkUtil.packetDebug(header, 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = offset + 10;
        if (pName != null && pName.getBytes().length > 122) {
            CommonF.LOGGER.i(TAG, "pName overflow and reset!!");
            pName = InAppError.SUCCESS;
        }
        if (pName != null) {
            packetBytes[offset2] = (byte) pName.getBytes().length;
        }
        int offset3 = offset2 + 1;
        if (pName != null) {
            System.arraycopy(pName.getBytes(), 0, packetBytes, offset3, pName.getBytes().length);
            offset3 = pName.getBytes().length + 23;
        }
        if (pTID != null) {
            System.arraycopy(pTID.getBytes(), 0, packetBytes, offset3, pTID.getBytes().length);
            offset3 = offset3 + 100 + 1;
        }
        if (pBPInfo != null) {
            packetBytes[offset3] = (byte) pBPInfo.getBytes().length;
            System.arraycopy(pBPInfo.getBytes(), 0, packetBytes, offset3, pBPInfo.getBytes().length);
            int length = offset3 + pBPInfo.getBytes().length;
        }
        packetBytes[packet_len3 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendItemQuery End()====================");
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendOCBCardUpdateQuery(String updateType, String OCBCardNum) {
        MsgConfirm OCBInfoCfm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendOCBCardUpdateQuery() Start()====================");
        int packet_len = 12 + 1;
        int i = packet_len + 1;
        int packet_len2 = OCBCardNum.length() + 14;
        int packet_len3 = packet_len2 + 1;
        byte[] packetBytes = new byte[packet_len3];
        for (int i2 = 0; i2 < packet_len3; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("OU", packet_len3 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_updateType = String.valueOf(updateType).getBytes();
        System.arraycopy(byte_updateType, 0, packetBytes, offset, byte_updateType.length);
        int offset2 = offset + 1;
        packetBytes[offset2] = (byte) OCBCardNum.length();
        byte[] byte_encOCBCardNum = String.valueOf(OCBCardNum).getBytes();
        System.arraycopy(byte_encOCBCardNum, 0, packetBytes, offset2 + 1, byte_encOCBCardNum.length);
        int length = OCBCardNum.getBytes().length + 14;
        packetBytes[packet_len3 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            OCBInfoCfm.setResultCode(ret);
            OCBInfoCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(OCBInfoCfm);
            if (OCBInfoCfm.getResultCode() != 0) {
                OCBInfoCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                OCBInfoCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendOCBCardUpdateQuery() End()====================");
            }
        }
        return OCBInfoCfm;
    }

    protected static OKCashbagPointInfoConfirm iapSendOCBPointInfoQuery(String OCBCardNum, String OCBCardPWNum) {
        OKCashbagPointInfoConfirm OCBPointCfm = new OKCashbagPointInfoConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendOKCashbagPointInfoQuery() Start()====================");
        int i = 12 + 1;
        int packet_len = OCBCardNum.length() + 13 + 1 + OCBCardPWNum.length() + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i2 = 0; i2 < packet_len; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("OQ", packet_len - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        packetBytes[offset] = (byte) OCBCardNum.length();
        byte[] byte_entOCBCardNum = String.valueOf(OCBCardNum).getBytes();
        System.arraycopy(byte_entOCBCardNum, 0, packetBytes, offset + 1, byte_entOCBCardNum.length);
        int offset2 = OCBCardNum.getBytes().length + 13;
        int offset3 = offset2 + 1;
        packetBytes[offset2] = (byte) OCBCardPWNum.length();
        byte[] byte_encOCBPWNum = String.valueOf(OCBCardPWNum).getBytes();
        System.arraycopy(byte_encOCBPWNum, 0, packetBytes, offset3, byte_encOCBPWNum.length);
        int length = offset3 + OCBCardPWNum.getBytes().length;
        packetBytes[packet_len - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            OCBPointCfm.setResultCode(ret);
            OCBPointCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(OCBPointCfm);
            if (OCBPointCfm.getResultCode() != 0) {
                OCBPointCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                OCBPointCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendOKCashbagPointInfoQuery() End()====================");
            }
        }
        return OCBPointCfm;
    }

    protected static CultureLandCashConfirm iapSendCultureLandCashInfoQuery(String pID, String cultureLandID, String cultureLandPW) {
        CultureLandCashConfirm CultureLandCashCfm = new CultureLandCashConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendCultureLandCashInfoQuery() Start()====================");
        int packet_len = 12 + 10 + 20 + 50 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("CQ", 81);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = offset + 10;
        byte[] byte_cultureLandID = String.valueOf(cultureLandID).getBytes();
        System.arraycopy(byte_cultureLandID, 0, packetBytes, offset2, byte_cultureLandID.length);
        int offset3 = offset2 + 20;
        byte[] byte_cultureLandPW = String.valueOf(cultureLandPW).getBytes();
        System.arraycopy(byte_cultureLandPW, 0, packetBytes, offset3, byte_cultureLandPW.length);
        int i2 = offset3 + 50;
        packetBytes[92] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            CultureLandCashCfm.setResultCode(ret);
            CultureLandCashCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(CultureLandCashCfm);
            if (CultureLandCashCfm.getResultCode() != 0) {
                CultureLandCashCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                CultureLandCashCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendCultureLandCashInfoQuery() End()====================");
            }
        }
        return CultureLandCashCfm;
    }

    protected static DotoriSmsAuthConfirm iapSendDotoriSmsAuthNumberInfoQuery(String mdn, int pCarrier, String pId) {
        String carrierStr;
        DotoriSmsAuthConfirm DotoriSmsAuthCfm = new DotoriSmsAuthConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendDotoriSmsAuthNumberInfoQuery() Start()====================");
        if (pCarrier == 2) {
            carrierStr = "K";
        } else if (pCarrier == 3) {
            carrierStr = "L";
        } else {
            carrierStr = Objects.Animation.TYPE_SCAIL;
        }
        int packet_len = 12 + 11 + 1 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("DR", 23);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset, byte_pMdn.length);
        int offset2 = offset + 11;
        byte[] byte_pCarrier = String.valueOf(carrierStr).getBytes();
        System.arraycopy(byte_pCarrier, 0, packetBytes, offset2, byte_pCarrier.length);
        int offset3 = offset2 + 1;
        byte[] byte_pPid = String.valueOf(pId).getBytes();
        System.arraycopy(byte_pPid, 0, packetBytes, offset3, byte_pPid.length);
        int i2 = offset3 + 10;
        packetBytes[34] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            DotoriSmsAuthCfm.setResultCode(ret);
            DotoriSmsAuthCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(DotoriSmsAuthCfm);
            if (DotoriSmsAuthCfm.getResultCode() != 0) {
                DotoriSmsAuthCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                DotoriSmsAuthCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendDotoriSmsAuthNumberInfoQuery() End()====================");
            }
        }
        return DotoriSmsAuthCfm;
    }

    protected static MsgConfirm iapSendDotoriSmsAuthInfoQuery(String mdn, String userCode, String mobileSign, String signData, String pId) {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendDotoriSmsAuthInfoQuery() Start()====================");
        int packet_len = 12 + 11;
        int i = packet_len + 6 + 1;
        int packet_len2 = mobileSign.length() + 30;
        int packet_len3 = packet_len2 + 1 + signData.length() + 10 + 1;
        byte[] packetBytes = new byte[packet_len3];
        for (int i2 = 0; i2 < packet_len3; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("DA", packet_len3 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset, byte_pMdn.length);
        int offset2 = offset + 11;
        byte[] byte_pUserCode = String.valueOf(userCode).getBytes();
        System.arraycopy(byte_pUserCode, 0, packetBytes, offset2, byte_pUserCode.length);
        int offset3 = offset2 + 6;
        packetBytes[offset3] = (byte) mobileSign.length();
        byte[] byte_pMobileSign = String.valueOf(mobileSign).getBytes();
        System.arraycopy(byte_pMobileSign, 0, packetBytes, offset3 + 1, byte_pMobileSign.length);
        int offset4 = mobileSign.getBytes().length + 30;
        int offset5 = offset4 + 1;
        packetBytes[offset4] = (byte) signData.length();
        byte[] byte_pSignData = String.valueOf(signData).getBytes();
        System.arraycopy(byte_pSignData, 0, packetBytes, offset5, byte_pSignData.length);
        int offset6 = offset5 + signData.getBytes().length;
        byte[] byte_pPid = String.valueOf(pId).getBytes();
        System.arraycopy(byte_pPid, 0, packetBytes, offset6, byte_pPid.length);
        int i3 = offset6 + 10;
        packetBytes[packet_len3 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendDotoriSmsAuthInfoQuery() End()====================");
            }
        }
        return msgConfirm;
    }

    protected static ItemInfoConfirm iapSendItemInfoQuery(String pID) {
        ItemInfoConfirm itemInfoConfirm = new ItemInfoConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendItemInfoQuery() Start()====================");
        int packet_len = 12 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("GP", 11);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = pID.getBytes().length + 12;
        packetBytes[22] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            itemInfoConfirm.setResultCode(ret);
            itemInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemInfoConfirm);
            if (itemInfoConfirm.getResultCode() != 0) {
                itemInfoConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemInfoConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendItemInfoQuery() End()====================");
            }
        }
        return itemInfoConfirm;
    }

    protected static MsgConfirm iapSendDiscountInfoQuery(ItemInfoConfirm itemInfoConfirm, CultureLandCashConfirm cultureLandCashConfirm, OKCashbagPointInfoConfirm oKCashbagPointInfoConfirm, String OCBCardNum, String OCBPwNum, String cultureLandId, int octUse, int dotoriUse, int cultureUse, int tCashUse) {
        int offset;
        int offset2;
        int offset3;
        int offset4;
        int offset5;
        int offset6;
        int offset7;
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "====================iapSendDiscountInfoQuery() Start()====================");
        CommonF.LOGGER.i(TAG, "OCBUse: " + octUse + ", dotoriUse: " + dotoriUse + ", cultureUse: " + cultureUse + ", tCashUse: " + tCashUse);
        if (OCBCardNum == null) {
            OCBCardNum = InAppError.SUCCESS;
        }
        int packet_len = 12 + 1;
        int i = packet_len + 20 + 12 + 25 + 1 + 6 + 1 + 1 + 11 + 6 + 1 + 1;
        int packet_len2 = OCBCardNum.length() + 98;
        int packet_len3 = packet_len2 + 1;
        if (OCBPwNum != null) {
            packet_len3 += OCBPwNum.length();
        }
        int packet_len4 = packet_len3 + 6 + 1 + 6 + 1;
        byte[] packetBytes = new byte[packet_len4];
        for (int i2 = 0; i2 < packet_len4; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("LM", packet_len4 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset8 = 0 + 12;
        if (cultureUse != 0) {
            packetBytes[offset8] = 89;
            offset = offset8 + 1;
        } else {
            packetBytes[offset8] = 78;
            offset = offset8 + 1;
        }
        if (cultureLandId != null) {
            byte[] byte_cultureLandId = String.valueOf(cultureLandId).getBytes();
            System.arraycopy(byte_cultureLandId, 0, packetBytes, offset, byte_cultureLandId.length);
        }
        int offset9 = offset + 20;
        if (cultureLandCashConfirm != null) {
            byte[] byte_userKey = String.valueOf(cultureLandCashConfirm.getCultureLandUserKey()).getBytes();
            System.arraycopy(byte_userKey, 0, packetBytes, offset9, byte_userKey.length);
        }
        int offset10 = offset9 + 12;
        if (cultureLandCashConfirm != null) {
            byte[] byte_userAuthNum = String.valueOf(cultureLandCashConfirm.getCultureLandUserAuthNum()).getBytes();
            System.arraycopy(byte_userAuthNum, 0, packetBytes, offset10, byte_userAuthNum.length);
        }
        int offset11 = offset10 + 25;
        if (cultureLandCashConfirm != null) {
            byte[] byte_auth = String.valueOf(cultureLandCashConfirm.getCultureLandAuth()).getBytes();
            System.arraycopy(byte_auth, 0, packetBytes, offset11, byte_auth.length);
        }
        int offset12 = offset11 + 1;
        byte[] byte_cultureLandCash = String.valueOf(cultureUse).getBytes();
        System.arraycopy(byte_cultureLandCash, 0, packetBytes, offset12, byte_cultureLandCash.length);
        int offset13 = offset12 + 6;
        if (dotoriUse != 0) {
            offset2 = offset13 + 1;
            packetBytes[offset13] = 89;
        } else {
            offset2 = offset13 + 1;
            packetBytes[offset13] = 78;
        }
        if (itemInfoConfirm != null) {
            if (itemInfoConfirm.getmNCMembershipInfo().equals(Objects.Animation.TYPE_INITIATE)) {
                offset3 = offset2 + 1;
                packetBytes[offset2] = 78;
            } else if (itemInfoConfirm.getmNCMembershipInfo().equals("C")) {
                offset3 = offset2 + 1;
                packetBytes[offset2] = 67;
            } else {
                offset3 = offset2 + 1;
                packetBytes[offset2] = 0;
            }
        } else {
            offset3 = offset2 + 1;
            packetBytes[offset2] = 0;
        }
        if (itemInfoConfirm != null) {
            byte[] byte_NCMenbershipNumber = String.valueOf(itemInfoConfirm.getmNCMembershipNumber()).getBytes();
            System.arraycopy(byte_NCMenbershipNumber, 0, packetBytes, offset3, byte_NCMenbershipNumber.length);
            offset4 = offset3 + 11;
        } else {
            offset4 = offset3 + 11;
        }
        byte[] byte_dotoriCash = String.valueOf(dotoriUse).getBytes();
        System.arraycopy(byte_dotoriCash, 0, packetBytes, offset4, byte_dotoriCash.length);
        int offset14 = offset4 + 6;
        if (octUse != 0) {
            packetBytes[offset14] = 89;
            offset5 = offset14 + 1;
        } else {
            packetBytes[offset14] = 78;
            offset5 = offset14 + 1;
        }
        int offset15 = offset5 + 1;
        packetBytes[offset5] = (byte) OCBCardNum.getBytes().length;
        if (OCBCardNum != null && ((byte) OCBCardNum.length()) != 0) {
            byte[] byte_OCBCardNum = String.valueOf(OCBCardNum).getBytes();
            System.arraycopy(byte_OCBCardNum, 0, packetBytes, offset15, byte_OCBCardNum.length);
            offset15 = OCBCardNum.getBytes().length + 98;
        }
        if (OCBPwNum != null) {
            offset6 = offset15 + 1;
            packetBytes[offset15] = (byte) OCBPwNum.length();
        } else {
            offset6 = offset15 + 1;
        }
        if (OCBPwNum != null) {
            byte[] byte_OCBPwNum = String.valueOf(OCBPwNum).getBytes();
            System.arraycopy(byte_OCBPwNum, 0, packetBytes, offset6, byte_OCBPwNum.length);
            offset6 += OCBPwNum.getBytes().length;
        }
        byte[] byte_Ocb = String.valueOf(octUse).getBytes();
        System.arraycopy(byte_Ocb, 0, packetBytes, offset6, byte_Ocb.length);
        int offset16 = offset6 + 6;
        if (tCashUse != 0) {
            packetBytes[offset16] = 89;
            offset7 = offset16 + 1;
        } else {
            packetBytes[offset16] = 78;
            offset7 = offset16 + 1;
        }
        byte[] byte_TCash = String.valueOf(tCashUse).getBytes();
        System.arraycopy(byte_TCash, 0, packetBytes, offset7, byte_TCash.length);
        int i3 = offset7 + 6;
        packetBytes[packet_len4 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "====================iapSendDiscountInfoQuery() End()====================");
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendItemPurchase(String pID, String pName, Boolean bTCash, String TID, String BPInfo, Boolean bUseBPProtocol) {
        String headerParam;
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemPurchase() bUseBPProtocol = " + bUseBPProtocol + "  START !!!!!!!!");
        int packet_len = 12 + 10;
        if (bUseBPProtocol.booleanValue()) {
            headerParam = "BP";
        } else {
            headerParam = "HP";
            packet_len = packet_len + 1 + 1;
            if (pName != null) {
                packet_len = pName.getBytes().length + 24;
            }
            if (TID != null) {
                headerParam = "OP";
                packet_len = packet_len + 100 + 1;
            }
            if (BPInfo != null) {
                packet_len += BPInfo.getBytes().length;
            }
        }
        int packet_len2 = packet_len + 1;
        byte[] packetBytes = new byte[packet_len2];
        for (int i = 0; i < packet_len2; i++) {
            packetBytes[i] = 0;
        }
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemPurchase()  bTCash=" + bTCash + "// PName=" + (pName == null ? 0 : 1));
        byte[] header = IAPNetworkUtil.iapMakePacketHeader(headerParam, packet_len2 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = offset + 10;
        if (!bUseBPProtocol.booleanValue()) {
            if (bTCash.booleanValue()) {
                packetBytes[offset2] = 89;
            } else {
                packetBytes[offset2] = 78;
            }
            int offset3 = offset2 + 1;
            if (pName != null && pName.getBytes().length > 122) {
                CommonF.LOGGER.i(TAG, "pName overflow and reset!!");
                pName = InAppError.SUCCESS;
            }
            if (pName != null) {
                packetBytes[offset3] = (byte) pName.length();
            }
            int offset4 = offset3 + 1;
            if (pName != null) {
                System.arraycopy(pName.getBytes(), 0, packetBytes, offset4, pName.getBytes().length);
                offset4 = pName.getBytes().length + 24;
            }
            if (TID != null) {
                System.arraycopy(TID.getBytes(), 0, packetBytes, offset4, TID.getBytes().length);
                offset4 += 100;
            }
            if (BPInfo != null) {
                packetBytes[offset4] = (byte) BPInfo.length();
                int offset5 = offset4 + 1;
                System.arraycopy(BPInfo.getBytes(), 0, packetBytes, offset5, BPInfo.getBytes().length);
                int length = offset5 + BPInfo.getBytes().length;
            }
        }
        packetBytes[packet_len2 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm ReIapSendItemPurchaseByDanal(String mdn, String pID, String pName, int pCarrier, String TID, String BPInfo, boolean bUseTCash, String encJumin) {
        String carrierStr;
        int offset;
        int offset2;
        int offset3;
        boolean useXPProtocol = false;
        MsgConfirm itemPurchaseDanalCfm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] ReIapSendItemPurchaseByDanal() STart!! KX");
        int packet_len = 12 + 10;
        int packet_len2 = packet_len + 2 + 11 + 1;
        if (encJumin != null) {
            packet_len2 = encJumin.length() + 36;
        }
        int packet_len3 = packet_len2 + 1;
        if (TID != null || BPInfo != null) {
            useXPProtocol = true;
        }
        int packet_len4 = packet_len3 + 1;
        if (TID != null) {
            packet_len4 += 100;
        }
        int packet_len5 = packet_len4 + 1;
        if (pName != null) {
            packet_len5 += pName.length();
        }
        int packet_len6 = packet_len5 + 1;
        if (BPInfo != null) {
            packet_len6 += BPInfo.length();
        }
        if (pCarrier == 2) {
            carrierStr = Defines.KOR_TELECOM_PACKET.KT_TELECOM;
        } else if (pCarrier == 3) {
            carrierStr = Defines.KOR_TELECOM_PACKET.LG_TELECOM;
        } else {
            carrierStr = Defines.KOR_TELECOM_PACKET.SK_TELECOM;
        }
        byte[] packetBytes = new byte[packet_len6];
        for (int i = 0; i < packet_len6; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("KX", packet_len6 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset4 = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset4, byte_pID.length);
        int offset5 = offset4 + 10;
        byte[] byte_pCarrier = String.valueOf(carrierStr).getBytes();
        System.arraycopy(byte_pCarrier, 0, packetBytes, offset5, byte_pCarrier.length);
        int offset6 = offset5 + 2;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset6, byte_pMdn.length);
        int offset7 = offset6 + 11;
        if (encJumin != null) {
            packetBytes[offset7] = (byte) encJumin.length();
            offset = offset7 + 1;
        } else {
            packetBytes[offset7] = 48;
            offset = offset7 + 1;
        }
        if (encJumin != null) {
            byte[] byte_pJumin = String.valueOf(encJumin).getBytes();
            System.arraycopy(byte_pJumin, 0, packetBytes, offset, byte_pJumin.length);
            offset = encJumin.getBytes().length + 36;
            CommonF.LOGGER.e(TAG, "Jumin length=" + encJumin.length() + "  // Value = " + encJumin);
        }
        int offset8 = offset;
        if (bUseTCash) {
            packetBytes[offset8] = 89;
            offset2 = offset8 + 1;
        } else {
            packetBytes[offset8] = 78;
            offset2 = offset8 + 1;
        }
        if (TID != null) {
            offset3 = offset2 + 1;
            packetBytes[offset2] = (byte) TID.length();
        } else {
            offset3 = offset2 + 1;
            packetBytes[offset2] = 0;
        }
        if (TID != null) {
            System.arraycopy(TID.getBytes(), 0, packetBytes, offset3, TID.getBytes().length);
            offset3 += 100;
        }
        if (pName != null) {
            packetBytes[offset3] = (byte) pName.length();
        }
        int offset9 = offset3 + 1;
        if (pName != null) {
            System.arraycopy(pName.getBytes(), 0, packetBytes, offset9, pName.getBytes().length);
            offset9 += pName.getBytes().length;
        }
        if (useXPProtocol) {
            if (BPInfo != null) {
                packetBytes[offset9] = (byte) BPInfo.length();
            }
            int offset10 = offset9 + 1;
            if (BPInfo != null) {
                System.arraycopy(BPInfo.getBytes(), 0, packetBytes, offset10, BPInfo.getBytes().length);
                int length = offset10 + BPInfo.getBytes().length;
            }
        }
        packetBytes[packet_len6 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        IAPNetworkUtil.packetDebug(packetBytes, packetBytes.length);
        if (ret != 0) {
            itemPurchaseDanalCfm.setResultCode(ret);
            itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemPurchaseDanalCfm);
            if (itemPurchaseDanalCfm.getResultCode() != 0) {
                itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemPurchaseDanalCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] ReIapSendItemPurchaseByDanal()  End !!!!!!!!");
            }
        }
        return itemPurchaseDanalCfm;
    }

    protected static MsgConfirm LguIapSendItemPurchaseByDanal(String mdn, String pID, String pName, int pCarrier, String TID, String BPInfo, boolean bUseTCash, String encJumin) {
        String carrierStr;
        int offset;
        int offset2;
        int offset3;
        int offset4;
        boolean useXPProtocol = false;
        MsgConfirm itemPurchaseDanalCfm = new MsgConfirm();
        String smsAuthNumberKey = IAPLib.getSmsAuthNumberKey();
        String smsAuthKey = IAPLib.getSmsAuthKey();
        if (smsAuthNumberKey != null) {
            CommonF.LOGGER.i(TAG, "LGU+ SMS 인증 여부 Y");
            CommonF.LOGGER.i(TAG, "smsAuthNumberKey: " + smsAuthNumberKey);
            CommonF.LOGGER.i(TAG, "smsAuthKey: " + smsAuthKey);
        } else {
            CommonF.LOGGER.i(TAG, "LGU+ SMS 인증 여부 N");
        }
        CommonF.LOGGER.i(TAG, "[ DEBUG ] LguIapSendItemPurchaseByDanal() STart!! MK");
        int packet_len = 12 + 10;
        int packet_len2 = packet_len + 2 + 11 + 1;
        if (encJumin != null) {
            packet_len2 = encJumin.length() + 36;
        }
        int packet_len3 = packet_len2 + 1;
        if (TID != null || BPInfo != null) {
            useXPProtocol = true;
        }
        int packet_len4 = packet_len3 + 1;
        if (TID != null) {
            packet_len4 += 100;
        }
        int packet_len5 = packet_len4 + 1;
        if (pName != null) {
            packet_len5 += pName.length();
        }
        int packet_len6 = packet_len5 + 1;
        if (BPInfo != null) {
            packet_len6 += BPInfo.length();
        }
        if (smsAuthNumberKey != null) {
            packet_len6 = packet_len6 + 1 + smsAuthNumberKey.length() + 1 + smsAuthKey.length();
        }
        int packet_len7 = packet_len6 + 1;
        if (pCarrier == 2) {
            carrierStr = Defines.KOR_TELECOM_PACKET.KT_TELECOM;
        } else if (pCarrier == 3) {
            carrierStr = Defines.KOR_TELECOM_PACKET.LG_TELECOM;
        } else {
            carrierStr = Defines.KOR_TELECOM_PACKET.SK_TELECOM;
        }
        byte[] packetBytes = new byte[packet_len7];
        for (int i = 0; i < packet_len7; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("MK", packet_len7 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset5 = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset5, byte_pID.length);
        int offset6 = offset5 + 10;
        byte[] byte_pCarrier = String.valueOf(carrierStr).getBytes();
        System.arraycopy(byte_pCarrier, 0, packetBytes, offset6, byte_pCarrier.length);
        int offset7 = offset6 + 2;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset7, byte_pMdn.length);
        int offset8 = offset7 + 11;
        if (encJumin != null) {
            packetBytes[offset8] = (byte) encJumin.length();
            offset = offset8 + 1;
        } else {
            packetBytes[offset8] = 48;
            offset = offset8 + 1;
        }
        if (encJumin != null) {
            byte[] byte_pJumin = String.valueOf(encJumin).getBytes();
            System.arraycopy(byte_pJumin, 0, packetBytes, offset, byte_pJumin.length);
            offset = encJumin.getBytes().length + 36;
            CommonF.LOGGER.e(TAG, "Jumin length=" + encJumin.length() + "  // Value = " + encJumin);
        }
        int offset9 = offset;
        if (bUseTCash) {
            packetBytes[offset9] = 89;
            offset2 = offset9 + 1;
        } else {
            packetBytes[offset9] = 78;
            offset2 = offset9 + 1;
        }
        if (TID != null) {
            offset3 = offset2 + 1;
            packetBytes[offset2] = (byte) TID.length();
        } else {
            offset3 = offset2 + 1;
            packetBytes[offset2] = 0;
        }
        if (TID != null) {
            System.arraycopy(TID.getBytes(), 0, packetBytes, offset3, TID.getBytes().length);
            offset3 += 100;
        }
        if (pName != null) {
            packetBytes[offset3] = (byte) pName.length();
        }
        int offset10 = offset3 + 1;
        if (pName != null) {
            System.arraycopy(pName.getBytes(), 0, packetBytes, offset10, pName.getBytes().length);
            offset10 += pName.getBytes().length;
        }
        if (useXPProtocol) {
            if (BPInfo != null) {
                packetBytes[offset10] = (byte) BPInfo.length();
            }
            int offset11 = offset10 + 1;
            if (BPInfo != null) {
                System.arraycopy(BPInfo.getBytes(), 0, packetBytes, offset11, BPInfo.getBytes().length);
                offset4 = offset11 + BPInfo.getBytes().length;
            } else {
                offset4 = offset11;
            }
        } else {
            offset4 = offset10 + 1;
        }
        if (smsAuthNumberKey != null) {
            int offset12 = offset4 + 1;
            packetBytes[offset4] = (byte) smsAuthNumberKey.length();
            byte[] byte_smsAuthNumberKey = String.valueOf(smsAuthNumberKey).getBytes();
            System.arraycopy(byte_smsAuthNumberKey, 0, packetBytes, offset12, byte_smsAuthNumberKey.length);
            int offset13 = offset12 + smsAuthNumberKey.getBytes().length;
            CommonF.LOGGER.e(TAG, "smsAuthNumberKey=" + smsAuthNumberKey.length() + "  // Value = " + smsAuthNumberKey);
            int offset14 = offset13 + 1;
            packetBytes[offset13] = (byte) smsAuthKey.length();
            byte[] byte_smsAuthKey = String.valueOf(smsAuthKey).getBytes();
            System.arraycopy(byte_smsAuthKey, 0, packetBytes, offset14, byte_smsAuthKey.length);
            int length = offset14 + smsAuthKey.getBytes().length;
            CommonF.LOGGER.e(TAG, "smsAuthKey=" + smsAuthKey.length() + "  // Value = " + smsAuthKey);
        }
        packetBytes[packet_len7 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        IAPNetworkUtil.packetDebug(packetBytes, packetBytes.length);
        if (ret != 0) {
            itemPurchaseDanalCfm.setResultCode(ret);
            itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemPurchaseDanalCfm);
            if (itemPurchaseDanalCfm.getResultCode() != 0) {
                itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemPurchaseDanalCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] LguIapSendItemPurchaseByDanal()  End !!!!!!!!");
                IAPLib.setOTPNumber(null);
            }
        }
        return itemPurchaseDanalCfm;
    }

    protected static MsgConfirm iapSendItemPurchaseByDanal(String mdn, String pID, String pName, int pCarrier, String TID, String BPInfo, boolean bUseTCash, String encJumin) {
        String carrierStr;
        boolean useXPProtocol = false;
        String headerParam = "KP";
        MsgConfirm itemPurchaseDanalCfm = new MsgConfirm();
        int packet_len = 12 + 1;
        if (pName != null) {
            packet_len = pName.length() + 13;
        }
        if (TID != null || BPInfo != null) {
            headerParam = "XP";
            useXPProtocol = true;
            packet_len = packet_len + 100 + 1;
            if (BPInfo != null) {
                packet_len += BPInfo.length();
            }
        }
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemPurchaseByDanal() STart!! " + headerParam);
        int packet_len2 = packet_len + 10 + 2 + 11 + 1 + encJumin.length() + 1 + 1;
        if (pCarrier == 2) {
            carrierStr = Defines.KOR_TELECOM_PACKET.KT_TELECOM;
        } else if (pCarrier == 3) {
            carrierStr = Defines.KOR_TELECOM_PACKET.LG_TELECOM;
        } else {
            carrierStr = Defines.KOR_TELECOM_PACKET.SK_TELECOM;
        }
        byte[] packetBytes = new byte[packet_len2];
        for (int i = 0; i < packet_len2; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader(headerParam, packet_len2 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = offset + 10;
        byte[] byte_pCarrier = String.valueOf(carrierStr).getBytes();
        System.arraycopy(byte_pCarrier, 0, packetBytes, offset2, byte_pCarrier.length);
        int offset3 = offset2 + 2;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset3, byte_pMdn.length);
        int offset4 = offset3 + 11;
        if (TID != null) {
            System.arraycopy(TID.getBytes(), 0, packetBytes, offset4, TID.getBytes().length);
            offset4 += 100;
        }
        if (pName != null) {
            packetBytes[offset4] = (byte) pName.length();
        }
        int offset5 = offset4 + 1;
        if (pName != null) {
            System.arraycopy(pName.getBytes(), 0, packetBytes, offset5, pName.getBytes().length);
            offset5 += pName.getBytes().length;
        }
        if (useXPProtocol) {
            if (BPInfo != null) {
                packetBytes[offset5] = (byte) BPInfo.length();
            }
            offset5++;
            if (BPInfo != null) {
                System.arraycopy(BPInfo.getBytes(), 0, packetBytes, offset5, BPInfo.getBytes().length);
                offset5 += BPInfo.getBytes().length;
            }
        }
        int offset6 = offset5 + 1;
        packetBytes[offset5] = (byte) encJumin.length();
        byte[] byte_pJumin = String.valueOf(encJumin).getBytes();
        System.arraycopy(byte_pJumin, 0, packetBytes, offset6, byte_pJumin.length);
        int offset7 = offset6 + encJumin.getBytes().length;
        CommonF.LOGGER.e("DEBUG", "Jumin=" + encJumin.length() + "  // Value = " + encJumin);
        if (bUseTCash) {
            int i2 = offset7 + 1;
            packetBytes[offset7] = 89;
        } else {
            int i3 = offset7 + 1;
            packetBytes[offset7] = 78;
        }
        packetBytes[packet_len2 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        IAPNetworkUtil.packetDebug(packetBytes, packetBytes.length);
        if (ret != 0) {
            itemPurchaseDanalCfm.setResultCode(ret);
            itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemPurchaseDanalCfm);
            if (itemPurchaseDanalCfm.getResultCode() != 0) {
                itemPurchaseDanalCfm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemPurchaseDanalCfm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemPurchaseByDanal()  End !!!!!!!!");
            }
        }
        return itemPurchaseDanalCfm;
    }

    protected static ItemWholeAuthConfirm iapSendItemWholeAuth() {
        ItemWholeAuthConfirm itemWholeAutchConfirm = new ItemWholeAuthConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemWholeAuth()");
        int packet_len = 12 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("AP", 1);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        packetBytes[12] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            itemWholeAutchConfirm.setResultCode(ret);
            itemWholeAutchConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemWholeAutchConfirm);
            if (itemWholeAutchConfirm.getResultCode() != 0) {
                itemWholeAutchConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemWholeAutchConfirm.parse(recv);
            }
        }
        return itemWholeAutchConfirm;
    }

    protected static ItemUseConfirm iapSendItemUse(String pID) {
        ItemUseConfirm itemUseConfirmMsg = new ItemUseConfirm();
        int packet_len = 12 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("MP", 11);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        packetBytes[22] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            itemUseConfirmMsg.setResultCode(ret);
            itemUseConfirmMsg.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(itemUseConfirmMsg);
            if (itemUseConfirmMsg.getResultCode() != 0) {
                itemUseConfirmMsg.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                itemUseConfirmMsg.parse(recv);
            }
        }
        return itemUseConfirmMsg;
    }

    protected static MsgConfirm iapSendDataMembership(int pTelecom, String pMdn) {
        MsgConfirm msgConfirm = new MsgConfirm();
        String modelName = Build.MODEL;
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendItemMembership()");
        int packet_len = 12 + 2 + 11 + 1;
        if ((pTelecom == 2 || pTelecom == 3) && modelName != null) {
            packet_len = modelName.getBytes().length > 64 ? packet_len + 64 : modelName.getBytes().length + 26;
        }
        int packet_len2 = packet_len + 1;
        byte[] packetBytes = new byte[packet_len2];
        for (int i = 0; i < packet_len2; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader(ILibMode.SP, packet_len2 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        if (pTelecom == 1) {
            byte[] byte_pTelecom = String.valueOf(Defines.KOR_TELECOM_PACKET.SK_TELECOM).getBytes();
            System.arraycopy(byte_pTelecom, 0, packetBytes, offset, byte_pTelecom.length);
        } else if (pTelecom == 2) {
            byte[] byte_pTelecom2 = String.valueOf(Defines.KOR_TELECOM_PACKET.KT_TELECOM).getBytes();
            System.arraycopy(byte_pTelecom2, 0, packetBytes, offset, byte_pTelecom2.length);
        } else if (pTelecom == 3) {
            byte[] byte_pTelecom3 = String.valueOf(Defines.KOR_TELECOM_PACKET.LG_TELECOM).getBytes();
            System.arraycopy(byte_pTelecom3, 0, packetBytes, offset, byte_pTelecom3.length);
        }
        int offset2 = offset + 2;
        byte[] byte_pMdn = String.valueOf(pMdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset2, byte_pMdn.length);
        int offset3 = offset2 + 11;
        if (pTelecom == 1) {
            packetBytes[offset3] = 0;
            CommonF.LOGGER.e(TAG, "[ DEBUG ] byte_modelLength = " + ((int) packetBytes[25]));
        } else {
            packetBytes[offset3] = (byte) modelName.length();
        }
        int offset4 = offset3 + 1;
        if (pTelecom == 2 || pTelecom == 3) {
            byte[] byte_pModelName = String.valueOf(modelName).getBytes();
            System.arraycopy(byte_pModelName, 0, packetBytes, offset4, byte_pModelName.length);
            offset4 = byte_pModelName.length + 26;
        }
        int i2 = offset4 + 1;
        packetBytes[packet_len2 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendAutoPurchaseDismiss(String pID) {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendPurchaseDismiss()");
        int packet_len = 12 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("JP", 11);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        packetBytes[22] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendPurchaseDismiss() End");
            }
        }
        return msgConfirm;
    }

    protected static AutoPurchaseDismissCheckConfirm iapSendAutoPurchaseDismissCheck(String pID) {
        AutoPurchaseDismissCheckConfirm autoPurchaseDismissCheckConfirm = new AutoPurchaseDismissCheckConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendPurchaseDismissCheck()");
        int packet_len = 12 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("CP", 11);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pID).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        packetBytes[22] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            autoPurchaseDismissCheckConfirm.setResultCode(ret);
            autoPurchaseDismissCheckConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(autoPurchaseDismissCheckConfirm);
            if (autoPurchaseDismissCheckConfirm.getResultCode() != 0) {
                autoPurchaseDismissCheckConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                autoPurchaseDismissCheckConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendPurchaseDismissCheck() End");
            }
        }
        return autoPurchaseDismissCheckConfirm;
    }

    protected static MsgConfirm iapSendOTPAgreeCheck(String agree) {
        MsgConfirm msgConfirm = new MsgConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendOTPAgreeCheck() Start");
        int packet_len = 12 + 1 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("TP", 2);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_agreeCheck = String.valueOf(agree).getBytes();
        System.arraycopy(byte_agreeCheck, 0, packetBytes, offset, byte_agreeCheck.length);
        packetBytes[13] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendOTPAgreeCheck()  End");
            }
        }
        return msgConfirm;
    }

    protected static LGUSmsAuthNumberConfirm iapSendLGUSmsAuthNumberReq(String pId, int pCarrier, String mdn, String encJumin) {
        String carrierStr;
        LGUSmsAuthNumberConfirm msgConfirm = new LGUSmsAuthNumberConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendLGUSmsAuthNumberReq() Start");
        int packet_len = 12 + 10;
        int i = packet_len + 2 + 11 + 1;
        int packet_len2 = encJumin.length() + 36;
        int packet_len3 = packet_len2 + 6 + 1;
        if (pCarrier == 2) {
            carrierStr = Defines.KOR_TELECOM_PACKET.KT_TELECOM;
        } else if (pCarrier == 3) {
            carrierStr = Defines.KOR_TELECOM_PACKET.LG_TELECOM;
        } else {
            carrierStr = Defines.KOR_TELECOM_PACKET.SK_TELECOM;
        }
        byte[] packetBytes = new byte[packet_len3];
        for (int i2 = 0; i2 < packet_len3; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("MR", packet_len3 - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pID = String.valueOf(pId).getBytes();
        System.arraycopy(byte_pID, 0, packetBytes, offset, byte_pID.length);
        int offset2 = offset + 10;
        byte[] byte_pCarrier = String.valueOf(carrierStr).getBytes();
        System.arraycopy(byte_pCarrier, 0, packetBytes, offset2, byte_pCarrier.length);
        int offset3 = offset2 + 2;
        byte[] byte_pMdn = String.valueOf(mdn).getBytes();
        System.arraycopy(byte_pMdn, 0, packetBytes, offset3, byte_pMdn.length);
        int offset4 = offset3 + 11;
        packetBytes[offset4] = (byte) encJumin.length();
        byte[] byte_pJumin = String.valueOf(encJumin).getBytes();
        System.arraycopy(byte_pJumin, 0, packetBytes, offset4 + 1, byte_pJumin.length);
        int offset5 = encJumin.getBytes().length + 36;
        CommonF.LOGGER.e("DEBUG", "Jumin=" + encJumin.length() + "  // Value = " + encJumin);
        byte[] byte_pPostPay = String.valueOf(SingletonCounter.getInstance().getmPostPay()).getBytes();
        System.arraycopy(byte_pPostPay, 0, packetBytes, offset5, byte_pPostPay.length);
        int i3 = offset5 + 6;
        SingletonCounter.getInstance().clear();
        packetBytes[packet_len3 - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendLGUSmsAuthNumberReq()  End");
            }
        }
        return msgConfirm;
    }

    protected static MsgConfirm iapSendLGUSmsAuthReq(String smsAuthKey, String OTPNumber) {
        LGUSmsAuthNumberConfirm msgConfirm = new LGUSmsAuthNumberConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendLGUSmsAuthReq() Start");
        int i = 12 + 1;
        int packet_len = smsAuthKey.length() + 13 + 1 + OTPNumber.length() + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i2 = 0; i2 < packet_len; i2++) {
            packetBytes[i2] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("MA", packet_len - 12);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        packetBytes[offset] = (byte) smsAuthKey.length();
        byte[] byte_smsAuthKey = String.valueOf(smsAuthKey).getBytes();
        System.arraycopy(byte_smsAuthKey, 0, packetBytes, offset + 1, byte_smsAuthKey.length);
        int offset2 = smsAuthKey.getBytes().length + 13;
        CommonF.LOGGER.e("DEBUG", "smsAuthKey: " + smsAuthKey.length() + "  // Value = " + smsAuthKey);
        int offset3 = offset2 + 1;
        packetBytes[offset2] = (byte) OTPNumber.length();
        byte[] byte_OTPNumber = String.valueOf(OTPNumber).getBytes();
        System.arraycopy(byte_OTPNumber, 0, packetBytes, offset3, byte_OTPNumber.length);
        int length = offset3 + OTPNumber.getBytes().length;
        CommonF.LOGGER.e("DEBUG", "OTPNumber: " + OTPNumber.length() + "  // Value = " + OTPNumber);
        packetBytes[packet_len - 1] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            msgConfirm.setResultCode(ret);
            msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(msgConfirm);
            if (msgConfirm.getResultCode() != 0) {
                msgConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                msgConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendLGUSmsAuthReq()  End");
            }
        }
        return msgConfirm;
    }

    protected static SellerInfoConfirm iapSendSellerInfoReq(String pId) {
        SellerInfoConfirm sellerInfogConfirm = new SellerInfoConfirm();
        CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendSellerInfoReq() Start");
        int packet_len = 12 + 10 + 1;
        byte[] packetBytes = new byte[packet_len];
        for (int i = 0; i < packet_len; i++) {
            packetBytes[i] = 0;
        }
        byte[] header = IAPNetworkUtil.iapMakePacketHeader("BK", 11);
        System.arraycopy(header, 0, packetBytes, 0, header.length);
        int offset = 0 + 12;
        byte[] byte_pId = String.valueOf(pId).getBytes();
        System.arraycopy(byte_pId, 0, packetBytes, offset, byte_pId.length);
        int i2 = offset + 10;
        packetBytes[22] = Defines.IAP_PARITY_BIT;
        byte ret = iapWrite(packetBytes);
        if (ret != 0) {
            sellerInfogConfirm.setResultCode(ret);
            sellerInfogConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
        } else {
            byte[] recv = iapReceive(sellerInfogConfirm);
            if (sellerInfogConfirm.getResultCode() != 0) {
                sellerInfogConfirm.SetUserMessage(CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            } else {
                sellerInfogConfirm.parse(recv);
                CommonF.LOGGER.i(TAG, "[ DEBUG ] iapSendSellerInfoReq()  End");
            }
        }
        return sellerInfogConfirm;
    }
}
