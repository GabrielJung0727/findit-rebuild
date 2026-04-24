package com.kt.olleh.inapp;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TimerService extends Service {
    private static final int TIMER_PERIOD = 1800000;
    private Handler mHandler;
    private boolean mRunning;
    private int mStartId;
    private String packageName = GameView.CHARACTER_AI;

    @Override // android.app.Service
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mHandler = new Handler();
        this.mRunning = false;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int startId) {
        TimerTask timerTask = null;
        super.onStart(intent, startId);
        this.mStartId = startId;
        if (!this.mRunning) {
            Context context = getApplicationContext();
            this.packageName = context.getPackageName();
            Config.isTimerRunning = true;
            this.mHandler.postDelayed(new Runnable() { // from class: com.kt.olleh.inapp.TimerService.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TimerService.this.mRunning) {
                        Config.isTimerRunning = false;
                        TimerService.this.mRunning = false;
                        Config.mPin = GameView.CHARACTER_AI;
                    }
                }
            }, 1800000L);
            this.mRunning = true;
            if (Build.VERSION.SDK_INT < 11) {
                new TimerTask(this, timerTask).execute(new Void[0]);
            } else {
                new TimerTask(this, timerTask).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mRunning = false;
        Config.isTimerRunning = false;
        Config.mPin = GameView.CHARACTER_AI;
        super.onDestroy();
    }

    private class TimerTask extends AsyncTask<Void, Void, Void> {
        private TimerTask() {
        }

        /* synthetic */ TimerTask(TimerService timerService, TimerTask timerTask) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void result) {
            TimerService.this.onDestroy();
            super.onPostExecute(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... arg0) {
            loop0: while (true) {
                if (TimerService.this.mRunning) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    Context context = TimerService.this.getApplicationContext();
                    ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                    List<ActivityManager.RunningTaskInfo> info = activityManager.getRunningTasks(10);
                    boolean result = false;
                    Iterator<ActivityManager.RunningTaskInfo> it = info.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningTaskInfo runningTaskInfo = it.next();
                        String currentTask = runningTaskInfo.baseActivity.getPackageName();
                        if (currentTask == null || GameView.CHARACTER_AI.equals(currentTask)) {
                            break loop0;
                        }
                        if (TimerService.this.packageName.equals(currentTask)) {
                            result = true;
                            break;
                        }
                    }
                    if (!result) {
                        TimerService.this.onDestroy();
                        break;
                    }
                }
            }
            TimerService.this.onDestroy();
            return null;
        }
    }
}
