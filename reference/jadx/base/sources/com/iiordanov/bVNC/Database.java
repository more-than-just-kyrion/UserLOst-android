package com.iiordanov.bVNC;

import android.content.Context;
import android.util.Log;
import com.iiordanov.bVNC.input.AbstractMetaKeyBean;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.io.File;
import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteOpenHelper;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class Database extends SQLiteOpenHelper {
    static final int CURRVERS = 501;
    static final int DBV_0_5_0 = 12;
    static final int DBV_1_2_0 = 20;
    static final int DBV_1_5_0 = 22;
    static final int DBV_1_6_0 = 291;
    static final int DBV_1_7_0 = 292;
    static final int DBV_1_8_0 = 293;
    static final int DBV_1_9_0 = 308;
    static final int DBV_2_0_0 = 309;
    static final int DBV_2_1_0 = 329;
    static final int DBV_2_1_1 = 335;
    static final int DBV_2_1_2 = 336;
    static final int DBV_2_1_3 = 360;
    static final int DBV_2_1_4 = 367;
    static final int DBV_2_1_5 = 374;
    static final int DBV_2_1_6 = 431;
    static final int DBV_2_1_7 = 501;
    public static final String TAG = Database.class.toString();
    private static String dbName = "VncDatabase";
    private static String password = "";

    public Database(Context context) {
        super(context, dbName, null, HttpStatus.SC_NOT_IMPLEMENTED);
        SQLiteDatabase.loadLibs(context);
    }

    @Override // net.sqlcipher.database.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(AbstractConnectionBean.GEN_CREATE);
        sQLiteDatabase.execSQL(MostRecentBean.GEN_CREATE);
        sQLiteDatabase.execSQL(MetaList.GEN_CREATE);
        sQLiteDatabase.execSQL(AbstractMetaKeyBean.GEN_CREATE);
        sQLiteDatabase.execSQL(SentTextBean.GEN_CREATE);
        sQLiteDatabase.execSQL("INSERT INTO META_LIST VALUES ( 1, 'DEFAULT')");
    }

    public SQLiteDatabase getWritableDatabase() {
        return getWritableDatabase(password);
    }

    public SQLiteDatabase getReadableDatabase() {
        return getReadableDatabase(password);
    }

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String str) {
        password = str;
    }

    public boolean changeDatabasePassword(String str) throws Throwable {
        String str2;
        SQLiteDatabase readableDatabase = getReadableDatabase(password);
        int version = readableDatabase.getVersion();
        String path = readableDatabase.getPath();
        deleteTempDatabase(path, "-temp");
        if (password.equals("")) {
            Log.i(TAG, "Previous database unencrypted, encrypting.");
            str2 = PubkeyDatabase.FIELD_PUBKEY_ENCRYPTED;
        } else if (str.equals("")) {
            Log.i(TAG, "Previous database encrypted, decrypting.");
            str2 = "plaintext";
        } else {
            Log.i(TAG, "Previous database encrypted, rekeying.");
            readableDatabase.rawExecSQL(String.format("PRAGMA key = '%s'", password));
            setPassword(str);
            readableDatabase.rawExecSQL(String.format("PRAGMA rekey = '%s'", password));
            str2 = null;
        }
        if (str2 != null) {
            readableDatabase.rawExecSQL(String.format("ATTACH DATABASE '%s' AS %s KEY '%s'", readableDatabase.getPath() + "-temp", str2, str));
            readableDatabase.rawExecSQL(String.format("select sqlcipher_export('%s')", str2));
            readableDatabase.rawExecSQL(String.format("DETACH DATABASE '%s'", str2));
            readableDatabase.close();
            close();
            Log.i(TAG, "Done exporting to: " + str2);
            try {
                SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(readableDatabase.getPath() + "-temp", str, (SQLiteDatabase.CursorFactory) null, 0);
                sQLiteDatabaseOpenDatabase.setVersion(version);
                sQLiteDatabaseOpenDatabase.close();
                try {
                    moveFile(path, path + "-BAK");
                    moveFile(path + "-temp", path);
                    SQLiteDatabase sQLiteDatabaseOpenDatabase2 = SQLiteDatabase.openDatabase(readableDatabase.getPath(), str, (SQLiteDatabase.CursorFactory) null, 0);
                    sQLiteDatabaseOpenDatabase2.getVersion();
                    sQLiteDatabaseOpenDatabase2.close();
                    return true;
                } catch (Exception unused) {
                    moveFile(path + "-BAK", path);
                    return false;
                } finally {
                    deleteTempDatabase(path, "-BAK");
                    setPassword(str);
                }
            } catch (Exception unused2) {
                deleteTempDatabase(path, "-temp");
                return false;
            }
        }
        readableDatabase.close();
        close();
        return true;
    }

    private void moveFile(String str, String str2) {
        new File(str).renameTo(new File(str2));
    }

    private void deleteTempDatabase(String str, String str2) {
        File file = new File(str + str2);
        if (file.exists()) {
            file.delete();
        }
    }

    @Override // net.sqlcipher.database.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 12) {
            Log.i(TAG, "Doing upgrade from 12 to 20");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN CONNECTIONTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHSERVER TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPORT INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHUSER TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPASSWORD TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN KEEPSSHPASSWORD BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPUBKEY TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPRIVKEY TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPASSPHRASE TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN USESSHPUBKEY BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHHOSTKEY TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDOS INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMAND TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDTIMEOUT INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN USESSHREMOTECOMMAND BOOLEAN DEFAULT FALSE");
            i = 20;
        }
        if (i == 20) {
            Log.i(TAG, "Doing upgrade from 20 to 22");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN USEDPADASARROWS BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN ROTATEDPAD BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN USEPORTRAIT BOOLEAN DEFAULT FALSE");
            i = 22;
        }
        if (i == 22) {
            Log.i(TAG, "Doing upgrade from 22 to 291");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXENABLED BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXCOMMAND TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXRESTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXWIDTH INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXHEIGHT INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXSESSIONTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXSESSIONPROG TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXRANDFILENM TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXUNIXPW BOOLEAN DEFAULT FALSE");
            i = DBV_1_6_0;
        }
        if (i == DBV_1_6_0) {
            Log.i(TAG, "Doing upgrade from 291 to 292");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXUNIXAUTH BOOLEAN DEFAULT FALSE");
            i = DBV_1_7_0;
        }
        if (i == DBV_1_7_0) {
            Log.i(TAG, "Doing upgrade from 292 to 293");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN EXTRAKEYSTOGGLETYPE INTEGER");
            i = DBV_1_8_0;
        }
        if (i == DBV_1_8_0) {
            Log.i(TAG, "Doing upgrade from 293 to 308");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN PREFENCODING INTEGER");
            i = 308;
        }
        if (i == 308) {
            Log.i(TAG, "Doing upgrade from 308 to 309");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPDOMAIN TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPRESTYPE INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPWIDTH INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPHEIGHT INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPCOLOR INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN REMOTEFX BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN DESKTOPBACKGROUND BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN FONTSMOOTHING BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN DESKTOPCOMPOSITION BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN WINDOWCONTENTS BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN MENUANIMATION BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN VISUALSTYLES BOOLEAN DEFAULT FALSE");
            i = DBV_2_0_0;
        }
        if (i == DBV_2_0_0) {
            Log.i(TAG, "Doing upgrade from 309 to 329");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN CACERT TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN CACERTPATH TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN TLSPORT INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN CERTSUBJECT TEXT");
            i = DBV_2_1_0;
        }
        if (i == DBV_2_1_0) {
            Log.i(TAG, "Doing upgrade from 329 to 335");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLESOUND BOOLEAN DEFAULT FALSE");
            i = DBV_2_1_1;
        }
        if (i == DBV_2_1_1) {
            Log.i(TAG, "Doing upgrade from 335 to 336");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN VIEWONLY BOOLEAN DEFAULT FALSE");
            i = DBV_2_1_2;
        }
        if (i == DBV_2_1_2) {
            Log.i(TAG, "Doing upgrade from 336 to 360");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN CONSOLEMODE BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN REDIRECTSDCARD BOOLEAN DEFAULT FALSE");
            i = 360;
        }
        if (i == 360) {
            Log.i(TAG, "Doing upgrade from 360 to 367");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN LAYOUTMAP TEXT DEFAULT 'English (US)'");
            i = DBV_2_1_4;
        }
        if (i == DBV_2_1_4) {
            Log.i(TAG, "Doing upgrade from 367 to 374");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLERECORDING BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN REMOTESOUNDTYPE INTEGER DEFAULT 2");
            i = DBV_2_1_5;
        }
        if (i == DBV_2_1_5) {
            Log.i(TAG, "Doing upgrade from 374 to 430");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN FILENAME TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN X509KEYSIGNATURE TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN SCREENSHOTFILENAME TEXT");
            i = DBV_2_1_6;
        }
        if (i == DBV_2_1_6) {
            Log.i(TAG, "Doing upgrade from 430 to 501");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLEGFX BOOLEAN DEFAULT FALSE");
            sQLiteDatabase.execSQL("ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLEGFXH264 BOOLEAN DEFAULT FALSE");
        }
    }
}
