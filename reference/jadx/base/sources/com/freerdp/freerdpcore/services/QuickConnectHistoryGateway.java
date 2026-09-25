package com.freerdp.freerdpcore.services;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.QuickConnectBookmark;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class QuickConnectHistoryGateway {
    private static final String TAG = "QuickConnectHistoryGateway";
    private SQLiteOpenHelper historyDB;

    public QuickConnectHistoryGateway(SQLiteOpenHelper sQLiteOpenHelper) {
        this.historyDB = sQLiteOpenHelper;
    }

    public ArrayList<BookmarkBase> findHistory(String str) {
        Cursor cursorQuery = getReadableDatabase().query(HistoryDB.QUICK_CONNECT_TABLE_NAME, new String[]{HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM}, str.length() > 0 ? "item LIKE '%" + str + "%'" : null, null, null, null, "timestamp");
        ArrayList<BookmarkBase> arrayList = new ArrayList<>(cursorQuery.getCount());
        if (cursorQuery.moveToFirst()) {
            do {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM));
                QuickConnectBookmark quickConnectBookmark = new QuickConnectBookmark();
                quickConnectBookmark.setLabel(string);
                quickConnectBookmark.setHostname(string);
                arrayList.add(quickConnectBookmark);
            } while (cursorQuery.moveToNext());
        }
        cursorQuery.close();
        return arrayList;
    }

    public void addHistoryItem(String str) {
        try {
            getWritableDatabase().execSQL("INSERT OR REPLACE INTO quick_connect_history (item, timestamp) VALUES('" + str + "', datetime('now'))");
        } catch (SQLException e) {
            Log.v(TAG, e.toString());
        }
    }

    public boolean historyItemExists(String str) {
        Cursor cursorQuery = getReadableDatabase().query(HistoryDB.QUICK_CONNECT_TABLE_NAME, new String[]{HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM}, "item = '" + str + "'", null, null, null, null);
        boolean z = cursorQuery.getCount() == 1;
        cursorQuery.close();
        return z;
    }

    public void removeHistoryItem(String str) {
        getWritableDatabase().delete(HistoryDB.QUICK_CONNECT_TABLE_NAME, "item = '" + str + "'", null);
    }

    private SQLiteDatabase getWritableDatabase() {
        return this.historyDB.getWritableDatabase();
    }

    private SQLiteDatabase getReadableDatabase() {
        try {
            return this.historyDB.getReadableDatabase();
        } catch (SQLiteException unused) {
            return this.historyDB.getWritableDatabase();
        }
    }
}
