package com.freerdp.freerdpcore.application;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.Log;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.presentation.ApplicationSettingsActivity;
import com.freerdp.freerdpcore.services.BookmarkDB;
import com.freerdp.freerdpcore.services.HistoryDB;
import com.freerdp.freerdpcore.services.LibFreeRDP;
import com.freerdp.freerdpcore.services.ManualBookmarkGateway;
import com.freerdp.freerdpcore.services.QuickConnectHistoryGateway;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class GlobalApp extends Application implements LibFreeRDP.EventListener {
    public static final String ACTION_EVENT_FREERDP = "com.freerdp.freerdp.event.freerdp";
    public static boolean ConnectedTo3G = false;
    public static final String EVENT_ERROR = "EVENT_ERROR";
    public static final String EVENT_PARAM = "EVENT_PARAM";
    public static final String EVENT_STATUS = "EVENT_STATUS";
    public static final String EVENT_TYPE = "EVENT_TYPE";
    public static final int FREERDP_EVENT_CONNECTION_FAILURE = 2;
    public static final int FREERDP_EVENT_CONNECTION_SUCCESS = 1;
    public static final int FREERDP_EVENT_DISCONNECTED = 3;
    private static final String TAG = "GlobalApp";
    private static BookmarkDB bookmarkDB;
    private static Timer disconnectTimer;
    private static HistoryDB historyDB;
    private static ManualBookmarkGateway manualBookmarkGateway;
    private static QuickConnectHistoryGateway quickConnectHistoryGateway;
    private static Map<Long, SessionState> sessionMap;

    public static ManualBookmarkGateway getManualBookmarkGateway() {
        return manualBookmarkGateway;
    }

    public static QuickConnectHistoryGateway getQuickConnectHistoryGateway() {
        return quickConnectHistoryGateway;
    }

    public void startDisconnectTimer() {
        int disconnectTimeout = ApplicationSettingsActivity.getDisconnectTimeout(this);
        if (disconnectTimeout > 0) {
            Timer timer = new Timer();
            disconnectTimer = timer;
            timer.schedule(new DisconnectTask(), disconnectTimeout * 60000);
        }
    }

    public static void cancelDisconnectTimer() {
        Timer timer = disconnectTimer;
        if (timer != null) {
            timer.cancel();
            disconnectTimer.purge();
            disconnectTimer = null;
        }
    }

    public static SessionState createSession(BookmarkBase bookmarkBase, Context context) {
        SessionState sessionState = new SessionState(LibFreeRDP.newInstance(context), bookmarkBase);
        sessionMap.put(Long.valueOf(sessionState.getInstance()), sessionState);
        return sessionState;
    }

    public static SessionState createSession(Uri uri, Context context) {
        SessionState sessionState = new SessionState(LibFreeRDP.newInstance(context), uri);
        sessionMap.put(Long.valueOf(sessionState.getInstance()), sessionState);
        return sessionState;
    }

    public static SessionState getSession(long j) {
        return sessionMap.get(Long.valueOf(j));
    }

    public static Collection<SessionState> getSessions() {
        return new ArrayList(sessionMap.values());
    }

    public static void freeSession(long j) {
        if (sessionMap.containsKey(Long.valueOf(j))) {
            sessionMap.remove(Long.valueOf(j));
            LibFreeRDP.freeInstance(j);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ApplicationSettingsActivity.get(this);
        sessionMap = Collections.synchronizedMap(new HashMap());
        LibFreeRDP.setEventListener(this);
        bookmarkDB = new BookmarkDB(this);
        manualBookmarkGateway = new ManualBookmarkGateway(bookmarkDB);
        historyDB = new HistoryDB(this);
        quickConnectHistoryGateway = new QuickConnectHistoryGateway(historyDB);
        ConnectedTo3G = NetworkStateReceiver.isConnectedTo3G(this);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(new ScreenReceiver(), intentFilter);
    }

    private void sendRDPNotification(int i, long j) {
        Intent intent = new Intent(ACTION_EVENT_FREERDP);
        intent.putExtra(EVENT_TYPE, i);
        intent.putExtra(EVENT_PARAM, j);
        sendBroadcast(intent);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnPreConnect(long j) {
        Log.v(TAG, "OnPreConnect");
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnConnectionSuccess(long j) {
        Log.v(TAG, "OnConnectionSuccess");
        sendRDPNotification(1, j);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnConnectionFailure(long j) {
        Log.v(TAG, "OnConnectionFailure");
        sendRDPNotification(2, j);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnDisconnecting(long j) {
        Log.v(TAG, "OnDisconnecting");
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnDisconnected(long j) {
        Log.v(TAG, "OnDisconnected");
        sendRDPNotification(3, j);
    }

    private static class DisconnectTask extends TimerTask {
        private DisconnectTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.v("DisconnectTask", "Doing action");
            Iterator<SessionState> it = GlobalApp.getSessions().iterator();
            while (it.hasNext()) {
                LibFreeRDP.disconnect(it.next().getInstance());
            }
        }
    }
}
