package com.iiordanov.pubkeygenerator;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RobustSQLiteOpenHelper extends SQLiteOpenHelper {
    private static List<String> mTableNames = new LinkedList();
    private static List<String> mIndexNames = new LinkedList();

    public abstract void onRobustUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLiteException;

    public RobustSQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    protected static void addTableName(String str) {
        mTableNames.add(str);
    }

    protected static void addIndexName(String str) {
        mIndexNames.add(str);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        dropAllTables(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            try {
                onRobustUpgrade(sQLiteDatabase, i, i2);
            } catch (SQLiteException unused) {
                dropAndCreateTables(sQLiteDatabase);
            }
        } catch (SQLiteException unused2) {
            regenerateTables(sQLiteDatabase);
        }
    }

    private void regenerateTables(SQLiteDatabase sQLiteDatabase) {
        dropAllTablesWithPrefix(sQLiteDatabase, "OLD_");
        for (String str : mTableNames) {
            sQLiteDatabase.execSQL("ALTER TABLE " + str + " RENAME TO OLD_" + str);
        }
        onCreate(sQLiteDatabase);
        Iterator<String> it = mTableNames.iterator();
        while (it.hasNext()) {
            repopulateTable(sQLiteDatabase, it.next());
        }
        dropAllTablesWithPrefix(sQLiteDatabase, "OLD_");
    }

    private void repopulateTable(SQLiteDatabase sQLiteDatabase, String str) {
        String tableColumnNames = getTableColumnNames(sQLiteDatabase, str);
        StringBuilder sb = new StringBuilder("INSERT INTO ");
        sb.append(str).append(" (").append(tableColumnNames).append(") SELECT ").append(tableColumnNames).append(" FROM OLD_").append(str);
        sQLiteDatabase.execSQL(sb.toString());
    }

    private String getTableColumnNames(SQLiteDatabase sQLiteDatabase, String str) {
        StringBuilder sb = new StringBuilder();
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
        while (cursorRawQuery.moveToNext()) {
            if (!cursorRawQuery.isFirst()) {
                sb.append(", ");
            }
            sb.append(cursorRawQuery.getString(1));
        }
        cursorRawQuery.close();
        return sb.toString();
    }

    private void dropAndCreateTables(SQLiteDatabase sQLiteDatabase) {
        dropAllTables(sQLiteDatabase);
        onCreate(sQLiteDatabase);
    }

    private void dropAllTablesWithPrefix(SQLiteDatabase sQLiteDatabase, String str) {
        Iterator<String> it = mIndexNames.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + str + it.next());
        }
        Iterator<String> it2 = mTableNames.iterator();
        while (it2.hasNext()) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str + it2.next());
        }
    }

    private void dropAllTables(SQLiteDatabase sQLiteDatabase) {
        dropAllTablesWithPrefix(sQLiteDatabase, "");
    }
}
