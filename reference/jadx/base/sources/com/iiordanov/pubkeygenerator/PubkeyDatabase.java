package com.iiordanov.pubkeygenerator;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PubkeyDatabase extends RobustSQLiteOpenHelper {
    public static final String DB_NAME = "pubkeys";
    public static final int DB_VERSION = 2;
    public static final String FIELD_PUBKEY_CONFIRMUSE = "confirmuse";
    public static final String FIELD_PUBKEY_ENCRYPTED = "encrypted";
    public static final String FIELD_PUBKEY_LIFETIME = "lifetime";
    public static final String FIELD_PUBKEY_NICKNAME = "nickname";
    public static final String FIELD_PUBKEY_PRIVATE = "private";
    public static final String FIELD_PUBKEY_PUBLIC = "public";
    public static final String FIELD_PUBKEY_STARTUP = "startup";
    public static final String FIELD_PUBKEY_TYPE = "type";
    public static final String KEY_TYPE_DSA = "DSA";
    public static final String KEY_TYPE_IMPORTED = "IMPORTED";
    public static final String KEY_TYPE_RSA = "RSA";
    public static final String TABLE_PUBKEYS = "pubkeys";
    public static final String TAG = "ConnectBot.PubkeyDatabase";
    private Context context;

    static {
        addTableName("pubkeys");
    }

    public PubkeyDatabase(Context context) {
        super(context, "pubkeys", null, 2);
        this.context = context;
    }

    @Override // com.iiordanov.pubkeygenerator.RobustSQLiteOpenHelper, android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        super.onCreate(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE pubkeys (_id INTEGER PRIMARY KEY, nickname TEXT, type TEXT, private BLOB, public BLOB, encrypted INTEGER, startup INTEGER, confirmuse INTEGER DEFAULT 0, lifetime INTEGER DEFAULT 0)");
    }

    @Override // com.iiordanov.pubkeygenerator.RobustSQLiteOpenHelper
    public void onRobustUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLiteException {
        if (i != 1) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE pubkeys ADD COLUMN confirmuse INTEGER DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE pubkeys ADD COLUMN lifetime INTEGER DEFAULT 0");
    }

    public void deletePubkey(PubkeyBean pubkeyBean) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("pubkeys", "_id = ?", new String[]{Long.toString(pubkeyBean.getId())});
        writableDatabase.close();
    }

    public List<PubkeyBean> allPubkeys() {
        return getPubkeys(null, null);
    }

    public List<PubkeyBean> getAllStartPubkeys() {
        return getPubkeys("startup = 1 AND encrypted = 0", null);
    }

    private List<PubkeyBean> getPubkeys(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        LinkedList linkedList = new LinkedList();
        Cursor cursorQuery = readableDatabase.query("pubkeys", null, str, strArr, null, null, null);
        if (cursorQuery != null) {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_NICKNAME);
            int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_TYPE);
            int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_PRIVATE);
            int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_PUBLIC);
            int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_ENCRYPTED);
            int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_STARTUP);
            int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_CONFIRMUSE);
            int columnIndexOrThrow9 = cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_LIFETIME);
            while (cursorQuery.moveToNext()) {
                PubkeyBean pubkeyBean = new PubkeyBean();
                pubkeyBean.setId(cursorQuery.getLong(columnIndexOrThrow));
                pubkeyBean.setNickname(cursorQuery.getString(columnIndexOrThrow2));
                pubkeyBean.setType(cursorQuery.getString(columnIndexOrThrow3));
                pubkeyBean.setPrivateKey(cursorQuery.getBlob(columnIndexOrThrow4));
                pubkeyBean.setPublicKey(cursorQuery.getBlob(columnIndexOrThrow5));
                boolean z = true;
                pubkeyBean.setEncrypted(cursorQuery.getInt(columnIndexOrThrow6) > 0);
                pubkeyBean.setStartup(cursorQuery.getInt(columnIndexOrThrow7) > 0);
                if (cursorQuery.getInt(columnIndexOrThrow8) <= 0) {
                    z = false;
                }
                pubkeyBean.setConfirmUse(z);
                pubkeyBean.setLifetime(cursorQuery.getInt(columnIndexOrThrow9));
                linkedList.add(pubkeyBean);
            }
            cursorQuery.close();
        }
        readableDatabase.close();
        return linkedList;
    }

    public PubkeyBean findPubkeyById(long j) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query("pubkeys", null, "_id = ?", new String[]{String.valueOf(j)}, null, null, null);
        PubkeyBean pubkeyBeanCreatePubkeyBean = null;
        if (cursorQuery != null) {
            pubkeyBeanCreatePubkeyBean = cursorQuery.moveToFirst() ? createPubkeyBean(cursorQuery) : null;
            cursorQuery.close();
        }
        readableDatabase.close();
        return pubkeyBeanCreatePubkeyBean;
    }

    private PubkeyBean createPubkeyBean(Cursor cursor) {
        PubkeyBean pubkeyBean = new PubkeyBean();
        pubkeyBean.setId(cursor.getLong(cursor.getColumnIndexOrThrow("_id")));
        pubkeyBean.setNickname(cursor.getString(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_NICKNAME)));
        pubkeyBean.setType(cursor.getString(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_TYPE)));
        pubkeyBean.setPrivateKey(cursor.getBlob(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_PRIVATE)));
        pubkeyBean.setPublicKey(cursor.getBlob(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_PUBLIC)));
        pubkeyBean.setEncrypted(cursor.getInt(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_ENCRYPTED)) > 0);
        pubkeyBean.setStartup(cursor.getInt(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_STARTUP)) > 0);
        pubkeyBean.setConfirmUse(cursor.getInt(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_CONFIRMUSE)) > 0);
        pubkeyBean.setLifetime(cursor.getInt(cursor.getColumnIndexOrThrow(FIELD_PUBKEY_LIFETIME)));
        return pubkeyBean;
    }

    public List<CharSequence> allValues(String str) {
        LinkedList linkedList = new LinkedList();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query("pubkeys", new String[]{"_id", str}, null, null, null, null, "_id ASC");
        if (cursorQuery != null) {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(str);
            while (cursorQuery.moveToNext()) {
                linkedList.add(cursorQuery.getString(columnIndexOrThrow));
            }
            cursorQuery.close();
        }
        readableDatabase.close();
        return linkedList;
    }

    public String getNickname(long j) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query("pubkeys", new String[]{"_id", FIELD_PUBKEY_NICKNAME}, "_id = ?", new String[]{Long.toString(j)}, null, null, null);
        String string = null;
        if (cursorQuery != null) {
            string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(FIELD_PUBKEY_NICKNAME)) : null;
            cursorQuery.close();
        }
        readableDatabase.close();
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0030  */
    public PubkeyBean savePubkey(PubkeyBean pubkeyBean) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues values = pubkeyBean.getValues();
        if (pubkeyBean.getId() > 0) {
            values.remove("_id");
            if (writableDatabase.update("pubkeys", values, "_id = ?", new String[]{String.valueOf(pubkeyBean.getId())}) <= 0) {
                pubkeyBean.setId(writableDatabase.insert("pubkeys", null, pubkeyBean.getValues()));
            }
        } else {
            pubkeyBean.setId(writableDatabase.insert("pubkeys", null, pubkeyBean.getValues()));
        }
        writableDatabase.close();
        return pubkeyBean;
    }
}
