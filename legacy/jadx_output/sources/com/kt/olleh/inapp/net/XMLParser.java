package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.Config.Config;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class XMLParser {
    private static final String TAG = "XMLParser";

    public static Response parseXML(InputStream in, String API) {
        Response resDIListExpand;
        if (Config.DEBUG) {
            Config.LogI(TAG, "parseXML() start");
        }
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        if (factory == null) {
            return null;
        }
        try {
            DocumentBuilder builder = factory.newDocumentBuilder();
            if (builder == null) {
                Config.LogI(TAG, "builder is null");
                resDIListExpand = null;
            } else {
                Document dom = builder.parse(in);
                if (dom == null) {
                    Config.LogI(TAG, "dom is null");
                    resDIListExpand = null;
                } else {
                    Element root = dom.getDocumentElement();
                    if (root == null) {
                        Config.LogI(TAG, "root is null");
                        resDIListExpand = null;
                    } else {
                        NodeList list = root.getChildNodes();
                        if (list == null) {
                            Config.LogI(TAG, "list is null");
                            resDIListExpand = null;
                        } else if (API.equalsIgnoreCase("getSymKeyGen")) {
                            resDIListExpand = new ResGetSymKeyGen();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getUseDiList) || API.equalsIgnoreCase(InAppAPI.getDownloadDiList)) {
                            resDIListExpand = new ResDIListExpand();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getItemStatus)) {
                            resDIListExpand = new ResDIStatus();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getBuyDiList) || API.equalsIgnoreCase(InAppAPI.getAllDiList) || API.equalsIgnoreCase(InAppAPI.getGiftDiList) || API.equalsIgnoreCase(InAppAPI.getReceiveDiList)) {
                            resDIListExpand = new ResDIList();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getDiDetail)) {
                            resDIListExpand = new ResDIDetail();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getBuyDiUrl) || API.equalsIgnoreCase(InAppAPI.getGiftDiUrl)) {
                            resDIListExpand = new ResBuyDIUrl();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.buyDi) || API.equalsIgnoreCase(InAppAPI.buyCancelDi) || API.equalsIgnoreCase(InAppAPI.giftDi) || API.equalsIgnoreCase(InAppAPI.reGiftDi) || API.equalsIgnoreCase(InAppAPI.approvedUseDi)) {
                            resDIListExpand = new ResDIBuy();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getDownUrl)) {
                            resDIListExpand = new ResDIDownUrl();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getDownAuth)) {
                            resDIListExpand = new ResDIDownAuth();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.downSucProc)) {
                            resDIListExpand = new ResDownSucProc();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.esBuyDi)) {
                            resDIListExpand = new ResDIesBuy();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.approvedDownDi)) {
                            resDIListExpand = new ResDIApproveDown();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.getFile)) {
                            resDIListExpand = new ResDIGetFile();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.checkShowId)) {
                            resDIListExpand = new ResCheckShowId();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.checkCoin)) {
                            resDIListExpand = new ResCheckCoin();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.check_balance)) {
                            resDIListExpand = new ResCheckBalance();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.checkUserId)) {
                            resDIListExpand = new ResCheckUserId();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.checkPin)) {
                            resDIListExpand = new ResCheckPin();
                            resDIListExpand.parseXML(list);
                        } else if (API.equalsIgnoreCase(InAppAPI.setPin)) {
                            resDIListExpand = new ResSetPin();
                            resDIListExpand.parseXML(list);
                        } else {
                            resDIListExpand = null;
                        }
                    }
                }
            }
            return resDIListExpand;
        } catch (IOException e) {
            Config.LogD(TAG, "parsing() : " + e.toString(), e);
            return null;
        } catch (ParserConfigurationException e2) {
            Config.LogD(TAG, e2.toString(), e2);
            return null;
        } catch (SAXException e3) {
            Config.LogD(TAG, e3.toString(), e3);
            return null;
        }
    }

    public static ResponseOld parseXML_OLD(InputStream in, String API) {
        if (Config.DEBUG) {
            Config.LogI(TAG, "parseXML() start");
        }
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        if (factory == null) {
            return null;
        }
        try {
            DocumentBuilder builder = factory.newDocumentBuilder();
            if (builder == null) {
                if (Config.DEBUG) {
                    Config.LogI(TAG, "builder is null");
                }
                return null;
            }
            Document dom = builder.parse(in);
            if (dom == null) {
                if (Config.DEBUG) {
                    Config.LogI(TAG, "dom is null");
                }
                return null;
            }
            Element root = dom.getDocumentElement();
            if (root == null) {
                if (Config.DEBUG) {
                    Config.LogI(TAG, "root is null");
                }
                return null;
            }
            NodeList list = root.getChildNodes();
            if (list == null) {
                if (Config.DEBUG) {
                    Config.LogI(TAG, "list is null");
                }
                return null;
            }
            if (!API.equalsIgnoreCase(InAppAPI.esBuyDi)) {
                return null;
            }
            ResponseOld res = new ResponseOld();
            res.parseXML(list);
            return res;
        } catch (IOException e) {
            Config.LogD(TAG, "parsing() : " + e.toString(), e);
            return null;
        } catch (ParserConfigurationException e2) {
            Config.LogD(TAG, e2.toString(), e2);
            return null;
        } catch (SAXException e3) {
            Config.LogD(TAG, e3.toString(), e3);
            return null;
        }
    }

    private static void print(NodeList list, int depth) {
        int len;
        if (list != null && (len = list.getLength()) > 0) {
            for (int i = 0; i < len; i++) {
                Node item = list.item(i);
                if (Config.DEBUG) {
                    Config.LogD(TAG, "[" + depth + "] " + item.getNodeName() + ":" + item.getNodeValue() + ":" + ((int) item.getNodeType()));
                }
                print(item.getChildNodes(), depth + 1);
            }
        }
    }
}
