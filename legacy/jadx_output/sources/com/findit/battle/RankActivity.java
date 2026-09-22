package com.findit.battle;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.findit.battle.finals.LOG;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class RankActivity extends Activity {
    public static final String KEY_URL = "url";
    public static final String SERVER_URL_RANK = "http://14.63.220.39/app/member/rankList?userId=";
    public static GameView mgameView;
    private String uri = null;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.ranking);
        getWindow().setLayout(FindItApplication.getDisplayScreenWidth(), FindItApplication.getDisplayScreenHeight());
        Bundle extra = getIntent().getExtras();
        if (extra != null) {
            this.uri = null;
            this.uri = extra.getString("url");
        }
        fillrankList();
    }

    private void fillrankList() {
        ArrayList<rankinfo> list = new ArrayList<>();
        try {
            String line = getStringFromUrl(this.uri);
            LOG.debug(this.uri);
            JSONObject jsonObject = new JSONObject(line);
            JSONArray jsonArray = new JSONArray(jsonObject.getString(GameActivity.JSON_NAME_IMAGES_LIST));
            LOG.debug(new StringBuilder().append(jsonArray.length()).toString());
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject subJsonObject = jsonArray.getJSONObject(i);
                list.add(new rankinfo(String.valueOf(subJsonObject.getString("ranking")) + "위", subJsonObject.getString("friendId"), String.valueOf(subJsonObject.getString("sumpoint")) + "점"));
            }
            LOG.debug(new StringBuilder().append(list.size()).toString());
        } catch (Exception e) {
        }
        ListView lv = (ListView) findViewById(R.id.rankListView);
        rankListAdapter adapter = new rankListAdapter(this, R.layout.rank_listrow, list);
        lv.setAdapter((ListAdapter) adapter);
    }

    class rankinfo {
        public String mRanking;
        public String mSumpoint;
        public String mUserid;

        public rankinfo(String mRanking, String mUserid, String mSumpoint) {
            this.mRanking = mRanking;
            this.mUserid = mUserid;
            this.mSumpoint = mSumpoint;
        }
    }

    public String getStringFromUrl(String url) throws UnsupportedEncodingException {
        LOG.debug("랭킹페이지 이동1");
        BufferedReader brd = new BufferedReader(new InputStreamReader(getInputStreamFromUrl(url), "UTF-8"));
        LOG.debug(url);
        StringBuffer sbf = new StringBuffer();
        while (true) {
            try {
                String line = brd.readLine();
                if (line == null) {
                    break;
                }
                sbf.append(line);
                LOG.debug(line);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sbf.toString();
    }

    public static InputStream getInputStreamFromUrl(String url) {
        LOG.debug("랭킹페이지 이동2");
        InputStream contentStream = null;
        try {
            HttpClient httpClient = new DefaultHttpClient();
            HttpResponse response = httpClient.execute(new HttpGet(url));
            LOG.debug(url);
            contentStream = response.getEntity().getContent();
            LOG.debug(new StringBuilder().append(contentStream).toString());
            return contentStream;
        } catch (Exception e) {
            e.printStackTrace();
            return contentStream;
        }
    }

    class rankListAdapter extends ArrayAdapter<rankinfo> {
        private int mResource;

        public rankListAdapter(Context context, int resource, List<rankinfo> items) {
            super(context, resource, items);
            this.mResource = resource;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            LayoutInflater inflater = LayoutInflater.from(getContext());
            View itemview = inflater.inflate(R.layout.rank_listrow, (ViewGroup) null);
            LOG.debug(new StringBuilder().append(itemview).toString());
            rankinfo item = getItem(position);
            LOG.debug(item.mRanking);
            LOG.debug(item.mSumpoint);
            TextView textView = (TextView) itemview.findViewById(R.id.rankTextView);
            textView.setText(item.mRanking);
            TextView textView2 = (TextView) itemview.findViewById(R.id.idTextView);
            textView2.setText(item.mUserid);
            TextView textView3 = (TextView) itemview.findViewById(R.id.scoreTextView);
            textView3.setText(item.mSumpoint);
            return itemview;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        LOG.debug("999999999999999999999ddddddd이벤트");
        setResult(-1);
        finish();
        return true;
    }
}
