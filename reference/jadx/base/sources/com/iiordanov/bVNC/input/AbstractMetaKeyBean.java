package com.iiordanov.bVNC.input;

import android.content.ContentValues;
import android.database.Cursor;
import com.antlersoft.android.dbimpl.IdImplementationBase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMetaKeyBean extends IdImplementationBase implements IMetaKey {
    public static final int GEN_COUNT = 8;
    public static String GEN_CREATE = "CREATE TABLE META_KEY (_id INTEGER PRIMARY KEY AUTOINCREMENT,METALISTID INTEGER,KEYDESC TEXT,METAFLAGS INTEGER,MOUSECLICK INTEGER,MOUSEBUTTONS INTEGER,KEYSYM INTEGER,SHORTCUT TEXT)";
    public static final String GEN_FIELD_KEYDESC = "KEYDESC";
    public static final String GEN_FIELD_KEYSYM = "KEYSYM";
    public static final String GEN_FIELD_METAFLAGS = "METAFLAGS";
    public static final String GEN_FIELD_METALISTID = "METALISTID";
    public static final String GEN_FIELD_MOUSEBUTTONS = "MOUSEBUTTONS";
    public static final String GEN_FIELD_MOUSECLICK = "MOUSECLICK";
    public static final String GEN_FIELD_SHORTCUT = "SHORTCUT";
    public static final String GEN_FIELD__ID = "_id";
    public static final int GEN_ID_KEYDESC = 2;
    public static final int GEN_ID_KEYSYM = 6;
    public static final int GEN_ID_METAFLAGS = 3;
    public static final int GEN_ID_METALISTID = 1;
    public static final int GEN_ID_MOUSEBUTTONS = 5;
    public static final int GEN_ID_MOUSECLICK = 4;
    public static final int GEN_ID_SHORTCUT = 7;
    public static final int GEN_ID__ID = 0;
    public static final String GEN_TABLE_NAME = "META_KEY";
    private long gen__Id;
    private String gen_keyDesc;
    private int gen_keySym;
    private int gen_metaFlags;
    private long gen_metaListId;
    private int gen_mouseButtons;
    private boolean gen_mouseClick;
    private String gen_shortcut;

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

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public long getMetaListId() {
        return this.gen_metaListId;
    }

    public void setMetaListId(long j) {
        this.gen_metaListId = j;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public String getKeyDesc() {
        return this.gen_keyDesc;
    }

    public void setKeyDesc(String str) {
        this.gen_keyDesc = str;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public int getMetaFlags() {
        return this.gen_metaFlags;
    }

    public void setMetaFlags(int i) {
        this.gen_metaFlags = i;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public boolean isMouseClick() {
        return this.gen_mouseClick;
    }

    public void setMouseClick(boolean z) {
        this.gen_mouseClick = z;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public int getMouseButtons() {
        return this.gen_mouseButtons;
    }

    public void setMouseButtons(int i) {
        this.gen_mouseButtons = i;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public int getKeySym() {
        return this.gen_keySym;
    }

    public void setKeySym(int i) {
        this.gen_keySym = i;
    }

    @Override // com.iiordanov.bVNC.input.IMetaKey
    public String getShortcut() {
        return this.gen_shortcut;
    }

    public void setShortcut(String str) {
        this.gen_shortcut = str;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public ContentValues Gen_getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.toString(this.gen__Id));
        contentValues.put("METALISTID", Long.toString(this.gen_metaListId));
        contentValues.put(GEN_FIELD_KEYDESC, this.gen_keyDesc);
        contentValues.put(GEN_FIELD_METAFLAGS, Integer.toString(this.gen_metaFlags));
        contentValues.put(GEN_FIELD_MOUSECLICK, this.gen_mouseClick ? "1" : "0");
        contentValues.put(GEN_FIELD_MOUSEBUTTONS, Integer.toString(this.gen_mouseButtons));
        contentValues.put(GEN_FIELD_KEYSYM, Integer.toString(this.gen_keySym));
        contentValues.put(GEN_FIELD_SHORTCUT, this.gen_shortcut);
        return contentValues;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public int[] Gen_columnIndices(Cursor cursor) {
        int[] iArr = new int[8];
        int columnIndex = cursor.getColumnIndex("_id");
        iArr[0] = columnIndex;
        if (columnIndex == -1) {
            iArr[0] = cursor.getColumnIndex("_ID");
        }
        iArr[1] = cursor.getColumnIndex("METALISTID");
        iArr[2] = cursor.getColumnIndex(GEN_FIELD_KEYDESC);
        iArr[3] = cursor.getColumnIndex(GEN_FIELD_METAFLAGS);
        iArr[4] = cursor.getColumnIndex(GEN_FIELD_MOUSECLICK);
        iArr[5] = cursor.getColumnIndex(GEN_FIELD_MOUSEBUTTONS);
        iArr[6] = cursor.getColumnIndex(GEN_FIELD_KEYSYM);
        iArr[7] = cursor.getColumnIndex(GEN_FIELD_SHORTCUT);
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
            this.gen_metaListId = cursor.getLong(iArr[1]);
        }
        int i3 = iArr[2];
        if (i3 >= 0 && !cursor.isNull(i3)) {
            this.gen_keyDesc = cursor.getString(iArr[2]);
        }
        int i4 = iArr[3];
        if (i4 >= 0 && !cursor.isNull(i4)) {
            this.gen_metaFlags = cursor.getInt(iArr[3]);
        }
        int i5 = iArr[4];
        if (i5 >= 0 && !cursor.isNull(i5)) {
            this.gen_mouseClick = cursor.getInt(iArr[4]) != 0;
        }
        int i6 = iArr[5];
        if (i6 >= 0 && !cursor.isNull(i6)) {
            this.gen_mouseButtons = cursor.getInt(iArr[5]);
        }
        int i7 = iArr[6];
        if (i7 >= 0 && !cursor.isNull(i7)) {
            this.gen_keySym = cursor.getInt(iArr[6]);
        }
        int i8 = iArr[7];
        if (i8 < 0 || cursor.isNull(i8)) {
            return;
        }
        this.gen_shortcut = cursor.getString(iArr[7]);
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(ContentValues contentValues) {
        this.gen__Id = contentValues.getAsLong("_id").longValue();
        this.gen_metaListId = contentValues.getAsLong("METALISTID").longValue();
        this.gen_keyDesc = contentValues.getAsString(GEN_FIELD_KEYDESC);
        this.gen_metaFlags = contentValues.getAsInteger(GEN_FIELD_METAFLAGS).intValue();
        this.gen_mouseClick = contentValues.getAsInteger(GEN_FIELD_MOUSECLICK).intValue() != 0;
        this.gen_mouseButtons = contentValues.getAsInteger(GEN_FIELD_MOUSEBUTTONS).intValue();
        this.gen_keySym = contentValues.getAsInteger(GEN_FIELD_KEYSYM).intValue();
        this.gen_shortcut = contentValues.getAsString(GEN_FIELD_SHORTCUT);
    }
}
