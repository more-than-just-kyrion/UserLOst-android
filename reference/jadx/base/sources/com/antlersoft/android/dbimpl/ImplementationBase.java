package com.antlersoft.android.dbimpl;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.Collection;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImplementationBase {
    /* JADX WARN: Multi-variable type inference failed */
    public static <E extends ImplementationBase> void Gen_populateFromCursor(Cursor cursor, Collection<E> collection, NewInstance<E> newInstance) {
        if (!cursor.moveToFirst()) {
            return;
        }
        ImplementationBase implementationBase = newInstance.get();
        int[] iArrGen_columnIndices = implementationBase.Gen_columnIndices(cursor);
        while (true) {
            if (implementationBase == null) {
                implementationBase = newInstance.get();
            }
            implementationBase.Gen_populate(cursor, iArrGen_columnIndices);
            collection.add(implementationBase);
            if (!cursor.moveToNext()) {
                return;
            } else {
                implementationBase = null;
            }
        }
    }

    public static <E extends ImplementationBase> void getAll(SQLiteDatabase sQLiteDatabase, String str, Collection<E> collection, NewInstance<E> newInstance) {
        net.sqlcipher.Cursor cursorQuery = sQLiteDatabase.query(str, null, null, null, null, null, null);
        try {
            Gen_populateFromCursor(cursorQuery, collection, newInstance);
        } finally {
            cursorQuery.close();
        }
    }

    public abstract int[] Gen_columnIndices(Cursor cursor);

    public abstract ContentValues Gen_getValues();

    public abstract void Gen_populate(ContentValues contentValues);

    public abstract void Gen_populate(Cursor cursor, int[] iArr);

    public abstract String Gen_tableName();
}
