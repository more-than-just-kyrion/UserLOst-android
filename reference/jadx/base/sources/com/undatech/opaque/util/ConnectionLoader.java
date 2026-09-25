package com.undatech.opaque.util;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.iiordanov.bVNC.AbstractConnectionBean;
import com.iiordanov.bVNC.ConnectionBean;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.Database;
import com.iiordanov.util.PermissionsManager;
import com.undatech.opaque.Connection;
import com.undatech.opaque.ConnectionSettings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionLoader {
    private static String TAG = "ConnectionLoader";
    private Activity activity;
    private Context appContext;
    private String[] connectionPreferenceFiles;
    private boolean connectionsInSharedPrefs;
    private int numConnections = 0;
    private Map<String, Connection> connectionsById = new HashMap();
    private PermissionsManager permissionsManager = new PermissionsManager();

    public ConnectionLoader(Context context, Activity activity, boolean z) {
        this.appContext = context;
        this.connectionsInSharedPrefs = z;
        this.activity = activity;
        load();
    }

    public void load() {
        this.permissionsManager.requestPermissions(this.activity, false);
        if (this.connectionsInSharedPrefs) {
            loadFromSharedPrefs();
        } else {
            loadFromDatabase();
        }
    }

    private void loadFromDatabase() {
        Database database = new Database(this.appContext);
        SQLiteDatabase writableDatabase = database.getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        ConnectionBean.getAll(writableDatabase, AbstractConnectionBean.GEN_TABLE_NAME, arrayList, ConnectionBean.newInstance);
        Collections.sort(arrayList);
        this.numConnections = arrayList.size();
        if (arrayList.size() == 0) {
            Log.i(TAG, "No connections in the database");
        } else {
            for (int i = 0; i < arrayList.size(); i++) {
                Connection connection = (Connection) arrayList.get(i);
                connection.setRuntimeId(Integer.toString(i));
                this.connectionsById.put(Integer.toString(i), connection);
            }
        }
        database.close();
    }

    private void loadFromSharedPrefs() {
        String string = this.appContext.getSharedPreferences(Constants.generalSettingsTag, 0).getString("connections", null);
        Log.d(TAG, "Loading connections from this list: " + string);
        if (string == null || string.equals("")) {
            return;
        }
        String[] strArrSplit = string.split(" ");
        this.connectionPreferenceFiles = strArrSplit;
        this.numConnections = strArrSplit.length;
        for (int i = 0; i < this.numConnections; i++) {
            ConnectionSettings connectionSettings = new ConnectionSettings(this.connectionPreferenceFiles[i]);
            connectionSettings.setRuntimeId(Integer.toString(i));
            connectionSettings.load(this.appContext);
            Log.d(TAG, "Adding label: " + connectionSettings.getLabel());
            this.connectionsById.put(Integer.toString(i), connectionSettings);
        }
    }

    public boolean isConnectionsInSharedPrefs() {
        return this.connectionsInSharedPrefs;
    }

    public String[] getConnectionPreferenceFiles() {
        return this.connectionPreferenceFiles;
    }

    public int getNumConnections() {
        return this.numConnections;
    }

    public Map<String, Connection> getConnectionsById() {
        return this.connectionsById;
    }
}
