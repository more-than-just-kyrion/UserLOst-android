package com.freerdp.freerdpcore.services;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes.dex */
public class HistoryDB extends SQLiteOpenHelper {
    private static final String DB_NAME = "history.db";
    private static final int DB_VERSION = 1;
    public static final String QUICK_CONNECT_TABLE_COL_ITEM = "item";
    public static final String QUICK_CONNECT_TABLE_COL_TIMESTAMP = "timestamp";
    public static final String QUICK_CONNECT_TABLE_NAME = "quick_connect_history";

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public HistoryDB(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE quick_connect_history (item TEXT PRIMARY KEY, timestamp INTEGER);");
    }
}
