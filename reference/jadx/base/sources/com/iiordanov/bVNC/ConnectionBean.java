package com.iiordanov.bVNC;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import com.antlersoft.android.dbimpl.NewInstance;
import com.iiordanov.bVNC.input.InputHandlerDirectSwipePan;
import com.undatech.opaque.Connection;
import com.undatech.remoteClientUi.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionBean extends AbstractConnectionBean implements Connection, Comparable<ConnectionBean> {
    private static final String TAG = "ConnectionBean";
    static Context c;
    public static final NewInstance<ConnectionBean> newInstance = new NewInstance<ConnectionBean>() { // from class: com.iiordanov.bVNC.ConnectionBean.1
        @Override // com.antlersoft.android.dbimpl.NewInstance
        public ConnectionBean get() {
            return new ConnectionBean(ConnectionBean.c);
        }
    };
    private String id;
    private String idHash;
    private int idHashAlgorithm;
    private String masterPassword;
    protected boolean readyForConnection = true;
    protected boolean readyToBeSaved = false;
    private boolean useLastPositionToolbar;
    private boolean useLastPositionToolbarMoved;
    private int useLastPositionToolbarX;
    private int useLastPositionToolbarY;

    @Override // com.undatech.opaque.Connection
    public String getHostname() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getOtpCode() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getOvirtCaData() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getOvirtCaFile() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getVmname() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isAudioPlaybackEnabled() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isRequestingNewDisplayResolution() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isRotationEnabled() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isSslStrict() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isUsbEnabled() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isUsingCustomOvirtCa() {
        return false;
    }

    boolean isValidPort(int i) {
        return i > 0 && i <= 65535;
    }

    @Override // com.undatech.opaque.Connection
    public String saveCaToFile(Context context, String str) {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public void setAudioPlaybackEnabled(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setConnectionTypeString(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setHostname(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setOtpCode(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setOvirtCaData(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setOvirtCaFile(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRequestingNewDisplayResolution(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRotationEnabled(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSslStrict(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUsbEnabled(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUsingCustomOvirtCa(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setVmname(String str) {
    }

    ConnectionBean(Context context) {
        String strQuerySharedPreferenceString = InputHandlerDirectSwipePan.ID;
        if (context != null) {
            strQuerySharedPreferenceString = Utils.querySharedPreferenceString(context, Constants.defaultInputMethodTag, InputHandlerDirectSwipePan.ID);
        } else {
            Log.w(TAG, "Failed to query default input method, context is null.");
        }
        set_Id(0L);
        setAddress("");
        setPassword("");
        setKeepPassword(true);
        setNickname("");
        setConnectionType(0);
        setSshServer("");
        setSshPort(22);
        setSshUser("");
        setSshPassword("");
        setKeepSshPassword(false);
        setSshPubKey("");
        setSshPrivKey("");
        setSshPassPhrase("");
        setUseSshPubKey(false);
        setSshHostKey("");
        setSshRemoteCommandOS(0);
        setSshRemoteCommandType(0);
        setSshRemoteCommand("");
        setSshRemoteCommandTimeout(5);
        setAutoXType(0);
        setAutoXCommand("");
        setAutoXEnabled(false);
        setAutoXResType(0);
        setAutoXWidth(0);
        setAutoXHeight(0);
        setAutoXSessionProg("");
        setAutoXSessionType(0);
        setAutoXUnixpw(false);
        setAutoXUnixAuth(false);
        setAutoXRandFileNm("");
        setUseSshRemoteCommand(false);
        setUserName("");
        setRdpDomain("");
        setPort(Constants.DEFAULT_PROTOCOL_PORT);
        setCaCert("");
        setCaCertPath("");
        setTlsPort(-1);
        setCertSubject("");
        setColorModel(COLORMODEL.C24bit.nameString());
        setPrefEncoding(0);
        setScaleMode(ImageView.ScaleType.FIT_CENTER);
        setInputMode(strQuerySharedPreferenceString);
        setUseDpadAsArrows(true);
        setRotateDpad(false);
        setUsePortrait(false);
        setUseLocalCursor(0);
        setRepeaterId("");
        setExtraKeysToggleType(1);
        setMetaListId(1L);
        setRdpResType(0);
        setRdpWidth(0);
        setRdpHeight(0);
        setRdpColor(0);
        setRemoteFx(false);
        setDesktopBackground(false);
        setFontSmoothing(false);
        setDesktopComposition(false);
        setWindowContents(false);
        setMenuAnimation(false);
        setVisualStyles(false);
        setConsoleMode(false);
        setRedirectSdCard(false);
        setEnableSound(false);
        setEnableRecording(false);
        setRemoteSoundType(0);
        setViewOnly(false);
        setLayoutMap("English (US)");
        setFilename(UUID.randomUUID().toString());
        setX509KeySignature("");
        setIdHash("");
        setScreenshotFilename(Utils.newScreenshotFileName());
        setEnableGfx(false);
        setEnableGfxH264(false);
        c = context;
        setIdHashAlgorithm(2);
        setIdHash("");
        setUseLastPositionToolbar(true);
        setUseLastPositionToolbarX(0);
        setUseLastPositionToolbarY(0);
        setUseLastPositionToolbarMoved(false);
    }

    @Override // com.undatech.opaque.Connection
    public int getIdHashAlgorithm() {
        return this.idHashAlgorithm;
    }

    @Override // com.undatech.opaque.Connection
    public void setIdHashAlgorithm(int i) {
        this.idHashAlgorithm = i;
    }

    @Override // com.undatech.opaque.Connection
    public String getIdHash() {
        return this.idHash;
    }

    @Override // com.undatech.opaque.Connection
    public void setIdHash(String str) {
        this.idHash = str;
    }

    boolean isNew() {
        return get_Id() == 0;
    }

    @Override // com.undatech.opaque.Connection
    public void populateFromContentValues(ContentValues contentValues) {
        Gen_populate(contentValues);
    }

    @Override // com.undatech.opaque.Connection
    public String getLabel() {
        String str = !"".equals(getNickname()) ? getNickname() + StringUtils.LF : "";
        String str2 = getAddress() + ":" + getPort();
        if (!"".equals(getUserName())) {
            str2 = getUserName() + "@" + str2;
        }
        if (!"".equals(getSshServer())) {
            str2 = "SSH " + getSshUser() + "@" + getSshServer() + ":" + getSshPort() + StringUtils.LF + str2;
        }
        return str + str2;
    }

    @Override // com.undatech.opaque.Connection
    public String getRuntimeId() {
        return this.id;
    }

    @Override // com.undatech.opaque.Connection
    public String getId() {
        return Long.toString(get_Id());
    }

    @Override // com.undatech.opaque.Connection
    public void setRuntimeId(String str) {
        this.id = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getConnectionTypeString() {
        return "";
    }

    @Override // com.undatech.opaque.Connection
    public synchronized void save(Context context) {
        Log.d(TAG, "save called");
        Database database = new Database(context);
        save(database.getWritableDatabase());
        database.close();
        saveToSharedPreferences(context);
    }

    @Override // com.undatech.opaque.Connection
    public void load(Context context) {
        loadFromSharedPreferences(context);
    }

    public void loadFromSharedPreferences(Context context) {
        Log.d(TAG, "loadFromSharedPreferences called");
        SharedPreferences sharedPreferences = context.getSharedPreferences(Long.toString(get_Id()), 0);
        this.useLastPositionToolbar = sharedPreferences.getBoolean("useLastPositionToolbar", true);
        this.useLastPositionToolbarX = sharedPreferences.getInt("useLastPositionToolbarX", 0);
        this.useLastPositionToolbarY = sharedPreferences.getInt("useLastPositionToolbarY", 0);
        this.useLastPositionToolbarMoved = sharedPreferences.getBoolean("useLastPositionToolbarMoved", false);
    }

    public void saveToSharedPreferences(Context context) {
        Log.d(TAG, "saveToSharedPreferences called");
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(Long.toString(get_Id()), 0).edit();
        editorEdit.putBoolean("useLastPositionToolbar", this.useLastPositionToolbar);
        editorEdit.putInt("useLastPositionToolbarX", this.useLastPositionToolbarX);
        editorEdit.putInt("useLastPositionToolbarY", this.useLastPositionToolbarY);
        editorEdit.putBoolean("useLastPositionToolbarMoved", this.useLastPositionToolbarMoved);
        editorEdit.apply();
    }

    private synchronized void save(SQLiteDatabase sQLiteDatabase) {
        Log.d(TAG, "save called with database");
        ContentValues contentValuesGen_getValues = Gen_getValues();
        contentValuesGen_getValues.remove("_id");
        if (!getKeepSshPassword()) {
            contentValuesGen_getValues.put(AbstractConnectionBean.GEN_FIELD_SSHPASSWORD, "");
            contentValuesGen_getValues.put(AbstractConnectionBean.GEN_FIELD_SSHPASSPHRASE, "");
        }
        if (!getKeepPassword()) {
            contentValuesGen_getValues.put(AbstractConnectionBean.GEN_FIELD_PASSWORD, "");
        }
        if (isNew()) {
            set_Id(sQLiteDatabase.insert(AbstractConnectionBean.GEN_TABLE_NAME, null, contentValuesGen_getValues));
        } else {
            sQLiteDatabase.update(AbstractConnectionBean.GEN_TABLE_NAME, contentValuesGen_getValues, "_id = ?", new String[]{Long.toString(get_Id())});
        }
    }

    @Override // com.undatech.opaque.Connection
    public boolean isReadyForConnection() {
        return this.readyForConnection;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isReadyToBeSaved() {
        return this.readyToBeSaved;
    }

    @Override // com.undatech.opaque.Connection
    public ImageView.ScaleType getScaleMode() {
        return ImageView.ScaleType.valueOf(getScaleModeAsString());
    }

    @Override // com.undatech.opaque.Connection
    public void setScaleMode(ImageView.ScaleType scaleType) {
        setScaleModeAsString(scaleType.toString());
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseLastPositionToolbar() {
        return this.useLastPositionToolbar;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbar(boolean z) {
        this.useLastPositionToolbar = z;
    }

    @Override // com.undatech.opaque.Connection
    public int getUseLastPositionToolbarX() {
        return this.useLastPositionToolbarX;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarX(int i) {
        this.useLastPositionToolbarX = i;
    }

    @Override // com.undatech.opaque.Connection
    public int getUseLastPositionToolbarY() {
        return this.useLastPositionToolbarY;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarY(int i) {
        this.useLastPositionToolbarY = i;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarMoved(boolean z) {
        this.useLastPositionToolbarMoved = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseLastPositionToolbarMoved() {
        return this.useLastPositionToolbarMoved;
    }

    static ConnectionBean createLoadFromUri(Uri uri, Context context) {
        MostRecentBean mostRecent;
        int i;
        Log.d(TAG, "Creating connection from URI");
        ConnectionBean connectionBean = new ConnectionBean(context);
        if (uri == null) {
            return connectionBean;
        }
        Database database = new Database(context);
        String host = uri.getHost();
        int i2 = 0;
        if (host != null && host.startsWith(Utils.getConnectionString(context))) {
            int iIndexOf = host.indexOf(58);
            if (iIndexOf != -1) {
                try {
                    i = Integer.parseInt(host.substring(iIndexOf + 1));
                } catch (NumberFormatException unused) {
                    i = 0;
                }
                host.substring(0, iIndexOf);
                i2 = i;
            }
            if (connectionBean.Gen_read(database.getReadableDatabase(), i2) && (mostRecent = getMostRecent(database.getReadableDatabase())) != null) {
                mostRecent.setConnectionId(connectionBean.get_Id());
                mostRecent.Gen_update(database.getWritableDatabase());
                database.close();
            }
            return connectionBean;
        }
        SQLiteDatabase readableDatabase = database.getReadableDatabase();
        String queryParameter = uri.getQueryParameter(Constants.PARAM_CONN_NAME);
        Cursor cursorQuery = queryParameter != null ? readableDatabase.query(AbstractConnectionBean.GEN_TABLE_NAME, new String[]{"_id"}, "NICKNAME = ?", new String[]{queryParameter}, null, null, null) : null;
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            Log.i(TAG, String.format(Locale.US, "Loding connection info from nickname: %s", queryParameter));
            connectionBean.Gen_populate(cursorQuery, connectionBean.Gen_columnIndices(cursorQuery));
            cursorQuery.close();
            database.close();
            return connectionBean;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        Cursor cursorQuery2 = host != null ? readableDatabase.query(AbstractConnectionBean.GEN_TABLE_NAME, new String[]{"_id"}, "ADDRESS = ?", new String[]{host}, null, null, null) : null;
        if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
            Log.i(TAG, String.format(Locale.US, "Loding connection info from hostname: %s", host));
            connectionBean.Gen_populate(cursorQuery2, connectionBean.Gen_columnIndices(cursorQuery2));
            cursorQuery2.close();
            database.close();
            return connectionBean;
        }
        if (cursorQuery2 != null) {
            cursorQuery2.close();
        }
        database.close();
        return connectionBean;
    }

    @Override // com.undatech.opaque.Connection
    public void parseFromUri(Uri uri) {
        boolean z;
        int i;
        Log.i(TAG, "Parsing VNC URI.");
        if (uri == null) {
            this.readyForConnection = false;
            this.readyToBeSaved = true;
            return;
        }
        String host = uri.getHost();
        if (host != null) {
            setAddress(host);
            if (Utils.isNullOrEmptry(getNickname())) {
                setNickname(host);
            }
            if (Utils.isNullOrEmptry(getSshServer())) {
                setSshServer(host);
            }
        }
        int port = uri.getPort();
        if (port != -1 && !isValidPort(port)) {
            throw new IllegalArgumentException("The specified VNC port is not valid.");
        }
        setPort(port);
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() >= 1) {
            setColorModel(pathSegments.get(0));
        }
        if (pathSegments.size() >= 2) {
            setPassword(pathSegments.get(1));
        }
        String queryParameter = uri.getQueryParameter(Constants.PARAM_CONN_NAME);
        if (queryParameter != null) {
            setNickname(queryParameter);
        }
        Iterator<String> it = new ArrayList<String>() { // from class: com.iiordanov.bVNC.ConnectionBean.2
            {
                add(Constants.PARAM_RDP_USER);
                add(Constants.PARAM_SPICE_USER);
                add(Constants.PARAM_VNC_USER);
            }
        }.iterator();
        while (it.hasNext()) {
            String queryParameter2 = uri.getQueryParameter(it.next());
            if (queryParameter2 != null) {
                setUserName(queryParameter2);
                break;
            }
        }
        Iterator<String> it2 = new ArrayList<String>() { // from class: com.iiordanov.bVNC.ConnectionBean.3
            {
                add(Constants.PARAM_RDP_PWD);
                add(Constants.PARAM_SPICE_PWD);
                add(Constants.PARAM_VNC_PWD);
            }
        }.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            String queryParameter3 = uri.getQueryParameter(it2.next());
            if (queryParameter3 != null) {
                setPassword(queryParameter3);
                z = true;
                break;
            }
        }
        setKeepPassword(false);
        String queryParameter4 = uri.getQueryParameter(Constants.PARAM_SECTYPE);
        if (queryParameter4 != null) {
            i = Integer.parseInt(queryParameter4);
            if (i == 1 || i == 2) {
                setConnectionType(0);
            } else if (i == 23) {
                setConnectionType(5);
            } else if (i == 24) {
                setConnectionType(1);
            } else {
                switch (i) {
                    case 17:
                        setConnectionType(2);
                        break;
                    case 18:
                        setConnectionType(3);
                        break;
                    case 19:
                        setConnectionType(4);
                        break;
                    default:
                        throw new IllegalArgumentException("The specified security type is invalid or unsupported.");
                }
            }
        } else {
            i = 0;
        }
        String queryParameter5 = uri.getQueryParameter(Constants.PARAM_SSH_HOST);
        if (queryParameter5 != null) {
            setSshServer(queryParameter5);
        }
        String queryParameter6 = uri.getQueryParameter(Constants.PARAM_SSH_PORT);
        if (queryParameter6 != null) {
            int i2 = Integer.parseInt(queryParameter6);
            if (!isValidPort(i2)) {
                throw new IllegalArgumentException("The specified SSH port is not valid.");
            }
            setSshPort(i2);
        }
        String queryParameter7 = uri.getQueryParameter(Constants.PARAM_SSH_USER);
        if (queryParameter7 != null) {
            setSshUser(queryParameter7);
        }
        String queryParameter8 = uri.getQueryParameter(Constants.PARAM_SSH_PWD);
        if (queryParameter8 != null) {
            setSshPassword(queryParameter8);
        }
        String queryParameter9 = uri.getQueryParameter(Constants.PARAM_ID_HASH_ALG);
        if (queryParameter9 != null) {
            int i3 = Integer.parseInt(queryParameter9);
            if (i3 == 1 || i3 == 2 || i3 == 4) {
                setIdHashAlgorithm(i3);
            } else {
                throw new IllegalArgumentException("The specified hash algorithm is invalid or unsupported.");
            }
        }
        String queryParameter10 = uri.getQueryParameter(Constants.PARAM_ID_HASH);
        if (queryParameter10 != null) {
            setIdHash(queryParameter10);
        }
        String queryParameter11 = uri.getQueryParameter(Constants.PARAM_VIEW_ONLY);
        if (queryParameter11 != null) {
            setViewOnly(Boolean.parseBoolean(queryParameter11));
        }
        String queryParameter12 = uri.getQueryParameter(Constants.PARAM_SCALE_MODE);
        if (queryParameter12 != null) {
            setScaleMode(ImageView.ScaleType.valueOf(queryParameter12));
        }
        String queryParameter13 = uri.getQueryParameter(Constants.PARAM_EXTRAKEYS_TOGGLE);
        if (queryParameter13 != null) {
            setExtraKeysToggleType(Integer.parseInt(queryParameter13));
        }
        String queryParameter14 = uri.getQueryParameter(Constants.PARAM_COLORMODEL);
        if (queryParameter14 != null) {
            switch (Integer.parseInt(queryParameter14)) {
                case 1:
                    setColorModel(COLORMODEL.C2.nameString());
                    break;
                case 2:
                    setColorModel(COLORMODEL.C4.nameString());
                    break;
                case 3:
                    setColorModel(COLORMODEL.C8.nameString());
                    break;
                case 4:
                    setColorModel(COLORMODEL.C64.nameString());
                    break;
                case 5:
                    setColorModel(COLORMODEL.C256.nameString());
                    break;
                case 6:
                    setColorModel(COLORMODEL.C24bit.nameString());
                    break;
                case 7:
                    setColorModel(COLORMODEL.C24bit.nameString());
                    break;
                case 8:
                    setColorModel(COLORMODEL.C24bit.nameString());
                    break;
                default:
                    throw new IllegalArgumentException("The specified color model is invalid or unsupported.");
            }
        }
        String queryParameter15 = uri.getQueryParameter(Constants.PARAM_SAVE_CONN);
        boolean z2 = queryParameter15 != null ? Boolean.parseBoolean(queryParameter15) : true;
        String queryParameter16 = uri.getQueryParameter(Constants.PARAM_TLS_PORT);
        if (queryParameter16 != null) {
            int i4 = Integer.parseInt(queryParameter16);
            if (!isValidPort(i4)) {
                throw new IllegalArgumentException("The specified TLS port is not valid.");
            }
            setTlsPort(i4);
        }
        String queryParameter17 = uri.getQueryParameter(Constants.PARAM_CACERT_PATH);
        if (queryParameter17 != null) {
            setCaCertPath(queryParameter17);
        }
        String queryParameter18 = uri.getQueryParameter(Constants.PARAM_CERT_SUBJECT);
        if (queryParameter18 != null) {
            setCertSubject(queryParameter18);
        }
        String queryParameter19 = uri.getQueryParameter(Constants.PARAM_KEYBOARD_LAYOUT);
        if (queryParameter19 != null) {
            setLayoutMap(queryParameter19);
        }
        if (z2) {
            Database database = new Database(c);
            save(database.getWritableDatabase());
            database.close();
            saveToSharedPreferences(c);
            this.readyToBeSaved = true;
        }
        this.readyForConnection = true;
        if (Utils.isNullOrEmptry(getAddress())) {
            this.readyForConnection = false;
            Log.i(TAG, "URI missing remote address.");
        }
        int connectionType = getConnectionType();
        if ((i == 2 || connectionType == 5 || connectionType == 1) && Utils.isNullOrEmptry(getPassword()) && !z) {
            this.readyForConnection = false;
            Log.i(TAG, "URI missing base protocol password.");
        }
        if (connectionType == 1 && Utils.isNullOrEmptry(getSshServer())) {
            this.readyForConnection = false;
        }
    }

    public String toString() {
        if (isNew()) {
            return c.getString(R.string.new_connection);
        }
        String str = new String("");
        if (!getNickname().equals("")) {
            str = str + getNickname() + ":";
        }
        if (getConnectionType() == 1) {
            str = str + "(" + getSshServer() + ":" + getSshPort() + "):";
        }
        return str + getAddress() + ":" + getPort();
    }

    @Override // java.lang.Comparable
    public int compareTo(ConnectionBean connectionBean) {
        int iCompareTo = getNickname().compareTo(connectionBean.getNickname());
        if (iCompareTo == 0) {
            iCompareTo = getConnectionType() - connectionBean.getConnectionType();
        }
        if (iCompareTo == 0) {
            iCompareTo = getAddress().compareTo(connectionBean.getAddress());
        }
        if (iCompareTo == 0) {
            iCompareTo = getPort() - connectionBean.getPort();
        }
        if (iCompareTo == 0) {
            iCompareTo = getSshServer().compareTo(connectionBean.getSshServer());
        }
        return iCompareTo == 0 ? getSshPort() - connectionBean.getSshPort() : iCompareTo;
    }

    public static MostRecentBean getMostRecent(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList(1);
        MostRecentBean.getAll(sQLiteDatabase, MostRecentBean.GEN_TABLE_NAME, arrayList, MostRecentBean.GEN_NEW);
        if (arrayList.size() == 0) {
            return null;
        }
        return (MostRecentBean) arrayList.get(0);
    }

    @Override // com.undatech.opaque.Connection
    public void saveAndWriteRecent(boolean z, Context context) {
        Log.d(TAG, "saveAndWriteRecent called");
        Database database = new Database(context);
        if (((getConnectionType() == 1 && getSshServer().equals("")) || getAddress().equals("")) && !z) {
            Log.d(TAG, "saveAndWriteRecent not saving");
            return;
        }
        Log.d(TAG, "saveAndWriteRecent saving");
        saveAndWriteRecent(z, database);
        saveToSharedPreferences(context);
    }

    private void saveAndWriteRecent(boolean z, Database database) {
        Log.d(TAG, "saveAndWriteRecent called with database");
        SQLiteDatabase writableDatabase = database.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            save(writableDatabase);
            MostRecentBean mostRecent = getMostRecent(writableDatabase);
            if (mostRecent == null) {
                MostRecentBean mostRecentBean = new MostRecentBean();
                mostRecentBean.setConnectionId(get_Id());
                mostRecentBean.Gen_insert(writableDatabase);
            } else {
                mostRecent.setConnectionId(get_Id());
                mostRecent.Gen_update(writableDatabase);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            writableDatabase.close();
            if (writableDatabase.isOpen()) {
                writableDatabase.close();
            }
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            writableDatabase.close();
            throw th;
        }
    }
}
