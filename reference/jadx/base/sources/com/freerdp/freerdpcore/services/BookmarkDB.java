package com.freerdp.freerdpcore.services;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BookmarkDB extends SQLiteOpenHelper {
    private static final String DB_BACKUP_PREFIX = "temp_";
    static final String DB_KEY_BOOKMARK_3G_ENABLE = "enable_3g_settings";
    static final String DB_KEY_BOOKMARK_ASYNC_CHANNEL = "async_channel";
    static final String DB_KEY_BOOKMARK_ASYNC_INPUT = "async_input";
    static final String DB_KEY_BOOKMARK_ASYNC_UPDATE = "async_update";
    static final String DB_KEY_BOOKMARK_CONSOLE_MODE = "console_mode";
    static final String DB_KEY_BOOKMARK_DEBUG_LEVEL = "debug_level";
    static final String DB_KEY_BOOKMARK_DOMAIN = "domain";
    static final String DB_KEY_BOOKMARK_GW_DOMAIN = "gateway_domain";
    static final String DB_KEY_BOOKMARK_GW_ENABLE = "enable_gateway_settings";
    static final String DB_KEY_BOOKMARK_GW_HOSTNAME = "gateway_hostname";
    static final String DB_KEY_BOOKMARK_GW_PASSWORD = "gateway_password";
    static final String DB_KEY_BOOKMARK_GW_PORT = "gateway_port";
    static final String DB_KEY_BOOKMARK_GW_USERNAME = "gateway_username";
    static final String DB_KEY_BOOKMARK_HOSTNAME = "hostname";
    static final String DB_KEY_BOOKMARK_LABEL = "label";
    static final String DB_KEY_BOOKMARK_PASSWORD = "password";
    static final String DB_KEY_BOOKMARK_PORT = "port";
    static final String DB_KEY_BOOKMARK_REDIRECT_MICROPHONE = "redirect_microphone";
    static final String DB_KEY_BOOKMARK_REDIRECT_SDCARD = "redirect_sdcard";
    static final String DB_KEY_BOOKMARK_REDIRECT_SOUND = "redirect_sound";
    static final String DB_KEY_BOOKMARK_REMOTE_PROGRAM = "remote_program";
    static final String DB_KEY_BOOKMARK_SECURITY = "security";
    static final String DB_KEY_BOOKMARK_USERNAME = "username";
    static final String DB_KEY_BOOKMARK_WORK_DIR = "work_dir";
    static final String DB_KEY_PERFORMANCE_COMPOSITION = "perf_desktop_composition";
    static final String DB_KEY_PERFORMANCE_DRAG = "perf_full_window_drag";
    static final String DB_KEY_PERFORMANCE_FLAGS = "performance_flags";
    static final String DB_KEY_PERFORMANCE_FLAGS_3G = "performance_3g";
    static final String DB_KEY_PERFORMANCE_FONTS = "perf_font_smoothing";
    static final String DB_KEY_PERFORMANCE_GFX = "perf_gfx";
    static final String DB_KEY_PERFORMANCE_H264 = "perf_gfx_h264";
    static final String DB_KEY_PERFORMANCE_MENU_ANIMATIONS = "perf_menu_animations";
    static final String DB_KEY_PERFORMANCE_RFX = "perf_remotefx";
    static final String DB_KEY_PERFORMANCE_THEME = "perf_theming";
    static final String DB_KEY_PERFORMANCE_WALLPAPER = "perf_wallpaper";
    static final String DB_KEY_SCREEN_COLORS = "colors";
    static final String DB_KEY_SCREEN_HEIGHT = "height";
    static final String DB_KEY_SCREEN_RESOLUTION = "resolution";
    static final String DB_KEY_SCREEN_SETTINGS = "screen_settings";
    static final String DB_KEY_SCREEN_SETTINGS_3G = "screen_3g";
    static final String DB_KEY_SCREEN_WIDTH = "width";
    private static final String DB_NAME = "bookmarks.db";
    private static final int DB_VERSION = 9;
    public static final String ID = "_id";
    static final String DB_TABLE_BOOKMARK = "tbl_manual_bookmarks";
    static final String DB_TABLE_SCREEN = "tbl_screen_settings";
    static final String DB_TABLE_PERFORMANCE = "tbl_performance_flags";
    private static final String[] DB_TABLES = {DB_TABLE_BOOKMARK, DB_TABLE_SCREEN, DB_TABLE_PERFORMANCE};

    public BookmarkDB(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 9);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0049  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    private static List<String> GetColumns(SQLiteDatabase sQLiteDatabase, String str) throws Throwable {
        Cursor cursorRawQuery;
        ?? r1 = 0;
        arrayList = null;
        arrayList = null;
        ArrayList arrayList = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 1", null);
                if (cursorRawQuery != null) {
                    try {
                        arrayList = new ArrayList(Arrays.asList(cursorRawQuery.getColumnNames()));
                    } catch (Exception e) {
                        e = e;
                        Log.v(str, e.getMessage(), e);
                        e.printStackTrace();
                        if (cursorRawQuery != null) {
                        }
                        return arrayList;
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (Throwable th) {
                th = th;
                r1 = sQLiteDatabase;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
        return arrayList;
    }

    private static String joinStrings(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(str);
            }
            sb.append(list.get(i));
        }
        return sb.toString();
    }

    private void backupTables(SQLiteDatabase sQLiteDatabase) {
        for (String str : DB_TABLES) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE '" + str + "' RENAME TO '" + (DB_BACKUP_PREFIX + str) + "'");
            } catch (Exception unused) {
            }
        }
    }

    private void dropOldTables(SQLiteDatabase sQLiteDatabase) {
        for (String str : DB_TABLES) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS '" + (DB_BACKUP_PREFIX + str) + "'");
        }
    }

    private void createDB(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbl_screen_settings (_id INTEGER PRIMARY KEY, colors INTEGER DEFAULT 16, resolution INTEGER DEFAULT 0, width, height);");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbl_performance_flags (_id INTEGER PRIMARY KEY, perf_remotefx INTEGER, perf_gfx INTEGER, perf_gfx_h264 INTEGER, perf_wallpaper INTEGER, perf_theming INTEGER, perf_full_window_drag INTEGER, perf_menu_animations INTEGER, perf_font_smoothing INTEGER, perf_desktop_composition INTEGER);");
        sQLiteDatabase.execSQL(getManualBookmarksCreationString());
    }

    private void upgradeTables(SQLiteDatabase sQLiteDatabase) throws Throwable {
        for (String str : DB_TABLES) {
            String str2 = DB_BACKUP_PREFIX + str;
            List<String> listGetColumns = GetColumns(sQLiteDatabase, str);
            List<String> listGetColumns2 = GetColumns(sQLiteDatabase, str2);
            if (listGetColumns2 != null) {
                listGetColumns2.retainAll(listGetColumns);
                String strJoinStrings = joinStrings(listGetColumns2, ",");
                sQLiteDatabase.execSQL(String.format("INSERT INTO %s (%s) SELECT %s from '%s'", str, strJoinStrings, strJoinStrings, str2));
            }
        }
    }

    private void downgradeTables(SQLiteDatabase sQLiteDatabase) throws Throwable {
        for (String str : DB_TABLES) {
            String str2 = DB_BACKUP_PREFIX + str;
            List<String> listGetColumns = GetColumns(sQLiteDatabase, str);
            List<String> listGetColumns2 = GetColumns(sQLiteDatabase, str2);
            if (listGetColumns != null) {
                listGetColumns.retainAll(listGetColumns2);
                String strJoinStrings = joinStrings(listGetColumns, ",");
                sQLiteDatabase.execSQL(String.format("INSERT INTO %s (%s) SELECT %s from '%s'", str, strJoinStrings, strJoinStrings, str2));
            }
        }
    }

    private List<String> getTableNames(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table'", null);
        ArrayList arrayList = new ArrayList();
        try {
            if (cursorRawQuery.moveToFirst() && cursorRawQuery.getCount() > 0) {
                while (!cursorRawQuery.isAfterLast()) {
                    arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("name")));
                    cursorRawQuery.moveToNext();
                }
            }
            return arrayList;
        } finally {
            cursorRawQuery.close();
        }
    }

    private void insertDefault(SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DB_KEY_SCREEN_COLORS, (Integer) 32);
        contentValues.put(DB_KEY_SCREEN_RESOLUTION, (Integer) 1);
        contentValues.put(DB_KEY_SCREEN_WIDTH, (Integer) 1024);
        contentValues.put(DB_KEY_SCREEN_HEIGHT, (Integer) 768);
        long jInsert = sQLiteDatabase.insert(DB_TABLE_SCREEN, null, contentValues);
        long jInsert2 = sQLiteDatabase.insert(DB_TABLE_SCREEN, null, contentValues);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(DB_KEY_PERFORMANCE_RFX, (Integer) 1);
        contentValues2.put(DB_KEY_PERFORMANCE_GFX, (Integer) 1);
        contentValues2.put(DB_KEY_PERFORMANCE_H264, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_WALLPAPER, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_THEME, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_DRAG, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_MENU_ANIMATIONS, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_FONTS, (Integer) 0);
        contentValues2.put(DB_KEY_PERFORMANCE_COMPOSITION, (Integer) 0);
        long jInsert3 = sQLiteDatabase.insert(DB_TABLE_PERFORMANCE, null, contentValues2);
        long jInsert4 = sQLiteDatabase.insert(DB_TABLE_PERFORMANCE, null, contentValues2);
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put(DB_KEY_BOOKMARK_LABEL, "Test Server");
        contentValues3.put(DB_KEY_BOOKMARK_HOSTNAME, "testservice.afreerdp.com");
        contentValues3.put(DB_KEY_BOOKMARK_USERNAME, "");
        contentValues3.put("password", "");
        contentValues3.put(DB_KEY_BOOKMARK_DOMAIN, "");
        contentValues3.put(DB_KEY_BOOKMARK_PORT, "3389");
        contentValues3.put(DB_KEY_SCREEN_SETTINGS, Long.valueOf(jInsert));
        contentValues3.put(DB_KEY_SCREEN_SETTINGS_3G, Long.valueOf(jInsert2));
        contentValues3.put(DB_KEY_PERFORMANCE_FLAGS, Long.valueOf(jInsert3));
        contentValues3.put(DB_KEY_PERFORMANCE_FLAGS_3G, Long.valueOf(jInsert4));
        contentValues3.put(DB_KEY_BOOKMARK_REDIRECT_SDCARD, (Integer) 0);
        contentValues3.put(DB_KEY_BOOKMARK_REDIRECT_SOUND, (Integer) 0);
        contentValues3.put(DB_KEY_BOOKMARK_REDIRECT_MICROPHONE, (Integer) 0);
        contentValues3.put(DB_KEY_BOOKMARK_SECURITY, (Integer) 0);
        contentValues3.put(DB_KEY_BOOKMARK_REMOTE_PROGRAM, "");
        contentValues3.put(DB_KEY_BOOKMARK_WORK_DIR, "");
        contentValues3.put(DB_KEY_BOOKMARK_ASYNC_CHANNEL, (Integer) 1);
        contentValues3.put(DB_KEY_BOOKMARK_ASYNC_INPUT, (Integer) 1);
        contentValues3.put(DB_KEY_BOOKMARK_ASYNC_UPDATE, (Integer) 1);
        contentValues3.put(DB_KEY_BOOKMARK_CONSOLE_MODE, (Integer) 0);
        contentValues3.put(DB_KEY_BOOKMARK_DEBUG_LEVEL, "INFO");
        sQLiteDatabase.insert(DB_TABLE_BOOKMARK, null, contentValues3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        createDB(sQLiteDatabase);
        insertDefault(sQLiteDatabase);
    }

    private String getManualBookmarksCreationString() {
        return "CREATE TABLE IF NOT EXISTS tbl_manual_bookmarks (_id INTEGER PRIMARY KEY, label TEXT NOT NULL, hostname TEXT NOT NULL, username TEXT NOT NULL, password TEXT, domain TEXT, port TEXT, screen_settings INTEGER NOT NULL, performance_flags INTEGER NOT NULL, enable_gateway_settings INTEGER DEFAULT 0, gateway_hostname TEXT, gateway_port INTEGER DEFAULT 443, gateway_username TEXT, gateway_password TEXT, gateway_domain TEXT, enable_3g_settings INTEGER DEFAULT 0, screen_3g INTEGER NOT NULL, performance_3g INTEGER NOT NULL, redirect_sdcard INTEGER DEFAULT 0, redirect_sound INTEGER DEFAULT 0, redirect_microphone INTEGER DEFAULT 0, security INTEGER, remote_program TEXT, work_dir TEXT, async_channel INTEGER DEFAULT 0, async_input INTEGER DEFAULT 0, async_update INTEGER DEFAULT 0, console_mode INTEGER, debug_level TEXT DEFAULT 'INFO', FOREIGN KEY(screen_settings) REFERENCES tbl_screen_settings(_id), FOREIGN KEY(performance_flags) REFERENCES tbl_performance_flags(_id), FOREIGN KEY(screen_3g) REFERENCES tbl_screen_settings(_id), FOREIGN KEY(performance_3g) REFERENCES tbl_performance_flags(_id) );";
    }

    private void recreateDB(SQLiteDatabase sQLiteDatabase) {
        for (String str : DB_TABLES) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS '" + str + "'");
        }
        onCreate(sQLiteDatabase);
    }

    private void upgradeDB(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            dropOldTables(sQLiteDatabase);
            backupTables(sQLiteDatabase);
            createDB(sQLiteDatabase);
            upgradeTables(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
            dropOldTables(sQLiteDatabase);
        }
    }

    private void downgradeDB(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            dropOldTables(sQLiteDatabase);
            backupTables(sQLiteDatabase);
            createDB(sQLiteDatabase);
            downgradeTables(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
            dropOldTables(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                upgradeDB(sQLiteDatabase);
                break;
            default:
                recreateDB(sQLiteDatabase);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        downgradeDB(sQLiteDatabase);
    }
}
