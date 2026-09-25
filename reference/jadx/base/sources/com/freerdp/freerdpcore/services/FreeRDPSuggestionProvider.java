package com.freerdp.freerdpcore.services;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FreeRDPSuggestionProvider extends ContentProvider {
    public static final Uri CONTENT_URI = Uri.parse("content://com.freerdp.afreerdp.services.freerdpsuggestionprovider");

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.freerdp.remote";
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ArrayList<BookmarkBase> arrayListFindAll;
        String str3 = (strArr2 == null || strArr2.length <= 0) ? "" : strArr2[0];
        ArrayList<BookmarkBase> arrayListFindHistory = GlobalApp.getQuickConnectHistoryGateway().findHistory(str3);
        if (str3.length() > 0) {
            arrayListFindAll = GlobalApp.getManualBookmarkGateway().findByLabelOrHostnameLike(str3);
        } else {
            arrayListFindAll = GlobalApp.getManualBookmarkGateway().findAll();
        }
        return createResultCursor(arrayListFindHistory, arrayListFindAll);
    }

    private void addBookmarksToCursor(ArrayList<BookmarkBase> arrayList, MatrixCursor matrixCursor) {
        for (BookmarkBase bookmarkBase : arrayList) {
            matrixCursor.addRow(new Object[]{new Long(bookmarkBase.getId()), bookmarkBase.getLabel(), ((ManualBookmark) bookmarkBase.get()).getHostname(), ConnectionReference.getManualBookmarkReference(bookmarkBase.getId()), "android.resource://" + getContext().getPackageName() + "/" + R.drawable.icon_star_on});
        }
    }

    private void addHistoryToCursor(ArrayList<BookmarkBase> arrayList, MatrixCursor matrixCursor) {
        for (BookmarkBase bookmarkBase : arrayList) {
            matrixCursor.addRow(new Object[]{new Integer(1), bookmarkBase.getLabel(), bookmarkBase.getLabel(), ConnectionReference.getHostnameReference(bookmarkBase.getLabel()), "android.resource://" + getContext().getPackageName() + "/" + R.drawable.icon_star_off});
        }
    }

    private Cursor createResultCursor(ArrayList<BookmarkBase> arrayList, ArrayList<BookmarkBase> arrayList2) {
        int size = arrayList.size() + arrayList2.size();
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"_id", "suggest_text_1", "suggest_text_2", "suggest_intent_data", "suggest_icon_2"}, size);
        if (size > 0) {
            addHistoryToCursor(arrayList, matrixCursor);
            addBookmarksToCursor(arrayList2, matrixCursor);
        }
        return matrixCursor;
    }
}
