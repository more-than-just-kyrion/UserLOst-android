package com.iiordanov.bVNC;

import android.content.ContentValues;
import android.database.Cursor;
import com.antlersoft.android.dbimpl.IdImplementationBase;
import com.antlersoft.android.dbimpl.NewInstance;

/* JADX INFO: loaded from: classes2.dex */
public class MetaList extends IdImplementationBase implements IMetaList {
    public static final int GEN_COUNT = 2;
    public static String GEN_CREATE = "CREATE TABLE META_LIST (_id INTEGER PRIMARY KEY AUTOINCREMENT,NAME TEXT)";
    public static final String GEN_FIELD_NAME = "NAME";
    public static final String GEN_FIELD__ID = "_id";
    public static final int GEN_ID_NAME = 1;
    public static final int GEN_ID__ID = 0;
    public static final NewInstance<MetaList> GEN_NEW = new NewInstance<MetaList>() { // from class: com.iiordanov.bVNC.MetaList.1
        @Override // com.antlersoft.android.dbimpl.NewInstance
        public MetaList get() {
            return new MetaList();
        }
    };
    public static final String GEN_TABLE_NAME = "META_LIST";
    private long gen__Id;
    private String gen_name;

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

    @Override // com.iiordanov.bVNC.IMetaList
    public String getName() {
        return this.gen_name;
    }

    public void setName(String str) {
        this.gen_name = str;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public ContentValues Gen_getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.toString(this.gen__Id));
        contentValues.put(GEN_FIELD_NAME, this.gen_name);
        return contentValues;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public int[] Gen_columnIndices(Cursor cursor) {
        int[] iArr = new int[2];
        int columnIndex = cursor.getColumnIndex("_id");
        iArr[0] = columnIndex;
        if (columnIndex == -1) {
            iArr[0] = cursor.getColumnIndex("_ID");
        }
        iArr[1] = cursor.getColumnIndex(GEN_FIELD_NAME);
        return iArr;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(Cursor cursor, int[] iArr) {
        int i = iArr[0];
        if (i >= 0 && !cursor.isNull(i)) {
            this.gen__Id = cursor.getLong(iArr[0]);
        }
        int i2 = iArr[1];
        if (i2 < 0 || cursor.isNull(i2)) {
            return;
        }
        this.gen_name = cursor.getString(iArr[1]);
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(ContentValues contentValues) {
        this.gen__Id = contentValues.getAsLong("_id").longValue();
        this.gen_name = contentValues.getAsString(GEN_FIELD_NAME);
    }
}
