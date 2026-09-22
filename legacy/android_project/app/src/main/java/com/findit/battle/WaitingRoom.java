package com.findit.battle;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.findit.battle.finals.LOG;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class WaitingRoom {
    private int mButtonClickSize;
    private ConnectNetwork mConnectNetwork;
    private Context mContext;
    private GameView mGameView;
    private ListView mListView;
    public Dialog mMainDlg;

    public WaitingRoom(Context context, GameView gameview, int displaywidth, int displayheight) {
        LOG.verbose(">> WaitingRoom()");
        GameActivity gameactivity = (GameActivity) context;
        this.mContext = context;
        this.mConnectNetwork = gameactivity.mConnectNetwork;
        this.mGameView = gameview;
        this.mMainDlg = createMainDlg(context, displaywidth, displayheight);
        this.mListView = (ListView) this.mMainDlg.findViewById(R.id.UserListView);
        this.mButtonClickSize = (int) context.getResources().getDimension(R.dimen.buttonclick_size);
    }

    public void exit() {
        LOG.verbose(">> exit()");
    }

    private class doSendSocketMsgTask extends AsyncTask<String, Void, String> {
        private doSendSocketMsgTask() {
        }

        /* synthetic */ doSendSocketMsgTask(WaitingRoom waitingRoom, doSendSocketMsgTask dosendsocketmsgtask) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... msg) {
            if (msg != null && msg.length > 1) {
                String strMsg = msg[0];
                String strSinglePlay = msg[1];
                if (!WaitingRoom.this.mConnectNetwork.sendSocketMsg(strMsg)) {
                    ((GameActivity) WaitingRoom.this.mContext).mCommonDlg.cancelProgressDlg();
                    Toast.makeText(WaitingRoom.this.mContext, "Network disconnected, try again!", 0).show();
                } else if ("true".equals(strSinglePlay)) {
                    WaitingRoom.this.mGameView.enterBattleRoom(GameView.CHARACTER_AI, 2);
                    WaitingRoom.this.mMainDlg.cancel();
                }
            }
            return null;
        }
    }

    private Dialog createMainDlg(Context context, int displaywidth, int displayheight) {
        LOG.verbose(">> createMainDlg()");
        Dialog dialog = new Dialog(context);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        Bitmap bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
        bitmap.setPixel(0, 0, Color.parseColor("#e9e0c2"));
        ByteArrayOutputStream bytearray = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, bytearray);
        ByteArrayInputStream in = new ByteArrayInputStream(bytearray.toByteArray());
        bitmap.recycle();
        window.setBackgroundDrawable(Drawable.createFromStream(in, GameActivity.JSON_NAME_IMAGES_IMG));
        dialog.setContentView(R.layout.waitingroom);
        LinearLayout layout = (LinearLayout) dialog.findViewById(R.id.BgLayout);
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) layout.getLayoutParams();
        params.width = displaywidth;
        params.height = displayheight;
        Button button = (Button) dialog.findViewById(R.id.MakeBattleRoomButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.WaitingRoom.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick():대전방 만들기");
                LOG.error("mConnectNetwork.isConnectSocket(): " + WaitingRoom.this.mConnectNetwork.isConnectSocket());
                ((GameActivity) WaitingRoom.this.mContext).mCommonDlg.showProgressDlg();
                if (WaitingRoom.this.mConnectNetwork == null) {
                    LOG.info("mConnectNetwork is null and get mConnectNetwork");
                    WaitingRoom.this.mConnectNetwork = ((GameActivity) WaitingRoom.this.mContext).mConnectNetwork;
                }
                String length = WaitingRoom.this.mGameView.getLengthText("|101|".length());
                LOG.error("MakeBattleRoomButton: " + length + "|101|");
                new doSendSocketMsgTask(WaitingRoom.this, null).execute(String.valueOf(length) + "|101|", "true");
            }
        });
        button.setOnTouchListener(makeButtonOnTouchListener());
        Button button2 = (Button) dialog.findViewById(R.id.RefreshButton);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.WaitingRoom.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick()");
                WaitingRoom.this.getUserList(WaitingRoom.this.mGameView.mEmail);
            }
        });
        button2.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.WaitingRoom.3
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                LOG.verbose(">> onClick()");
                int size = WaitingRoom.this.mButtonClickSize;
                switch (event.getAction()) {
                    case 0:
                        WaitingRoom.this.setMargin(v, size, 0, size, 0);
                        return false;
                    case 1:
                        WaitingRoom.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                    case 2:
                    default:
                        return false;
                    case 3:
                        WaitingRoom.this.setMargin(v, -size, 0, -size, 0);
                        return false;
                }
            }
        });
        Button button3 = (Button) dialog.findViewById(R.id.NetworkButton);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.WaitingRoom.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LOG.verbose(">> onClick()");
                v.setBackgroundResource(R.drawable.tab_left_active);
                WaitingRoom.this.getUserList(WaitingRoom.this.mGameView.mEmail);
            }
        });
        button3.setOnTouchListener(makeButtonOnTouchListener());
        float subheight = context.getResources().getDimension(R.dimen.linevt_height);
        int subwidth = (int) context.getResources().getDimension(R.dimen.linevt_width);
        int length = (int) ((displayheight * 0.8f) / subheight);
        LinearLayout layout2 = (LinearLayout) dialog.findViewById(R.id.LineLayout);
        LinearLayout.LayoutParams params2 = new LinearLayout.LayoutParams(subwidth, (int) subheight);
        for (int i = 0; i < length; i++) {
            ImageView imageview = new ImageView(context);
            imageview.setLayoutParams(params2);
            imageview.setBackgroundResource(R.drawable.line_vt_0);
            layout2.addView(imageview);
        }
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.findit.battle.WaitingRoom.5
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface arg0, int arg1, KeyEvent arg2) {
                LOG.verbose(">> onKey()");
                switch (arg1) {
                    case 4:
                        WaitingRoom.this.mGameView.enterMainMenu(-1);
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            return false;
                        }
                        break;
                }
                return false;
            }
        });
        return dialog;
    }

    public void getUserList(String email) {
        LOG.verbose(">> getUserList() email: " + email);
        ((GameActivity) this.mContext).mCommonDlg.showProgressDlg();
        if (this.mConnectNetwork == null) {
            LOG.info("++ getUserList() mConnectNetwork is null and get mConnectNetwork");
            this.mConnectNetwork = ((GameActivity) this.mContext).mConnectNetwork;
        }
        String sendmsg = "|100|" + email;
        String length = this.mGameView.getLengthText(sendmsg.length());
        LOG.error("getUserList: " + length + sendmsg);
        new doSendSocketMsgTask(this, null).execute(String.valueOf(length) + sendmsg, "false");
    }

    public void enterBattleRoom(String roomname) {
        LOG.verbose(">> enterBattleRoom() roomname: " + roomname);
        if (this.mConnectNetwork == null) {
            LOG.info("mConnectNetwork is null and get mConnectNetwork");
            this.mConnectNetwork = ((GameActivity) this.mContext).mConnectNetwork;
        }
        this.mGameView.mRoomName = roomname;
        ((GameActivity) this.mContext).mCommonDlg.showProgressDlg();
        String sendmsg = "|103|" + roomname;
        String length = this.mGameView.getLengthText(sendmsg.length());
        LOG.error("StartGameButton: " + length + sendmsg);
        new doSendSocketMsgTask(this, null).execute(String.valueOf(length) + sendmsg, "false");
    }

    private View.OnTouchListener makeButtonOnTouchListener() {
        return new View.OnTouchListener() { // from class: com.findit.battle.WaitingRoom.6
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                LOG.verbose(">> onTouch()");
                int size = WaitingRoom.this.mButtonClickSize;
                switch (event.getAction()) {
                    case 0:
                        WaitingRoom.this.setMargin(v, 0, size, 0, size);
                        return false;
                    case 1:
                        WaitingRoom.this.setMargin(v, 0, -size, 0, -size);
                        return false;
                    case 2:
                    default:
                        return false;
                    case 3:
                        WaitingRoom.this.setMargin(v, 0, -size, 0, -size);
                        return false;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMargin(View v, int left, int top, int right, int bottom) {
        LOG.verbose(">> setMargin()");
        try {
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) v.getLayoutParams();
            params.leftMargin += left;
            params.topMargin += top;
            params.rightMargin += right;
            params.bottomMargin += bottom;
            v.setLayoutParams(params);
        } catch (Exception e) {
            RelativeLayout.LayoutParams params2 = (RelativeLayout.LayoutParams) v.getLayoutParams();
            params2.leftMargin += left;
            params2.topMargin += top;
            params2.rightMargin += right;
            params2.bottomMargin += bottom;
            v.setLayoutParams(params2);
        }
    }

    public void clearData() {
        LOG.verbose(">> clearData()");
        this.mListView.setAdapter((ListAdapter) null);
    }

    public void fillData(String data) {
        LOG.verbose(">> fillData() data: " + data);
        RoomAdapter adapter = new RoomAdapter(this.mContext, R.layout.user_listrow, getRoomData(data, ","));
        this.mListView.setAdapter((ListAdapter) adapter);
    }

    public void addData(String roomName, int userNum) {
        LOG.verbose(">> addData() roomName: " + roomName + " userNum: " + userNum);
        RoomData roomData = new RoomData();
        roomData.mName = roomName;
        roomData.mUserNum = userNum;
        RoomAdapter adapter = (RoomAdapter) this.mListView.getAdapter();
        int pos = adapter.getPosition(roomData);
        if (pos >= 0) {
            adapter.remove(roomData);
            adapter.insert(roomData, pos);
        } else {
            adapter.add(roomData);
        }
    }

    public void removeData(String roomName) {
        LOG.verbose(">> removeData() roomName: " + roomName);
        RoomData roomData = new RoomData();
        roomData.mName = roomName;
        RoomAdapter adapter = (RoomAdapter) this.mListView.getAdapter();
        adapter.remove(roomData);
        if (roomName.equals(this.mGameView.mRoomName)) {
            this.mGameView.mRoomName = this.mGameView.mEmail;
        }
    }

    class RoomAdapter extends ArrayAdapter<RoomData> {
        private int mResource;

        public RoomAdapter(Context context, int resource, ArrayList<RoomData> items) {
            super(context, resource, items);
            LOG.verbose(">> RoomAdapter()");
            this.mResource = resource;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            LOG.verbose(">> getView()");
            LinearLayout itemview = new LinearLayout(getContext());
            LayoutInflater vi = (LayoutInflater) getContext().getSystemService("layout_inflater");
            vi.inflate(this.mResource, (ViewGroup) itemview, true);
            final RoomData item = getItem(position);
            ImageView imageview = (ImageView) itemview.findViewById(R.id.CharacterImageView);
            imageview.setBackgroundDrawable(WaitingRoom.this.mGameView.mObjects.mCharacter[1].mImgPng[3]);
            TextView textview = (TextView) itemview.findViewById(R.id.UserIdTextView);
            textview.setText(item.mName);
            Button button = (Button) itemview.findViewById(R.id.StartGameButton);
            button.setTag(item.mName);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.WaitingRoom.RoomAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    LOG.verbose(">> getView():대전방 들어가기 요청");
                    if (item.mUserNum > 1) {
                        Toast.makeText(WaitingRoom.this.mContext, "On game, cannot enter", 0).show();
                    } else {
                        WaitingRoom.this.enterBattleRoom(v.getTag().toString());
                    }
                }
            });
            button.setOnTouchListener(new View.OnTouchListener() { // from class: com.findit.battle.WaitingRoom.RoomAdapter.2
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View v, MotionEvent event) {
                    LOG.verbose(">> onTouch()");
                    int size = WaitingRoom.this.mButtonClickSize;
                    switch (event.getAction()) {
                        case 0:
                            WaitingRoom.this.setMargin(v, size, 0, size, 0);
                            return false;
                        case 1:
                            WaitingRoom.this.setMargin(v, -size, 0, -size, 0);
                            return false;
                        case 2:
                        default:
                            return false;
                        case 3:
                            WaitingRoom.this.setMargin(v, -size, 0, -size, 0);
                            return false;
                    }
                }
            });
            if (item.mUserNum > 1) {
                button.setBackgroundResource(R.drawable.list_stat_playing);
            } else {
                button.setBackgroundResource(R.drawable.list_btn_game);
            }
            return itemview;
        }
    }

    class RoomData {
        public String mName;
        public int mUserNum;

        RoomData() {
        }

        public boolean equals(Object o) {
            LOG.verbose(">> equals()");
            if (o instanceof RoomData) {
                RoomData t = (RoomData) o;
                if ((this.mName == null && t.mName == null) || this.mName.equals(t.mName)) {
                    return true;
                }
            }
            return false;
        }
    }

    private ArrayList<RoomData> getRoomData(String text, String devider) {
        LOG.verbose(">> getRoomData() text: " + text + " devider: " + devider);
        ArrayList<RoomData> list = new ArrayList<>();
        int length = text.length();
        int startindex = 0;
        while (true) {
            if (startindex >= length) {
                break;
            }
            RoomData room = new RoomData();
            int index = text.indexOf(devider, startindex);
            if (index < 0) {
                room.mName = text.substring(startindex);
                break;
            }
            room.mName = text.substring(startindex, index);
            int startindex2 = index + 1;
            if (startindex2 == length) {
                room.mName = GameView.CHARACTER_AI;
            }
            int index2 = text.indexOf(devider, startindex2);
            if (index2 < 0) {
                room.mUserNum = Integer.parseInt(text.substring(startindex2));
                list.add(room);
                break;
            }
            room.mUserNum = Integer.parseInt(text.substring(startindex2, index2));
            startindex = index2 + 1;
            if (startindex == length) {
                room.mUserNum = 0;
            }
            list.add(room);
        }
        return list;
    }
}
