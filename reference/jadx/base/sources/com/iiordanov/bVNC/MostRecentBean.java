package com.iiordanov.bVNC;

import android.content.ContentValues;
import android.database.Cursor;
import com.antlersoft.android.dbimpl.IdImplementationBase;
import com.antlersoft.android.dbimpl.NewInstance;

/* JADX INFO: loaded from: classes2.dex */
public class MostRecentBean extends IdImplementationBase implements IMostRecentBean {
    public static final int GEN_COUNT = 4;
    public static String GEN_CREATE = "CREATE TABLE MOST_RECENT (_id INTEGER PRIMARY KEY AUTOINCREMENT,CONNECTION_ID INTEGER,SHOW_SPLASH_VERSION INTEGER,TEXT_INDEX INTEGER)";
    public static final String GEN_FIELD_CONNECTION_ID = "CONNECTION_ID";
    public static final String GEN_FIELD_SHOW_SPLASH_VERSION = "SHOW_SPLASH_VERSION";
    public static final String GEN_FIELD_TEXT_INDEX = "TEXT_INDEX";
    public static final String GEN_FIELD__ID = "_id";
    public static final int GEN_ID_CONNECTION_ID = 1;
    public static final int GEN_ID_SHOW_SPLASH_VERSION = 2;
    public static final int GEN_ID_TEXT_INDEX = 3;
    public static final int GEN_ID__ID = 0;
    public static final NewInstance<MostRecentBean> GEN_NEW = new NewInstance<MostRecentBean>() { // from class: com.iiordanov.bVNC.MostRecentBean.1
        @Override // com.antlersoft.android.dbimpl.NewInstance
        public MostRecentBean get() {
            return new MostRecentBean();
        }
    };
    public static final String GEN_TABLE_NAME = "MOST_RECENT";
    private long gen_CONNECTION_ID;
    private long gen_SHOW_SPLASH_VERSION;
    private long gen_TEXT_INDEX;
    private long gen__Id;

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public String Gen_tableName() {
        return GEN_TABLE_NAME;
    }

    @Override // com.antlersoft.android.dbimpl.IdImplementationBase, com.iiordanov.bVNC.IConnectionBean
    public long get_Id() {
        return this.gen__Id;
    }

    @Override // com.antlersoft.android.dbimpl.IdImplementationBase
    public void set_Id(long j) {
        this.gen__Id = j;
    }

    @Override // com.iiordanov.bVNC.IMostRecentBean
    public long getConnectionId() {
        return this.gen_CONNECTION_ID;
    }

    public void setConnectionId(long j) {
        this.gen_CONNECTION_ID = j;
    }

    @Override // com.iiordanov.bVNC.IMostRecentBean
    public long getShowSplashVersion() {
        return this.gen_SHOW_SPLASH_VERSION;
    }

    public void setShowSplashVersion(long j) {
        this.gen_SHOW_SPLASH_VERSION = j;
    }

    @Override // com.iiordanov.bVNC.IMostRecentBean
    public long getTextIndex() {
        return this.gen_TEXT_INDEX;
    }

    public void setTextIndex(long j) {
        this.gen_TEXT_INDEX = j;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public ContentValues Gen_getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.toString(this.gen__Id));
        contentValues.put(GEN_FIELD_CONNECTION_ID, Long.toString(this.gen_CONNECTION_ID));
        contentValues.put(GEN_FIELD_SHOW_SPLASH_VERSION, Long.toString(this.gen_SHOW_SPLASH_VERSION));
        contentValues.put(GEN_FIELD_TEXT_INDEX, Long.toString(this.gen_TEXT_INDEX));
        return contentValues;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public int[] Gen_columnIndices(Cursor cursor) {
        int[] iArr = new int[4];
        int columnIndex = cursor.getColumnIndex("_id");
        iArr[0] = columnIndex;
        if (columnIndex == -1) {
            iArr[0] = cursor.getColumnIndex("_ID");
        }
        iArr[1] = cursor.getColumnIndex(GEN_FIELD_CONNECTION_ID);
        iArr[2] = cursor.getColumnIndex(GEN_FIELD_SHOW_SPLASH_VERSION);
        iArr[3] = cursor.getColumnIndex(GEN_FIELD_TEXT_INDEX);
        return iArr;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(Cursor cursor, int[] iArr) {
        int i = iArr[0];
        if (i >= 0 && !cursor.isNull(i)) {
            this.gen__Id = cursor.getLong(iArr[0]);
        }
        int i2 = iArr[1];
        if (i2 >= 0 && !cursor.isNull(i2)) {
            this.gen_CONNECTION_ID = cursor.getLong(iArr[1]);
        }
        int i3 = iArr[2];
        if (i3 >= 0 && !cursor.isNull(i3)) {
            this.gen_SHOW_SPLASH_VERSION = cursor.getLong(iArr[2]);
        }
        int i4 = iArr[3];
        if (i4 < 0 || cursor.isNull(i4)) {
            return;
        }
        this.gen_TEXT_INDEX = cursor.getLong(iArr[3]);
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(ContentValues contentValues) {
        this.gen__Id = contentValues.getAsLong("_id").longValue();
        this.gen_CONNECTION_ID = contentValues.getAsLong(GEN_FIELD_CONNECTION_ID).longValue();
        this.gen_SHOW_SPLASH_VERSION = contentValues.getAsLong(GEN_FIELD_SHOW_SPLASH_VERSION).longValue();
        this.gen_TEXT_INDEX = contentValues.getAsLong(GEN_FIELD_TEXT_INDEX).longValue();
    }
}
