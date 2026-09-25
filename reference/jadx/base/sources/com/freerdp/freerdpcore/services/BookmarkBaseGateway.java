package com.freerdp.freerdpcore.services;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.iiordanov.bVNC.Constants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class BookmarkBaseGateway {
    private static final String JOIN_PREFIX = "join_";
    private static final String KEY_BOOKMARK_ID = "bookmarkId";
    private static final String KEY_PERFORMANCE_COMPOSITION = "performanceDesktopComposition";
    private static final String KEY_PERFORMANCE_COMPOSITION_3G = "performanceDesktopComposition3G";
    private static final String KEY_PERFORMANCE_DRAG = "performanceFullWindowDrag";
    private static final String KEY_PERFORMANCE_DRAG_3G = "performanceFullWindowDrag3G";
    private static final String KEY_PERFORMANCE_FONTS = "performanceFontSmoothing";
    private static final String KEY_PERFORMANCE_FONTS_3G = "performanceFontSmoothing3G";
    private static final String KEY_PERFORMANCE_GFX = "performanceGfx";
    private static final String KEY_PERFORMANCE_GFX_3G = "performanceGfx3G";
    private static final String KEY_PERFORMANCE_H264 = "performanceGfxH264";
    private static final String KEY_PERFORMANCE_H264_3G = "performanceGfxH2643G";
    private static final String KEY_PERFORMANCE_MENU_ANIMATIONS = "performanceMenuAnimations";
    private static final String KEY_PERFORMANCE_MENU_ANIMATIONS_3G = "performanceMenuAnimations3G";
    private static final String KEY_PERFORMANCE_RFX = "performanceRemoteFX";
    private static final String KEY_PERFORMANCE_RFX_3G = "performanceRemoteFX3G";
    private static final String KEY_PERFORMANCE_THEME = "performanceTheming";
    private static final String KEY_PERFORMANCE_THEME_3G = "performanceTheming3G";
    private static final String KEY_PERFORMANCE_WALLPAPER = "performanceWallpaper";
    private static final String KEY_PERFORMANCE_WALLPAPER_3G = "performanceWallpaper3G";
    private static final String KEY_SCREEN_COLORS = "screenColors";
    private static final String KEY_SCREEN_COLORS_3G = "screenColors3G";
    private static final String KEY_SCREEN_HEIGHT = "screenHeight";
    private static final String KEY_SCREEN_HEIGHT_3G = "screenHeight3G";
    private static final String KEY_SCREEN_RESOLUTION = "screenResolution";
    private static final String KEY_SCREEN_RESOLUTION_3G = "screenResolution3G";
    private static final String KEY_SCREEN_WIDTH = "screenWidth";
    private static final String KEY_SCREEN_WIDTH_3G = "screenWidth3G";
    private static final String TAG = "BookmarkBaseGateway";
    private SQLiteOpenHelper bookmarkDB;

    protected abstract void addBookmarkSpecificColumns(BookmarkBase bookmarkBase, ContentValues contentValues);

    protected abstract void addBookmarkSpecificColumns(ArrayList<String> arrayList);

    protected abstract BookmarkBase createBookmark();

    protected abstract String getBookmarkTableName();

    protected abstract void readBookmarkSpecificColumns(BookmarkBase bookmarkBase, Cursor cursor);

    public BookmarkBaseGateway(SQLiteOpenHelper sQLiteOpenHelper) {
        this.bookmarkDB = sQLiteOpenHelper;
    }

    public void insert(BookmarkBase bookmarkBase) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        ContentValues contentValues = new ContentValues();
        contentValues.put("label", bookmarkBase.getLabel());
        contentValues.put("username", bookmarkBase.getUsername());
        contentValues.put(Constants.testpassword, bookmarkBase.getPassword());
        contentValues.put("domain", bookmarkBase.getDomain());
        contentValues.put("screen_settings", Long.valueOf(insertScreenSettings(writableDatabase, bookmarkBase.getScreenSettings())));
        contentValues.put("performance_flags", Long.valueOf(insertPerformanceFlags(writableDatabase, bookmarkBase.getPerformanceFlags())));
        contentValues.put("enable_3g_settings", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getEnable3GSettings()));
        contentValues.put("screen_3g", Long.valueOf(insertScreenSettings(writableDatabase, bookmarkBase.getAdvancedSettings().getScreen3G())));
        contentValues.put("performance_3g", Long.valueOf(insertPerformanceFlags(writableDatabase, bookmarkBase.getAdvancedSettings().getPerformance3G())));
        contentValues.put("redirect_sdcard", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getRedirectSDCard()));
        contentValues.put("redirect_sound", Integer.valueOf(bookmarkBase.getAdvancedSettings().getRedirectSound()));
        contentValues.put("redirect_microphone", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getRedirectMicrophone()));
        contentValues.put("security", Integer.valueOf(bookmarkBase.getAdvancedSettings().getSecurity()));
        contentValues.put("console_mode", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getConsoleMode()));
        contentValues.put("remote_program", bookmarkBase.getAdvancedSettings().getRemoteProgram());
        contentValues.put("work_dir", bookmarkBase.getAdvancedSettings().getWorkDir());
        contentValues.put("async_channel", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncChannel()));
        contentValues.put("async_input", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncInput()));
        contentValues.put("async_update", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncUpdate()));
        contentValues.put("debug_level", bookmarkBase.getDebugSettings().getDebugLevel());
        addBookmarkSpecificColumns(bookmarkBase, contentValues);
        writableDatabase.insertOrThrow(getBookmarkTableName(), null, contentValues);
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
    }

    public boolean update(BookmarkBase bookmarkBase) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        ContentValues contentValues = new ContentValues();
        contentValues.put("label", bookmarkBase.getLabel());
        contentValues.put("username", bookmarkBase.getUsername());
        contentValues.put(Constants.testpassword, bookmarkBase.getPassword());
        contentValues.put("domain", bookmarkBase.getDomain());
        updateScreenSettings(writableDatabase, bookmarkBase);
        updatePerformanceFlags(writableDatabase, bookmarkBase);
        contentValues.put("enable_3g_settings", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getEnable3GSettings()));
        updateScreenSettings3G(writableDatabase, bookmarkBase);
        updatePerformanceFlags3G(writableDatabase, bookmarkBase);
        contentValues.put("redirect_sdcard", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getRedirectSDCard()));
        contentValues.put("redirect_sound", Integer.valueOf(bookmarkBase.getAdvancedSettings().getRedirectSound()));
        contentValues.put("redirect_microphone", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getRedirectMicrophone()));
        contentValues.put("security", Integer.valueOf(bookmarkBase.getAdvancedSettings().getSecurity()));
        contentValues.put("console_mode", Boolean.valueOf(bookmarkBase.getAdvancedSettings().getConsoleMode()));
        contentValues.put("remote_program", bookmarkBase.getAdvancedSettings().getRemoteProgram());
        contentValues.put("work_dir", bookmarkBase.getAdvancedSettings().getWorkDir());
        contentValues.put("async_channel", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncChannel()));
        contentValues.put("async_input", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncInput()));
        contentValues.put("async_update", Boolean.valueOf(bookmarkBase.getDebugSettings().getAsyncUpdate()));
        contentValues.put("debug_level", bookmarkBase.getDebugSettings().getDebugLevel());
        addBookmarkSpecificColumns(bookmarkBase, contentValues);
        boolean z = writableDatabase.update(getBookmarkTableName(), contentValues, new StringBuilder("_id = ").append(bookmarkBase.getId()).toString(), null) == 1;
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return z;
    }

    public void delete(long j) {
        getWritableDatabase().delete(getBookmarkTableName(), "_id = " + j, null);
    }

    public BookmarkBase findById(long j) {
        Cursor cursorQueryBookmarks = queryBookmarks(getBookmarkTableName() + "._id = " + j, null);
        if (cursorQueryBookmarks.getCount() == 0) {
            cursorQueryBookmarks.close();
            return null;
        }
        cursorQueryBookmarks.moveToFirst();
        BookmarkBase bookmarkFromCursor = getBookmarkFromCursor(cursorQueryBookmarks);
        cursorQueryBookmarks.close();
        return bookmarkFromCursor;
    }

    public BookmarkBase findByLabel(String str) {
        Cursor cursorQueryBookmarks = queryBookmarks("label = '" + str + "'", "label");
        if (cursorQueryBookmarks.getCount() > 1) {
            Log.e(TAG, "More than one bookmark with the same label found!");
        }
        BookmarkBase bookmarkFromCursor = (!cursorQueryBookmarks.moveToFirst() || cursorQueryBookmarks.getCount() <= 0) ? null : getBookmarkFromCursor(cursorQueryBookmarks);
        cursorQueryBookmarks.close();
        return bookmarkFromCursor;
    }

    public ArrayList<BookmarkBase> findByLabelLike(String str) {
        Cursor cursorQueryBookmarks = queryBookmarks("label LIKE '%" + str + "%'", "label");
        ArrayList<BookmarkBase> arrayList = new ArrayList<>(cursorQueryBookmarks.getCount());
        if (cursorQueryBookmarks.moveToFirst() && cursorQueryBookmarks.getCount() > 0) {
            do {
                arrayList.add(getBookmarkFromCursor(cursorQueryBookmarks));
            } while (cursorQueryBookmarks.moveToNext());
        }
        cursorQueryBookmarks.close();
        return arrayList;
    }

    public ArrayList<BookmarkBase> findAll() {
        Cursor cursorQueryBookmarks = queryBookmarks(null, "label");
        int count = cursorQueryBookmarks.getCount();
        ArrayList<BookmarkBase> arrayList = new ArrayList<>(count);
        if (cursorQueryBookmarks.moveToFirst() && count > 0) {
            do {
                arrayList.add(getBookmarkFromCursor(cursorQueryBookmarks));
            } while (cursorQueryBookmarks.moveToNext());
        }
        cursorQueryBookmarks.close();
        return arrayList;
    }

    protected Cursor queryBookmarks(String str, String str2) {
        ArrayList<String> arrayList = new ArrayList<>();
        addBookmarkColumns(arrayList);
        addScreenSettingsColumns(arrayList);
        addPerformanceFlagsColumns(arrayList);
        addScreenSettings3GColumns(arrayList);
        addPerformanceFlags3GColumns(arrayList);
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return getReadableDatabase().rawQuery(SQLiteQueryBuilder.buildQueryString(false, "tbl_manual_bookmarks INNER JOIN tbl_screen_settings AS join_screen_settings ON join_screen_settings._id = tbl_manual_bookmarks.screen_settings INNER JOIN tbl_performance_flags AS join_performance_flags ON join_performance_flags._id = tbl_manual_bookmarks.performance_flags INNER JOIN tbl_screen_settings AS join_screen_3g ON join_screen_3g._id = tbl_manual_bookmarks.screen_3g INNER JOIN tbl_performance_flags AS join_performance_3g ON join_performance_3g._id = tbl_manual_bookmarks.performance_3g", strArr, str, null, null, str2, null), null);
    }

    private void addBookmarkColumns(ArrayList<String> arrayList) {
        arrayList.add(getBookmarkTableName() + "._id bookmarkId");
        arrayList.add("label");
        arrayList.add("username");
        arrayList.add(Constants.testpassword);
        arrayList.add("domain");
        arrayList.add("enable_3g_settings");
        arrayList.add("redirect_sdcard");
        arrayList.add("redirect_sound");
        arrayList.add("redirect_microphone");
        arrayList.add("security");
        arrayList.add("console_mode");
        arrayList.add("remote_program");
        arrayList.add("work_dir");
        arrayList.add("debug_level");
        arrayList.add("async_channel");
        arrayList.add("async_update");
        arrayList.add("async_input");
        addBookmarkSpecificColumns(arrayList);
    }

    private void addScreenSettingsColumns(ArrayList<String> arrayList) {
        arrayList.add("join_screen_settings.colors as screenColors");
        arrayList.add("join_screen_settings.resolution as screenResolution");
        arrayList.add("join_screen_settings.width as screenWidth");
        arrayList.add("join_screen_settings.height as screenHeight");
    }

    private void addPerformanceFlagsColumns(ArrayList<String> arrayList) {
        arrayList.add("join_performance_flags.perf_remotefx as performanceRemoteFX");
        arrayList.add("join_performance_flags.perf_gfx as performanceGfx");
        arrayList.add("join_performance_flags.perf_gfx_h264 as performanceGfxH264");
        arrayList.add("join_performance_flags.perf_wallpaper as performanceWallpaper");
        arrayList.add("join_performance_flags.perf_theming as performanceTheming");
        arrayList.add("join_performance_flags.perf_full_window_drag as performanceFullWindowDrag");
        arrayList.add("join_performance_flags.perf_menu_animations as performanceMenuAnimations");
        arrayList.add("join_performance_flags.perf_font_smoothing as performanceFontSmoothing");
        arrayList.add("join_performance_flags.perf_desktop_composition performanceDesktopComposition");
    }

    private void addScreenSettings3GColumns(ArrayList<String> arrayList) {
        arrayList.add("join_screen_3g.colors as screenColors3G");
        arrayList.add("join_screen_3g.resolution as screenResolution3G");
        arrayList.add("join_screen_3g.width as screenWidth3G");
        arrayList.add("join_screen_3g.height as screenHeight3G");
    }

    private void addPerformanceFlags3GColumns(ArrayList<String> arrayList) {
        arrayList.add("join_performance_3g.perf_remotefx as performanceRemoteFX3G");
        arrayList.add("join_performance_3g.perf_gfx as performanceGfx3G");
        arrayList.add("join_performance_3g.perf_gfx_h264 as performanceGfxH2643G");
        arrayList.add("join_performance_3g.perf_wallpaper as performanceWallpaper3G");
        arrayList.add("join_performance_3g.perf_theming as performanceTheming3G");
        arrayList.add("join_performance_3g.perf_full_window_drag as performanceFullWindowDrag3G");
        arrayList.add("join_performance_3g.perf_menu_animations as performanceMenuAnimations3G");
        arrayList.add("join_performance_3g.perf_font_smoothing as performanceFontSmoothing3G");
        arrayList.add("join_performance_3g.perf_desktop_composition performanceDesktopComposition3G");
    }

    protected BookmarkBase getBookmarkFromCursor(Cursor cursor) {
        BookmarkBase bookmarkBaseCreateBookmark = createBookmark();
        bookmarkBaseCreateBookmark.setId(cursor.getLong(cursor.getColumnIndex(KEY_BOOKMARK_ID)));
        bookmarkBaseCreateBookmark.setLabel(cursor.getString(cursor.getColumnIndex("label")));
        bookmarkBaseCreateBookmark.setUsername(cursor.getString(cursor.getColumnIndex("username")));
        bookmarkBaseCreateBookmark.setPassword(cursor.getString(cursor.getColumnIndex(Constants.testpassword)));
        bookmarkBaseCreateBookmark.setDomain(cursor.getString(cursor.getColumnIndex("domain")));
        readScreenSettings(bookmarkBaseCreateBookmark, cursor);
        readPerformanceFlags(bookmarkBaseCreateBookmark, cursor);
        bookmarkBaseCreateBookmark.getAdvancedSettings().setEnable3GSettings(cursor.getInt(cursor.getColumnIndex("enable_3g_settings")) != 0);
        readScreenSettings3G(bookmarkBaseCreateBookmark, cursor);
        readPerformanceFlags3G(bookmarkBaseCreateBookmark, cursor);
        bookmarkBaseCreateBookmark.getAdvancedSettings().setRedirectSDCard(cursor.getInt(cursor.getColumnIndex("redirect_sdcard")) != 0);
        bookmarkBaseCreateBookmark.getAdvancedSettings().setRedirectSound(cursor.getInt(cursor.getColumnIndex("redirect_sound")));
        bookmarkBaseCreateBookmark.getAdvancedSettings().setRedirectMicrophone(cursor.getInt(cursor.getColumnIndex("redirect_microphone")) != 0);
        bookmarkBaseCreateBookmark.getAdvancedSettings().setSecurity(cursor.getInt(cursor.getColumnIndex("security")));
        bookmarkBaseCreateBookmark.getAdvancedSettings().setConsoleMode(cursor.getInt(cursor.getColumnIndex("console_mode")) != 0);
        bookmarkBaseCreateBookmark.getAdvancedSettings().setRemoteProgram(cursor.getString(cursor.getColumnIndex("remote_program")));
        bookmarkBaseCreateBookmark.getAdvancedSettings().setWorkDir(cursor.getString(cursor.getColumnIndex("work_dir")));
        bookmarkBaseCreateBookmark.getDebugSettings().setAsyncChannel(cursor.getInt(cursor.getColumnIndex("async_channel")) == 1);
        bookmarkBaseCreateBookmark.getDebugSettings().setAsyncInput(cursor.getInt(cursor.getColumnIndex("async_input")) == 1);
        bookmarkBaseCreateBookmark.getDebugSettings().setAsyncUpdate(cursor.getInt(cursor.getColumnIndex("async_update")) == 1);
        bookmarkBaseCreateBookmark.getDebugSettings().setDebugLevel(cursor.getString(cursor.getColumnIndex("debug_level")));
        readBookmarkSpecificColumns(bookmarkBaseCreateBookmark, cursor);
        return bookmarkBaseCreateBookmark;
    }

    private void readScreenSettings(BookmarkBase bookmarkBase, Cursor cursor) {
        BookmarkBase.ScreenSettings screenSettings = bookmarkBase.getScreenSettings();
        screenSettings.setColors(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_COLORS)));
        screenSettings.setResolution(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_RESOLUTION)));
        screenSettings.setWidth(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_WIDTH)));
        screenSettings.setHeight(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_HEIGHT)));
    }

    private void readPerformanceFlags(BookmarkBase bookmarkBase, Cursor cursor) {
        BookmarkBase.PerformanceFlags performanceFlags = bookmarkBase.getPerformanceFlags();
        performanceFlags.setRemoteFX(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_RFX)) != 0);
        performanceFlags.setGfx(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_GFX)) != 0);
        performanceFlags.setH264(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_H264)) != 0);
        performanceFlags.setWallpaper(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_WALLPAPER)) != 0);
        performanceFlags.setTheming(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_THEME)) != 0);
        performanceFlags.setFullWindowDrag(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_DRAG)) != 0);
        performanceFlags.setMenuAnimations(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_MENU_ANIMATIONS)) != 0);
        performanceFlags.setFontSmoothing(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_FONTS)) != 0);
        performanceFlags.setDesktopComposition(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_COMPOSITION)) != 0);
    }

    private void readScreenSettings3G(BookmarkBase bookmarkBase, Cursor cursor) {
        BookmarkBase.ScreenSettings screen3G = bookmarkBase.getAdvancedSettings().getScreen3G();
        screen3G.setColors(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_COLORS_3G)));
        screen3G.setResolution(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_RESOLUTION_3G)));
        screen3G.setWidth(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_WIDTH_3G)));
        screen3G.setHeight(cursor.getInt(cursor.getColumnIndex(KEY_SCREEN_HEIGHT_3G)));
    }

    private void readPerformanceFlags3G(BookmarkBase bookmarkBase, Cursor cursor) {
        BookmarkBase.PerformanceFlags performance3G = bookmarkBase.getAdvancedSettings().getPerformance3G();
        performance3G.setRemoteFX(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_RFX_3G)) != 0);
        performance3G.setGfx(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_GFX_3G)) != 0);
        performance3G.setH264(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_H264_3G)) != 0);
        performance3G.setWallpaper(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_WALLPAPER_3G)) != 0);
        performance3G.setTheming(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_THEME_3G)) != 0);
        performance3G.setFullWindowDrag(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_DRAG_3G)) != 0);
        performance3G.setMenuAnimations(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_MENU_ANIMATIONS_3G)) != 0);
        performance3G.setFontSmoothing(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_FONTS_3G)) != 0);
        performance3G.setDesktopComposition(cursor.getInt(cursor.getColumnIndex(KEY_PERFORMANCE_COMPOSITION_3G)) != 0);
    }

    private void fillScreenSettingsContentValues(BookmarkBase.ScreenSettings screenSettings, ContentValues contentValues) {
        contentValues.put("colors", Integer.valueOf(screenSettings.getColors()));
        contentValues.put("resolution", Integer.valueOf(screenSettings.getResolution()));
        contentValues.put("width", Integer.valueOf(screenSettings.getWidth()));
        contentValues.put("height", Integer.valueOf(screenSettings.getHeight()));
    }

    private void fillPerformanceFlagsContentValues(BookmarkBase.PerformanceFlags performanceFlags, ContentValues contentValues) {
        contentValues.put("perf_remotefx", Boolean.valueOf(performanceFlags.getRemoteFX()));
        contentValues.put("perf_gfx", Boolean.valueOf(performanceFlags.getGfx()));
        contentValues.put("perf_gfx_h264", Boolean.valueOf(performanceFlags.getH264()));
        contentValues.put("perf_wallpaper", Boolean.valueOf(performanceFlags.getWallpaper()));
        contentValues.put("perf_theming", Boolean.valueOf(performanceFlags.getTheming()));
        contentValues.put("perf_full_window_drag", Boolean.valueOf(performanceFlags.getFullWindowDrag()));
        contentValues.put("perf_menu_animations", Boolean.valueOf(performanceFlags.getMenuAnimations()));
        contentValues.put("perf_font_smoothing", Boolean.valueOf(performanceFlags.getFontSmoothing()));
        contentValues.put("perf_desktop_composition", Boolean.valueOf(performanceFlags.getDesktopComposition()));
    }

    private long insertScreenSettings(SQLiteDatabase sQLiteDatabase, BookmarkBase.ScreenSettings screenSettings) {
        ContentValues contentValues = new ContentValues();
        fillScreenSettingsContentValues(screenSettings, contentValues);
        return sQLiteDatabase.insertOrThrow("tbl_screen_settings", null, contentValues);
    }

    private boolean updateScreenSettings(SQLiteDatabase sQLiteDatabase, BookmarkBase bookmarkBase) {
        ContentValues contentValues = new ContentValues();
        fillScreenSettingsContentValues(bookmarkBase.getScreenSettings(), contentValues);
        return sQLiteDatabase.update("tbl_screen_settings", contentValues, new StringBuilder("_id IN (SELECT screen_settings FROM ").append(getBookmarkTableName()).append(" WHERE _id =  ").append(bookmarkBase.getId()).append(");").toString(), null) == 1;
    }

    private boolean updateScreenSettings3G(SQLiteDatabase sQLiteDatabase, BookmarkBase bookmarkBase) {
        ContentValues contentValues = new ContentValues();
        fillScreenSettingsContentValues(bookmarkBase.getAdvancedSettings().getScreen3G(), contentValues);
        return sQLiteDatabase.update("tbl_screen_settings", contentValues, new StringBuilder("_id IN (SELECT screen_3g FROM ").append(getBookmarkTableName()).append(" WHERE _id =  ").append(bookmarkBase.getId()).append(");").toString(), null) == 1;
    }

    private long insertPerformanceFlags(SQLiteDatabase sQLiteDatabase, BookmarkBase.PerformanceFlags performanceFlags) {
        ContentValues contentValues = new ContentValues();
        fillPerformanceFlagsContentValues(performanceFlags, contentValues);
        return sQLiteDatabase.insertOrThrow("tbl_performance_flags", null, contentValues);
    }

    private boolean updatePerformanceFlags(SQLiteDatabase sQLiteDatabase, BookmarkBase bookmarkBase) {
        ContentValues contentValues = new ContentValues();
        fillPerformanceFlagsContentValues(bookmarkBase.getPerformanceFlags(), contentValues);
        return sQLiteDatabase.update("tbl_performance_flags", contentValues, new StringBuilder("_id IN (SELECT performance_flags FROM ").append(getBookmarkTableName()).append(" WHERE _id =  ").append(bookmarkBase.getId()).append(");").toString(), null) == 1;
    }

    private boolean updatePerformanceFlags3G(SQLiteDatabase sQLiteDatabase, BookmarkBase bookmarkBase) {
        ContentValues contentValues = new ContentValues();
        fillPerformanceFlagsContentValues(bookmarkBase.getAdvancedSettings().getPerformance3G(), contentValues);
        return sQLiteDatabase.update("tbl_performance_flags", contentValues, new StringBuilder("_id IN (SELECT performance_3g FROM ").append(getBookmarkTableName()).append(" WHERE _id =  ").append(bookmarkBase.getId()).append(");").toString(), null) == 1;
    }

    private SQLiteDatabase getWritableDatabase() {
        return this.bookmarkDB.getWritableDatabase();
    }

    private SQLiteDatabase getReadableDatabase() {
        try {
            return this.bookmarkDB.getReadableDatabase();
        } catch (SQLiteException unused) {
            return this.bookmarkDB.getWritableDatabase();
        }
    }
}
