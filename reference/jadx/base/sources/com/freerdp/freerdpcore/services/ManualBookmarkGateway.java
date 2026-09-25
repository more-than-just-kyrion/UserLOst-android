package com.freerdp.freerdpcore.services;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ManualBookmarkGateway extends BookmarkBaseGateway {
    public ManualBookmarkGateway(SQLiteOpenHelper sQLiteOpenHelper) {
        super(sQLiteOpenHelper);
    }

    @Override // com.freerdp.freerdpcore.services.BookmarkBaseGateway
    protected BookmarkBase createBookmark() {
        return new ManualBookmark();
    }

    @Override // com.freerdp.freerdpcore.services.BookmarkBaseGateway
    protected String getBookmarkTableName() {
        return "tbl_manual_bookmarks";
    }

    @Override // com.freerdp.freerdpcore.services.BookmarkBaseGateway
    protected void addBookmarkSpecificColumns(BookmarkBase bookmarkBase, ContentValues contentValues) {
        ManualBookmark manualBookmark = (ManualBookmark) bookmarkBase;
        contentValues.put("hostname", manualBookmark.getHostname());
        contentValues.put("port", Integer.valueOf(manualBookmark.getPort()));
        contentValues.put("enable_gateway_settings", Boolean.valueOf(manualBookmark.getEnableGatewaySettings()));
        contentValues.put("gateway_hostname", manualBookmark.getGatewaySettings().getHostname());
        contentValues.put("gateway_port", Integer.valueOf(manualBookmark.getGatewaySettings().getPort()));
        contentValues.put("gateway_username", manualBookmark.getGatewaySettings().getUsername());
        contentValues.put("gateway_password", manualBookmark.getGatewaySettings().getPassword());
        contentValues.put("gateway_domain", manualBookmark.getGatewaySettings().getDomain());
    }

    @Override // com.freerdp.freerdpcore.services.BookmarkBaseGateway
    protected void addBookmarkSpecificColumns(ArrayList<String> arrayList) {
        arrayList.add("hostname");
        arrayList.add("port");
        arrayList.add("enable_gateway_settings");
        arrayList.add("gateway_hostname");
        arrayList.add("gateway_port");
        arrayList.add("gateway_username");
        arrayList.add("gateway_password");
        arrayList.add("gateway_domain");
    }

    @Override // com.freerdp.freerdpcore.services.BookmarkBaseGateway
    protected void readBookmarkSpecificColumns(BookmarkBase bookmarkBase, Cursor cursor) {
        ManualBookmark manualBookmark = (ManualBookmark) bookmarkBase;
        manualBookmark.setHostname(cursor.getString(cursor.getColumnIndex("hostname")));
        manualBookmark.setPort(cursor.getInt(cursor.getColumnIndex("port")));
        manualBookmark.setEnableGatewaySettings(cursor.getInt(cursor.getColumnIndex("enable_gateway_settings")) != 0);
        readGatewaySettings(manualBookmark, cursor);
    }

    public BookmarkBase findByLabelOrHostname(String str) {
        BookmarkBase bookmarkFromCursor = null;
        if (str.length() == 0) {
            return null;
        }
        Cursor cursorQueryBookmarks = queryBookmarks("label = '" + str + "' OR hostname = '" + str + "'", "label");
        if (cursorQueryBookmarks.moveToFirst() && cursorQueryBookmarks.getCount() > 0) {
            bookmarkFromCursor = getBookmarkFromCursor(cursorQueryBookmarks);
        }
        cursorQueryBookmarks.close();
        return bookmarkFromCursor;
    }

    public ArrayList<BookmarkBase> findByLabelOrHostnameLike(String str) {
        Cursor cursorQueryBookmarks = queryBookmarks("label LIKE '%" + str + "%' OR hostname LIKE '%" + str + "%'", "label");
        ArrayList<BookmarkBase> arrayList = new ArrayList<>(cursorQueryBookmarks.getCount());
        if (cursorQueryBookmarks.moveToFirst() && cursorQueryBookmarks.getCount() > 0) {
            do {
                arrayList.add(getBookmarkFromCursor(cursorQueryBookmarks));
            } while (cursorQueryBookmarks.moveToNext());
        }
        cursorQueryBookmarks.close();
        return arrayList;
    }

    private void readGatewaySettings(ManualBookmark manualBookmark, Cursor cursor) {
        ManualBookmark.GatewaySettings gatewaySettings = manualBookmark.getGatewaySettings();
        gatewaySettings.setHostname(cursor.getString(cursor.getColumnIndex("gateway_hostname")));
        gatewaySettings.setPort(cursor.getInt(cursor.getColumnIndex("gateway_port")));
        gatewaySettings.setUsername(cursor.getString(cursor.getColumnIndex("gateway_username")));
        gatewaySettings.setPassword(cursor.getString(cursor.getColumnIndex("gateway_password")));
        gatewaySettings.setDomain(cursor.getString(cursor.getColumnIndex("gateway_domain")));
    }
}
