package com.kt.olleh.inapp.net;

import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
public class HttpClient {
    private HttpClient() {
    }

    public static HttpClient getInstance(int connectTimeout, int soTimeout, int bufferSize, String userAgent) {
        HttpClient client = new HttpClient();
        return client;
    }

    public HttpResponse sendPost(String url) {
        return null;
    }

    public HttpResponse sendPost(String url, boolean isUpdateCookie, String serverType) {
        return null;
    }

    public HttpResponse sendPost(String url, String ssoCookie) {
        return null;
    }

    public int getLastError() {
        return 0;
    }
}
