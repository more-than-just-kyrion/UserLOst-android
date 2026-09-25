package com.termux.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import com.iiordanov.bVNC.Constants;
import com.termux.terminal.EmulatorDebug;
import com.termux.terminal.TerminalSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import net.sqlcipher.database.SQLiteDatabase;
import tech.ula.customlibrary.R;
import tech.ula.library.utils.NotificationConstructor;

/* JADX INFO: loaded from: classes2.dex */
public final class TermuxService extends Service implements TerminalSession.SessionChangedCallback {
    public static final String ACTION_EXECUTE = "android.intent.action.EXECUTE";
    private static final String ACTION_LOCK_WAKE = "com.termux.service_wake_lock";
    private static final String ACTION_STOP_SERVICE = "com.termux.service_stop";
    private static final String ACTION_UNLOCK_WAKE = "com.termux.service_wake_unlock";
    public static final String EXTRA_ARGUMENTS = "com.termux.execute.arguments";
    public static final String EXTRA_CURRENT_WORKING_DIRECTORY = "com.termux.execute.cwd";
    public static final String EXTRA_EXECUTE_IN_BACKGROUND = "com.termux.execute.background";
    private static final String NOTIFICATION_CHANNEL_ID = "UserLOst";
    private static final int NOTIFICATION_ID = 2000;
    public static String filesPath;
    public static String homePath;
    public static String prefixPath;
    public static String supportPath;
    TerminalSession.SessionChangedCallback mSessionChangeCallback;
    private PowerManager.WakeLock mWakeLock;
    private WifiManager.WifiLock mWifiLock;
    private String TAG = "TermuxService";
    private final IBinder mBinder = new LocalBinder();
    private final Handler mHandler = new Handler();
    String username = "";
    String hostname = "";
    String port = "";
    String sessionName = "";
    String password = "";
    final List<TerminalSession> mTerminalSessions = new ArrayList();
    final List<BackgroundJob> mBackgroundTasks = new ArrayList();
    boolean mWantsToStop = false;
    String GROUP_KEY_USERLAND = NotificationConstructor.GROUP_KEY_USERLAND;

    class LocalBinder extends Binder {
        public final TermuxService service;

        LocalBinder() {
            this.service = TermuxService.this;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action = intent.getAction();
        if (ACTION_STOP_SERVICE.equals(action)) {
            this.mWantsToStop = true;
            for (int i3 = 0; i3 < this.mTerminalSessions.size(); i3++) {
                this.mTerminalSessions.get(i3).finishIfRunning();
            }
            stopSelf();
            return 2;
        }
        if (ACTION_LOCK_WAKE.equals(action)) {
            if (this.mWakeLock != null) {
                return 2;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService("power")).newWakeLock(1, this.TAG + ":termux");
            this.mWakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.acquire();
            WifiManager.WifiLock wifiLockCreateWifiLock = ((WifiManager) getApplicationContext().getSystemService("wifi")).createWifiLock(3, this.TAG + ":termux");
            this.mWifiLock = wifiLockCreateWifiLock;
            wifiLockCreateWifiLock.acquire();
            updateNotification();
            return 2;
        }
        if (ACTION_UNLOCK_WAKE.equals(action)) {
            PowerManager.WakeLock wakeLock = this.mWakeLock;
            if (wakeLock == null) {
                return 2;
            }
            wakeLock.release();
            this.mWakeLock = null;
            this.mWifiLock.release();
            this.mWifiLock = null;
            updateNotification();
            return 2;
        }
        if (!ACTION_EXECUTE.equals(action)) {
            if (action == null) {
                return 2;
            }
            Log.e(EmulatorDebug.LOG_TAG, "Unknown TermuxService action: '" + action + "'");
            return 2;
        }
        this.username = intent.getStringExtra("username");
        this.password = intent.getStringExtra(Constants.testpassword);
        this.hostname = intent.getStringExtra("hostname");
        this.port = intent.getStringExtra("port");
        this.sessionName = intent.getStringExtra("sessionName");
        if (this.username.isEmpty() || this.password.isEmpty() || this.hostname.isEmpty() || this.port.isEmpty() || this.sessionName.isEmpty()) {
            Log.e(EmulatorDebug.LOG_TAG, "Currently only intents from UserLOst are supported");
            return 2;
        }
        startActivity(new Intent(this, (Class<?>) TermuxActivity.class).addFlags(SQLiteDatabase.CREATE_IF_NECESSARY));
        return 2;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        filesPath = getFilesDir().getAbsolutePath();
        supportPath = filesPath + "/support/";
        prefixPath = filesPath + "/usr";
        homePath = filesPath + "/home";
        startForeground(NOTIFICATION_ID, buildNotification());
    }

    void updateNotification() {
        if (this.mWakeLock == null && this.mTerminalSessions.isEmpty() && this.mBackgroundTasks.isEmpty()) {
            stopSelf();
        } else {
            ((NotificationManager) getSystemService("notification")).notify(NOTIFICATION_ID, buildNotification());
        }
    }

    private Notification buildNotification() {
        int i;
        Intent intent = new Intent(this, (Class<?>) TermuxActivity.class);
        intent.addFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 33554432);
        int size = this.mTerminalSessions.size();
        int size2 = this.mBackgroundTasks.size();
        String str = size + " session" + (size == 1 ? "" : "s");
        if (size2 > 0) {
            str = str + ", " + size2 + " task" + (size2 != 1 ? "s" : "");
        }
        boolean z = this.mWakeLock != null;
        if (z) {
            str = str + " (wake lock held)";
        }
        Notification.Builder builder = new Notification.Builder(this);
        builder.setContentTitle(getText(R.string.app_name));
        builder.setContentText(str);
        builder.setSmallIcon(R.drawable.ic_stat_icon);
        builder.setContentIntent(activity);
        builder.setOngoing(true);
        builder.setGroup(this.GROUP_KEY_USERLAND);
        builder.setPriority(z ? 1 : -1);
        builder.setShowWhen(false);
        builder.setColor(-10453621);
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId("UserLOst");
        }
        Resources resources = getResources();
        builder.addAction(android.R.drawable.ic_delete, resources.getString(com.termux.R.string.notification_action_exit), PendingIntent.getService(this, 0, new Intent(this, (Class<?>) TermuxService.class).setAction(ACTION_STOP_SERVICE), 33554432));
        Intent action = new Intent(this, (Class<?>) TermuxService.class).setAction(z ? ACTION_UNLOCK_WAKE : ACTION_LOCK_WAKE);
        if (z) {
            i = com.termux.R.string.notification_action_wake_unlock;
        } else {
            i = com.termux.R.string.notification_action_wake_lock;
        }
        builder.addAction(z ? android.R.drawable.ic_lock_idle_lock : android.R.drawable.ic_lock_lock, resources.getString(i), PendingIntent.getService(this, 0, action, 33554432));
        return builder.build();
    }

    @Override // android.app.Service
    public void onDestroy() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.release();
        }
        WifiManager.WifiLock wifiLock = this.mWifiLock;
        if (wifiLock != null) {
            wifiLock.release();
        }
        stopForeground(true);
        for (int i = 0; i < this.mTerminalSessions.size(); i++) {
            this.mTerminalSessions.get(i).finishIfRunning();
        }
    }

    public List<TerminalSession> getSessions() {
        return this.mTerminalSessions;
    }

    TerminalSession createTermSession(String str, String[] strArr, String str2, boolean z) {
        new File(homePath).mkdirs();
        if (str2 == null) {
            str2 = homePath;
        }
        String[] strArrBuildEnvironment = BackgroundJob.buildEnvironment(z, str2, filesPath, homePath, prefixPath, this.password);
        String[] strArr2 = new String[1];
        String[] strArr3 = BackgroundJob.setupProcessArgs(new File(supportPath + "busybox").getAbsolutePath(), new String[]{"sh", "-c", supportPath + "dbclient -y -y " + this.username + "@" + this.hostname + "/" + this.port}, prefixPath);
        String str3 = strArr3[0];
        int iLastIndexOf = str3.lastIndexOf(47);
        String str4 = "" + (iLastIndexOf == -1 ? str3 : str3.substring(iLastIndexOf + 1));
        String[] strArr4 = new String[strArr3.length];
        strArr4[0] = str4;
        if (strArr3.length > 1) {
            System.arraycopy(strArr3, 1, strArr4, 1, strArr3.length - 1);
        }
        TerminalSession terminalSession = new TerminalSession(str3, str2, strArr4, strArrBuildEnvironment, this);
        terminalSession.mSessionName = this.sessionName;
        this.mTerminalSessions.add(terminalSession);
        updateNotification();
        Intent intent = new Intent("com.termux.app.reload_style");
        intent.putExtra("com.termux.app.reload_style", "styling");
        sendBroadcast(intent);
        return terminalSession;
    }

    public int removeTermSession(TerminalSession terminalSession) {
        int iIndexOf = this.mTerminalSessions.indexOf(terminalSession);
        this.mTerminalSessions.remove(iIndexOf);
        if (this.mTerminalSessions.isEmpty() && this.mWakeLock == null) {
            stopSelf();
        } else {
            updateNotification();
        }
        return iIndexOf;
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onTitleChanged(TerminalSession terminalSession) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onTitleChanged(terminalSession);
        }
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onSessionFinished(TerminalSession terminalSession) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onSessionFinished(terminalSession);
        }
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onTextChanged(TerminalSession terminalSession) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onTextChanged(terminalSession);
        }
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onClipboardText(TerminalSession terminalSession, String str) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onClipboardText(terminalSession, str);
        }
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onBell(TerminalSession terminalSession) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onBell(terminalSession);
        }
    }

    @Override // com.termux.terminal.TerminalSession.SessionChangedCallback
    public void onColorsChanged(TerminalSession terminalSession) {
        TerminalSession.SessionChangedCallback sessionChangedCallback = this.mSessionChangeCallback;
        if (sessionChangedCallback != null) {
            sessionChangedCallback.onColorsChanged(terminalSession);
        }
    }

    public void onBackgroundJobExited(final BackgroundJob backgroundJob) {
        this.mHandler.post(new Runnable() { // from class: com.termux.app.TermuxService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onBackgroundJobExited$0(backgroundJob);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackgroundJobExited$0(BackgroundJob backgroundJob) {
        this.mBackgroundTasks.remove(backgroundJob);
        updateNotification();
    }
}
