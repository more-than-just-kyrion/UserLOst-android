package com.iiordanov.bVNC;

import android.content.ContentValues;
import android.database.Cursor;
import com.antlersoft.android.dbimpl.IdImplementationBase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractConnectionBean extends IdImplementationBase implements IConnectionBean {
    public static final int GEN_COUNT = 81;
    public static String GEN_CREATE = "CREATE TABLE CONNECTION_BEAN (_id INTEGER PRIMARY KEY AUTOINCREMENT,NICKNAME TEXT,CONNECTIONTYPE INTEGER,SSHSERVER TEXT,SSHPORT INTEGER,SSHUSER TEXT,SSHPASSWORD TEXT,KEEPSSHPASSWORD INTEGER,SSHPUBKEY TEXT,SSHPRIVKEY TEXT,SSHPASSPHRASE TEXT,USESSHPUBKEY INTEGER,SSHREMOTECOMMANDOS INTEGER,SSHREMOTECOMMANDTYPE INTEGER,AUTOXTYPE INTEGER,AUTOXCOMMAND TEXT,AUTOXENABLED INTEGER,AUTOXRESTYPE INTEGER,AUTOXWIDTH INTEGER,AUTOXHEIGHT INTEGER,AUTOXSESSIONPROG TEXT,AUTOXSESSIONTYPE INTEGER,AUTOXUNIXPW INTEGER,AUTOXUNIXAUTH INTEGER,AUTOXRANDFILENM TEXT,SSHREMOTECOMMAND TEXT,SSHREMOTECOMMANDTIMEOUT INTEGER,USESSHREMOTECOMMAND INTEGER,SSHHOSTKEY TEXT,ADDRESS TEXT,PORT INTEGER,CACERT TEXT,CACERTPATH TEXT,TLSPORT INTEGER,CERTSUBJECT TEXT,PASSWORD TEXT,COLORMODEL TEXT,PREFENCODING INTEGER,EXTRAKEYSTOGGLETYPE INTEGER,FORCEFULL INTEGER,REPEATERID TEXT,INPUTMODE TEXT,SCALEMODE TEXT,USEDPADASARROWS INTEGER,ROTATEDPAD INTEGER,USEPORTRAIT INTEGER,USELOCALCURSOR INTEGER,KEEPPASSWORD INTEGER,FOLLOWMOUSE INTEGER,USEREPEATER INTEGER,METALISTID INTEGER,LAST_META_KEY_ID INTEGER,FOLLOWPAN INTEGER DEFAULT 0,USERNAME TEXT,RDPDOMAIN TEXT,SECURECONNECTIONTYPE TEXT,SHOWZOOMBUTTONS INTEGER DEFAULT 1,DOUBLE_TAP_ACTION TEXT,RDPRESTYPE INTEGER,RDPWIDTH INTEGER,RDPHEIGHT INTEGER,RDPCOLOR INTEGER,REMOTEFX INTEGER,DESKTOPBACKGROUND INTEGER,FONTSMOOTHING INTEGER,DESKTOPCOMPOSITION INTEGER,WINDOWCONTENTS INTEGER,MENUANIMATION INTEGER,VISUALSTYLES INTEGER,REDIRECTSDCARD INTEGER,CONSOLEMODE INTEGER,ENABLESOUND INTEGER,ENABLERECORDING INTEGER,REMOTESOUNDTYPE INTEGER,VIEWONLY INTEGER,LAYOUTMAP TEXT,FILENAME TEXT,X509KEYSIGNATURE TEXT,SCREENSHOTFILENAME TEXT,ENABLEGFX INTEGER,ENABLEGFXH264 INTEGER)";
    public static final String GEN_FIELD_ADDRESS = "ADDRESS";
    public static final String GEN_FIELD_AUTOXCOMMAND = "AUTOXCOMMAND";
    public static final String GEN_FIELD_AUTOXENABLED = "AUTOXENABLED";
    public static final String GEN_FIELD_AUTOXHEIGHT = "AUTOXHEIGHT";
    public static final String GEN_FIELD_AUTOXRANDFILENM = "AUTOXRANDFILENM";
    public static final String GEN_FIELD_AUTOXRESTYPE = "AUTOXRESTYPE";
    public static final String GEN_FIELD_AUTOXSESSIONPROG = "AUTOXSESSIONPROG";
    public static final String GEN_FIELD_AUTOXSESSIONTYPE = "AUTOXSESSIONTYPE";
    public static final String GEN_FIELD_AUTOXTYPE = "AUTOXTYPE";
    public static final String GEN_FIELD_AUTOXUNIXAUTH = "AUTOXUNIXAUTH";
    public static final String GEN_FIELD_AUTOXUNIXPW = "AUTOXUNIXPW";
    public static final String GEN_FIELD_AUTOXWIDTH = "AUTOXWIDTH";
    public static final String GEN_FIELD_CACERT = "CACERT";
    public static final String GEN_FIELD_CACERTPATH = "CACERTPATH";
    public static final String GEN_FIELD_CERTSUBJECT = "CERTSUBJECT";
    public static final String GEN_FIELD_COLORMODEL = "COLORMODEL";
    public static final String GEN_FIELD_CONNECTIONTYPE = "CONNECTIONTYPE";
    public static final String GEN_FIELD_CONSOLEMODE = "CONSOLEMODE";
    public static final String GEN_FIELD_DESKTOPBACKGROUND = "DESKTOPBACKGROUND";
    public static final String GEN_FIELD_DESKTOPCOMPOSITION = "DESKTOPCOMPOSITION";
    public static final String GEN_FIELD_DOUBLE_TAP_ACTION = "DOUBLE_TAP_ACTION";
    public static final String GEN_FIELD_ENABLEGFX = "ENABLEGFX";
    public static final String GEN_FIELD_ENABLEGFXH264 = "ENABLEGFXH264";
    public static final String GEN_FIELD_ENABLERECORDING = "ENABLERECORDING";
    public static final String GEN_FIELD_ENABLESOUND = "ENABLESOUND";
    public static final String GEN_FIELD_EXTRAKEYSTOGGLETYPE = "EXTRAKEYSTOGGLETYPE";
    public static final String GEN_FIELD_FILENAME = "FILENAME";
    public static final String GEN_FIELD_FOLLOWMOUSE = "FOLLOWMOUSE";
    public static final String GEN_FIELD_FOLLOWPAN = "FOLLOWPAN";
    public static final String GEN_FIELD_FONTSMOOTHING = "FONTSMOOTHING";
    public static final String GEN_FIELD_FORCEFULL = "FORCEFULL";
    public static final String GEN_FIELD_INPUTMODE = "INPUTMODE";
    public static final String GEN_FIELD_KEEPPASSWORD = "KEEPPASSWORD";
    public static final String GEN_FIELD_KEEPSSHPASSWORD = "KEEPSSHPASSWORD";
    public static final String GEN_FIELD_LAST_META_KEY_ID = "LAST_META_KEY_ID";
    public static final String GEN_FIELD_LAYOUTMAP = "LAYOUTMAP";
    public static final String GEN_FIELD_MENUANIMATION = "MENUANIMATION";
    public static final String GEN_FIELD_METALISTID = "METALISTID";
    public static final String GEN_FIELD_NICKNAME = "NICKNAME";
    public static final String GEN_FIELD_PASSWORD = "PASSWORD";
    public static final String GEN_FIELD_PORT = "PORT";
    public static final String GEN_FIELD_PREFENCODING = "PREFENCODING";
    public static final String GEN_FIELD_RDPCOLOR = "RDPCOLOR";
    public static final String GEN_FIELD_RDPDOMAIN = "RDPDOMAIN";
    public static final String GEN_FIELD_RDPHEIGHT = "RDPHEIGHT";
    public static final String GEN_FIELD_RDPRESTYPE = "RDPRESTYPE";
    public static final String GEN_FIELD_RDPWIDTH = "RDPWIDTH";
    public static final String GEN_FIELD_REDIRECTSDCARD = "REDIRECTSDCARD";
    public static final String GEN_FIELD_REMOTEFX = "REMOTEFX";
    public static final String GEN_FIELD_REMOTESOUNDTYPE = "REMOTESOUNDTYPE";
    public static final String GEN_FIELD_REPEATERID = "REPEATERID";
    public static final String GEN_FIELD_ROTATEDPAD = "ROTATEDPAD";
    public static final String GEN_FIELD_SCALEMODE = "SCALEMODE";
    public static final String GEN_FIELD_SCREENSHOTFILENAME = "SCREENSHOTFILENAME";
    public static final String GEN_FIELD_SECURECONNECTIONTYPE = "SECURECONNECTIONTYPE";
    public static final String GEN_FIELD_SHOWZOOMBUTTONS = "SHOWZOOMBUTTONS";
    public static final String GEN_FIELD_SSHHOSTKEY = "SSHHOSTKEY";
    public static final String GEN_FIELD_SSHPASSPHRASE = "SSHPASSPHRASE";
    public static final String GEN_FIELD_SSHPASSWORD = "SSHPASSWORD";
    public static final String GEN_FIELD_SSHPORT = "SSHPORT";
    public static final String GEN_FIELD_SSHPRIVKEY = "SSHPRIVKEY";
    public static final String GEN_FIELD_SSHPUBKEY = "SSHPUBKEY";
    public static final String GEN_FIELD_SSHREMOTECOMMAND = "SSHREMOTECOMMAND";
    public static final String GEN_FIELD_SSHREMOTECOMMANDOS = "SSHREMOTECOMMANDOS";
    public static final String GEN_FIELD_SSHREMOTECOMMANDTIMEOUT = "SSHREMOTECOMMANDTIMEOUT";
    public static final String GEN_FIELD_SSHREMOTECOMMANDTYPE = "SSHREMOTECOMMANDTYPE";
    public static final String GEN_FIELD_SSHSERVER = "SSHSERVER";
    public static final String GEN_FIELD_SSHUSER = "SSHUSER";
    public static final String GEN_FIELD_TLSPORT = "TLSPORT";
    public static final String GEN_FIELD_USEDPADASARROWS = "USEDPADASARROWS";
    public static final String GEN_FIELD_USELOCALCURSOR = "USELOCALCURSOR";
    public static final String GEN_FIELD_USEPORTRAIT = "USEPORTRAIT";
    public static final String GEN_FIELD_USEREPEATER = "USEREPEATER";
    public static final String GEN_FIELD_USERNAME = "USERNAME";
    public static final String GEN_FIELD_USESSHPUBKEY = "USESSHPUBKEY";
    public static final String GEN_FIELD_USESSHREMOTECOMMAND = "USESSHREMOTECOMMAND";
    public static final String GEN_FIELD_VIEWONLY = "VIEWONLY";
    public static final String GEN_FIELD_VISUALSTYLES = "VISUALSTYLES";
    public static final String GEN_FIELD_WINDOWCONTENTS = "WINDOWCONTENTS";
    public static final String GEN_FIELD_X509KEYSIGNATURE = "X509KEYSIGNATURE";
    public static final String GEN_FIELD__ID = "_id";
    public static final int GEN_ID_ADDRESS = 29;
    public static final int GEN_ID_AUTOXCOMMAND = 15;
    public static final int GEN_ID_AUTOXENABLED = 16;
    public static final int GEN_ID_AUTOXHEIGHT = 19;
    public static final int GEN_ID_AUTOXRANDFILENM = 24;
    public static final int GEN_ID_AUTOXRESTYPE = 17;
    public static final int GEN_ID_AUTOXSESSIONPROG = 20;
    public static final int GEN_ID_AUTOXSESSIONTYPE = 21;
    public static final int GEN_ID_AUTOXTYPE = 14;
    public static final int GEN_ID_AUTOXUNIXAUTH = 23;
    public static final int GEN_ID_AUTOXUNIXPW = 22;
    public static final int GEN_ID_AUTOXWIDTH = 18;
    public static final int GEN_ID_CACERT = 31;
    public static final int GEN_ID_CACERTPATH = 32;
    public static final int GEN_ID_CERTSUBJECT = 34;
    public static final int GEN_ID_COLORMODEL = 36;
    public static final int GEN_ID_CONNECTIONTYPE = 2;
    public static final int GEN_ID_CONSOLEMODE = 70;
    public static final int GEN_ID_DESKTOPBACKGROUND = 63;
    public static final int GEN_ID_DESKTOPCOMPOSITION = 65;
    public static final int GEN_ID_DOUBLE_TAP_ACTION = 57;
    public static final int GEN_ID_ENABLEGFX = 79;
    public static final int GEN_ID_ENABLEGFXH264 = 80;
    public static final int GEN_ID_ENABLERECORDING = 72;
    public static final int GEN_ID_ENABLESOUND = 71;
    public static final int GEN_ID_EXTRAKEYSTOGGLETYPE = 38;
    public static final int GEN_ID_FILENAME = 76;
    public static final int GEN_ID_FOLLOWMOUSE = 48;
    public static final int GEN_ID_FOLLOWPAN = 52;
    public static final int GEN_ID_FONTSMOOTHING = 64;
    public static final int GEN_ID_FORCEFULL = 39;
    public static final int GEN_ID_INPUTMODE = 41;
    public static final int GEN_ID_KEEPPASSWORD = 47;
    public static final int GEN_ID_KEEPSSHPASSWORD = 7;
    public static final int GEN_ID_LAST_META_KEY_ID = 51;
    public static final int GEN_ID_LAYOUTMAP = 75;
    public static final int GEN_ID_MENUANIMATION = 67;
    public static final int GEN_ID_METALISTID = 50;
    public static final int GEN_ID_NICKNAME = 1;
    public static final int GEN_ID_PASSWORD = 35;
    public static final int GEN_ID_PORT = 30;
    public static final int GEN_ID_PREFENCODING = 37;
    public static final int GEN_ID_RDPCOLOR = 61;
    public static final int GEN_ID_RDPDOMAIN = 54;
    public static final int GEN_ID_RDPHEIGHT = 60;
    public static final int GEN_ID_RDPRESTYPE = 58;
    public static final int GEN_ID_RDPWIDTH = 59;
    public static final int GEN_ID_REDIRECTSDCARD = 69;
    public static final int GEN_ID_REMOTEFX = 62;
    public static final int GEN_ID_REMOTESOUNDTYPE = 73;
    public static final int GEN_ID_REPEATERID = 40;
    public static final int GEN_ID_ROTATEDPAD = 44;
    public static final int GEN_ID_SCALEMODE = 42;
    public static final int GEN_ID_SCREENSHOTFILENAME = 78;
    public static final int GEN_ID_SECURECONNECTIONTYPE = 55;
    public static final int GEN_ID_SHOWZOOMBUTTONS = 56;
    public static final int GEN_ID_SSHHOSTKEY = 28;
    public static final int GEN_ID_SSHPASSPHRASE = 10;
    public static final int GEN_ID_SSHPASSWORD = 6;
    public static final int GEN_ID_SSHPORT = 4;
    public static final int GEN_ID_SSHPRIVKEY = 9;
    public static final int GEN_ID_SSHPUBKEY = 8;
    public static final int GEN_ID_SSHREMOTECOMMAND = 25;
    public static final int GEN_ID_SSHREMOTECOMMANDOS = 12;
    public static final int GEN_ID_SSHREMOTECOMMANDTIMEOUT = 26;
    public static final int GEN_ID_SSHREMOTECOMMANDTYPE = 13;
    public static final int GEN_ID_SSHSERVER = 3;
    public static final int GEN_ID_SSHUSER = 5;
    public static final int GEN_ID_TLSPORT = 33;
    public static final int GEN_ID_USEDPADASARROWS = 43;
    public static final int GEN_ID_USELOCALCURSOR = 46;
    public static final int GEN_ID_USEPORTRAIT = 45;
    public static final int GEN_ID_USEREPEATER = 49;
    public static final int GEN_ID_USERNAME = 53;
    public static final int GEN_ID_USESSHPUBKEY = 11;
    public static final int GEN_ID_USESSHREMOTECOMMAND = 27;
    public static final int GEN_ID_VIEWONLY = 74;
    public static final int GEN_ID_VISUALSTYLES = 68;
    public static final int GEN_ID_WINDOWCONTENTS = 66;
    public static final int GEN_ID_X509KEYSIGNATURE = 77;
    public static final int GEN_ID__ID = 0;
    public static final String GEN_TABLE_NAME = "CONNECTION_BEAN";
    private String gen_DOUBLE_TAP_ACTION;
    private long gen_LAST_META_KEY_ID;
    private String gen_SCALEMODE;
    private long gen__Id;
    private String gen_address;
    private String gen_autoXCommand;
    private boolean gen_autoXEnabled;
    private int gen_autoXHeight;
    private String gen_autoXRandFileNm;
    private int gen_autoXResType;
    private String gen_autoXSessionProg;
    private int gen_autoXSessionType;
    private int gen_autoXType;
    private boolean gen_autoXUnixAuth;
    private boolean gen_autoXUnixpw;
    private int gen_autoXWidth;
    private String gen_caCert;
    private String gen_caCertPath;
    private String gen_certSubject;
    private String gen_colorModel;
    private int gen_connectionType;
    private boolean gen_consoleMode;
    private boolean gen_desktopBackground;
    private boolean gen_desktopComposition;
    private boolean gen_enableGfx;
    private boolean gen_enableGfxH264;
    private boolean gen_enableRecording;
    private boolean gen_enableSound;
    private int gen_extraKeysToggleType;
    private String gen_filename;
    private boolean gen_followMouse;
    private boolean gen_followPan;
    private boolean gen_fontSmoothing;
    private long gen_forceFull;
    private String gen_inputMode;
    private boolean gen_keepPassword;
    private boolean gen_keepSshPassword;
    private String gen_layoutMap;
    private boolean gen_menuAnimation;
    private long gen_metaListId;
    private String gen_nickname;
    private String gen_password;
    private int gen_port;
    private int gen_prefEncoding;
    private int gen_rdpColor;
    private String gen_rdpDomain;
    private int gen_rdpHeight;
    private int gen_rdpResType;
    private int gen_rdpWidth;
    private boolean gen_redirectSdCard;
    private boolean gen_remoteFx;
    private int gen_remoteSoundType;
    private String gen_repeaterId;
    private boolean gen_rotateDpad;
    private String gen_screenshotFilename;
    private String gen_secureConnectionType;
    private boolean gen_showZoomButtons;
    private String gen_sshHostKey;
    private String gen_sshPassPhrase;
    private String gen_sshPassword;
    private int gen_sshPort;
    private String gen_sshPrivKey;
    private String gen_sshPubKey;
    private String gen_sshRemoteCommand;
    private int gen_sshRemoteCommandOS;
    private int gen_sshRemoteCommandTimeout;
    private int gen_sshRemoteCommandType;
    private String gen_sshServer;
    private String gen_sshUser;
    private int gen_tlsPort;
    private boolean gen_useDpadAsArrows;
    private int gen_useLocalCursor;
    private boolean gen_usePortrait;
    private boolean gen_useRepeater;
    private boolean gen_useSshPubKey;
    private boolean gen_useSshRemoteCommand;
    private String gen_userName;
    private boolean gen_viewOnly;
    private boolean gen_visualStyles;
    private boolean gen_windowContents;
    private String gen_x509KeySignature;

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

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getNickname() {
        return this.gen_nickname;
    }

    public void setNickname(String str) {
        this.gen_nickname = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getConnectionType() {
        return this.gen_connectionType;
    }

    public void setConnectionType(int i) {
        this.gen_connectionType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshServer() {
        return this.gen_sshServer;
    }

    public void setSshServer(String str) {
        this.gen_sshServer = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getSshPort() {
        return this.gen_sshPort;
    }

    public void setSshPort(int i) {
        this.gen_sshPort = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshUser() {
        return this.gen_sshUser;
    }

    public void setSshUser(String str) {
        this.gen_sshUser = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshPassword() {
        return this.gen_sshPassword;
    }

    public void setSshPassword(String str) {
        this.gen_sshPassword = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getKeepSshPassword() {
        return this.gen_keepSshPassword;
    }

    public void setKeepSshPassword(boolean z) {
        this.gen_keepSshPassword = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshPubKey() {
        return this.gen_sshPubKey;
    }

    public void setSshPubKey(String str) {
        this.gen_sshPubKey = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshPrivKey() {
        return this.gen_sshPrivKey;
    }

    public void setSshPrivKey(String str) {
        this.gen_sshPrivKey = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshPassPhrase() {
        return this.gen_sshPassPhrase;
    }

    public void setSshPassPhrase(String str) {
        this.gen_sshPassPhrase = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getUseSshPubKey() {
        return this.gen_useSshPubKey;
    }

    public void setUseSshPubKey(boolean z) {
        this.gen_useSshPubKey = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getSshRemoteCommandOS() {
        return this.gen_sshRemoteCommandOS;
    }

    public void setSshRemoteCommandOS(int i) {
        this.gen_sshRemoteCommandOS = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getSshRemoteCommandType() {
        return this.gen_sshRemoteCommandType;
    }

    public void setSshRemoteCommandType(int i) {
        this.gen_sshRemoteCommandType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getAutoXType() {
        return this.gen_autoXType;
    }

    public void setAutoXType(int i) {
        this.gen_autoXType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getAutoXCommand() {
        return this.gen_autoXCommand;
    }

    public void setAutoXCommand(String str) {
        this.gen_autoXCommand = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getAutoXEnabled() {
        return this.gen_autoXEnabled;
    }

    public void setAutoXEnabled(boolean z) {
        this.gen_autoXEnabled = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getAutoXResType() {
        return this.gen_autoXResType;
    }

    public void setAutoXResType(int i) {
        this.gen_autoXResType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getAutoXWidth() {
        return this.gen_autoXWidth;
    }

    public void setAutoXWidth(int i) {
        this.gen_autoXWidth = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getAutoXHeight() {
        return this.gen_autoXHeight;
    }

    public void setAutoXHeight(int i) {
        this.gen_autoXHeight = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getAutoXSessionProg() {
        return this.gen_autoXSessionProg;
    }

    public void setAutoXSessionProg(String str) {
        this.gen_autoXSessionProg = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getAutoXSessionType() {
        return this.gen_autoXSessionType;
    }

    public void setAutoXSessionType(int i) {
        this.gen_autoXSessionType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getAutoXUnixpw() {
        return this.gen_autoXUnixpw;
    }

    public void setAutoXUnixpw(boolean z) {
        this.gen_autoXUnixpw = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getAutoXUnixAuth() {
        return this.gen_autoXUnixAuth;
    }

    public void setAutoXUnixAuth(boolean z) {
        this.gen_autoXUnixAuth = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getAutoXRandFileNm() {
        return this.gen_autoXRandFileNm;
    }

    public void setAutoXRandFileNm(String str) {
        this.gen_autoXRandFileNm = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshRemoteCommand() {
        return this.gen_sshRemoteCommand;
    }

    public void setSshRemoteCommand(String str) {
        this.gen_sshRemoteCommand = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getSshRemoteCommandTimeout() {
        return this.gen_sshRemoteCommandTimeout;
    }

    public void setSshRemoteCommandTimeout(int i) {
        this.gen_sshRemoteCommandTimeout = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getUseSshRemoteCommand() {
        return this.gen_useSshRemoteCommand;
    }

    public void setUseSshRemoteCommand(boolean z) {
        this.gen_useSshRemoteCommand = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSshHostKey() {
        return this.gen_sshHostKey;
    }

    public void setSshHostKey(String str) {
        this.gen_sshHostKey = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getAddress() {
        return this.gen_address;
    }

    public void setAddress(String str) {
        this.gen_address = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getPort() {
        return this.gen_port;
    }

    public void setPort(int i) {
        this.gen_port = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getCaCert() {
        return this.gen_caCert;
    }

    public void setCaCert(String str) {
        this.gen_caCert = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getCaCertPath() {
        return this.gen_caCertPath;
    }

    public void setCaCertPath(String str) {
        this.gen_caCertPath = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getTlsPort() {
        return this.gen_tlsPort;
    }

    public void setTlsPort(int i) {
        this.gen_tlsPort = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getCertSubject() {
        return this.gen_certSubject;
    }

    public void setCertSubject(String str) {
        this.gen_certSubject = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getPassword() {
        return this.gen_password;
    }

    public void setPassword(String str) {
        this.gen_password = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getColorModel() {
        return this.gen_colorModel;
    }

    public void setColorModel(String str) {
        this.gen_colorModel = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getPrefEncoding() {
        return this.gen_prefEncoding;
    }

    public void setPrefEncoding(int i) {
        this.gen_prefEncoding = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getExtraKeysToggleType() {
        return this.gen_extraKeysToggleType;
    }

    public void setExtraKeysToggleType(int i) {
        this.gen_extraKeysToggleType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public long getForceFull() {
        return this.gen_forceFull;
    }

    public void setForceFull(long j) {
        this.gen_forceFull = j;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getRepeaterId() {
        return this.gen_repeaterId;
    }

    public void setRepeaterId(String str) {
        this.gen_repeaterId = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getInputMode() {
        return this.gen_inputMode;
    }

    public void setInputMode(String str) {
        this.gen_inputMode = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getScaleModeAsString() {
        return this.gen_SCALEMODE;
    }

    public void setScaleModeAsString(String str) {
        this.gen_SCALEMODE = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getUseDpadAsArrows() {
        return this.gen_useDpadAsArrows;
    }

    public void setUseDpadAsArrows(boolean z) {
        this.gen_useDpadAsArrows = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getRotateDpad() {
        return this.gen_rotateDpad;
    }

    public void setRotateDpad(boolean z) {
        this.gen_rotateDpad = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getUsePortrait() {
        return this.gen_usePortrait;
    }

    public void setUsePortrait(boolean z) {
        this.gen_usePortrait = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getUseLocalCursor() {
        return this.gen_useLocalCursor;
    }

    public void setUseLocalCursor(int i) {
        this.gen_useLocalCursor = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getKeepPassword() {
        return this.gen_keepPassword;
    }

    public void setKeepPassword(boolean z) {
        this.gen_keepPassword = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getFollowMouse() {
        return this.gen_followMouse;
    }

    public void setFollowMouse(boolean z) {
        this.gen_followMouse = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getUseRepeater() {
        return this.gen_useRepeater;
    }

    public void setUseRepeater(boolean z) {
        this.gen_useRepeater = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public long getMetaListId() {
        return this.gen_metaListId;
    }

    public void setMetaListId(long j) {
        this.gen_metaListId = j;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public long getLastMetaKeyId() {
        return this.gen_LAST_META_KEY_ID;
    }

    public void setLastMetaKeyId(long j) {
        this.gen_LAST_META_KEY_ID = j;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getFollowPan() {
        return this.gen_followPan;
    }

    public void setFollowPan(boolean z) {
        this.gen_followPan = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getUserName() {
        return this.gen_userName;
    }

    public void setUserName(String str) {
        this.gen_userName = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getRdpDomain() {
        return this.gen_rdpDomain;
    }

    public void setRdpDomain(String str) {
        this.gen_rdpDomain = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getSecureConnectionType() {
        return this.gen_secureConnectionType;
    }

    public void setSecureConnectionType(String str) {
        this.gen_secureConnectionType = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getShowZoomButtons() {
        return this.gen_showZoomButtons;
    }

    public void setShowZoomButtons(boolean z) {
        this.gen_showZoomButtons = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getDoubleTapActionAsString() {
        return this.gen_DOUBLE_TAP_ACTION;
    }

    public void setDoubleTapActionAsString(String str) {
        this.gen_DOUBLE_TAP_ACTION = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getRdpResType() {
        return this.gen_rdpResType;
    }

    public void setRdpResType(int i) {
        this.gen_rdpResType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getRdpWidth() {
        return this.gen_rdpWidth;
    }

    public void setRdpWidth(int i) {
        this.gen_rdpWidth = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getRdpHeight() {
        return this.gen_rdpHeight;
    }

    public void setRdpHeight(int i) {
        this.gen_rdpHeight = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getRdpColor() {
        return this.gen_rdpColor;
    }

    public void setRdpColor(int i) {
        this.gen_rdpColor = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getRemoteFx() {
        return this.gen_remoteFx;
    }

    public void setRemoteFx(boolean z) {
        this.gen_remoteFx = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getDesktopBackground() {
        return this.gen_desktopBackground;
    }

    public void setDesktopBackground(boolean z) {
        this.gen_desktopBackground = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getFontSmoothing() {
        return this.gen_fontSmoothing;
    }

    public void setFontSmoothing(boolean z) {
        this.gen_fontSmoothing = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getDesktopComposition() {
        return this.gen_desktopComposition;
    }

    public void setDesktopComposition(boolean z) {
        this.gen_desktopComposition = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getWindowContents() {
        return this.gen_windowContents;
    }

    public void setWindowContents(boolean z) {
        this.gen_windowContents = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getMenuAnimation() {
        return this.gen_menuAnimation;
    }

    public void setMenuAnimation(boolean z) {
        this.gen_menuAnimation = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getVisualStyles() {
        return this.gen_visualStyles;
    }

    public void setVisualStyles(boolean z) {
        this.gen_visualStyles = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getRedirectSdCard() {
        return this.gen_redirectSdCard;
    }

    public void setRedirectSdCard(boolean z) {
        this.gen_redirectSdCard = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getConsoleMode() {
        return this.gen_consoleMode;
    }

    public void setConsoleMode(boolean z) {
        this.gen_consoleMode = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getEnableSound() {
        return this.gen_enableSound;
    }

    public void setEnableSound(boolean z) {
        this.gen_enableSound = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getEnableRecording() {
        return this.gen_enableRecording;
    }

    public void setEnableRecording(boolean z) {
        this.gen_enableRecording = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public int getRemoteSoundType() {
        return this.gen_remoteSoundType;
    }

    public void setRemoteSoundType(int i) {
        this.gen_remoteSoundType = i;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public boolean getViewOnly() {
        return this.gen_viewOnly;
    }

    public void setViewOnly(boolean z) {
        this.gen_viewOnly = z;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getLayoutMap() {
        return this.gen_layoutMap;
    }

    public void setLayoutMap(String str) {
        this.gen_layoutMap = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getFilename() {
        return this.gen_filename;
    }

    public void setFilename(String str) {
        this.gen_filename = str;
    }

    public void setX509KeySignature(String str) {
        this.gen_x509KeySignature = str;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getX509KeySignature() {
        return this.gen_x509KeySignature;
    }

    @Override // com.iiordanov.bVNC.IConnectionBean
    public String getScreenshotFilename() {
        return this.gen_screenshotFilename;
    }

    public void setScreenshotFilename(String str) {
        this.gen_screenshotFilename = str;
    }

    public boolean getEnableGfx() {
        return this.gen_enableGfx;
    }

    public void setEnableGfx(boolean z) {
        this.gen_enableGfx = z;
    }

    public boolean getEnableGfxH264() {
        return this.gen_enableGfxH264;
    }

    public void setEnableGfxH264(boolean z) {
        this.gen_enableGfxH264 = z;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public ContentValues Gen_getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.toString(this.gen__Id));
        contentValues.put(GEN_FIELD_NICKNAME, this.gen_nickname);
        contentValues.put(GEN_FIELD_CONNECTIONTYPE, Integer.toString(this.gen_connectionType));
        contentValues.put(GEN_FIELD_SSHSERVER, this.gen_sshServer);
        contentValues.put(GEN_FIELD_SSHPORT, Integer.toString(this.gen_sshPort));
        contentValues.put(GEN_FIELD_SSHUSER, this.gen_sshUser);
        contentValues.put(GEN_FIELD_SSHPASSWORD, this.gen_sshPassword);
        contentValues.put(GEN_FIELD_KEEPSSHPASSWORD, this.gen_keepSshPassword ? "1" : "0");
        contentValues.put(GEN_FIELD_SSHPUBKEY, this.gen_sshPubKey);
        contentValues.put(GEN_FIELD_SSHPRIVKEY, this.gen_sshPrivKey);
        contentValues.put(GEN_FIELD_SSHPASSPHRASE, this.gen_sshPassPhrase);
        contentValues.put(GEN_FIELD_USESSHPUBKEY, this.gen_useSshPubKey ? "1" : "0");
        contentValues.put(GEN_FIELD_SSHREMOTECOMMANDOS, Integer.toString(this.gen_sshRemoteCommandOS));
        contentValues.put(GEN_FIELD_SSHREMOTECOMMANDTYPE, Integer.toString(this.gen_sshRemoteCommandType));
        contentValues.put(GEN_FIELD_AUTOXTYPE, Integer.toString(this.gen_autoXType));
        contentValues.put(GEN_FIELD_AUTOXCOMMAND, this.gen_autoXCommand);
        contentValues.put(GEN_FIELD_AUTOXENABLED, this.gen_autoXEnabled ? "1" : "0");
        contentValues.put(GEN_FIELD_AUTOXRESTYPE, Integer.toString(this.gen_autoXResType));
        contentValues.put(GEN_FIELD_AUTOXWIDTH, Integer.toString(this.gen_autoXWidth));
        contentValues.put(GEN_FIELD_AUTOXHEIGHT, Integer.toString(this.gen_autoXHeight));
        contentValues.put(GEN_FIELD_AUTOXSESSIONPROG, this.gen_autoXSessionProg);
        contentValues.put(GEN_FIELD_AUTOXSESSIONTYPE, Integer.toString(this.gen_autoXSessionType));
        contentValues.put(GEN_FIELD_AUTOXUNIXPW, this.gen_autoXUnixpw ? "1" : "0");
        contentValues.put(GEN_FIELD_AUTOXUNIXAUTH, this.gen_autoXUnixAuth ? "1" : "0");
        contentValues.put(GEN_FIELD_AUTOXRANDFILENM, this.gen_autoXRandFileNm);
        contentValues.put(GEN_FIELD_SSHREMOTECOMMAND, this.gen_sshRemoteCommand);
        contentValues.put(GEN_FIELD_SSHREMOTECOMMANDTIMEOUT, Integer.toString(this.gen_sshRemoteCommandTimeout));
        contentValues.put(GEN_FIELD_USESSHREMOTECOMMAND, this.gen_useSshRemoteCommand ? "1" : "0");
        contentValues.put(GEN_FIELD_SSHHOSTKEY, this.gen_sshHostKey);
        contentValues.put(GEN_FIELD_ADDRESS, this.gen_address);
        contentValues.put(GEN_FIELD_PORT, Integer.toString(this.gen_port));
        contentValues.put(GEN_FIELD_CACERT, this.gen_caCert);
        contentValues.put(GEN_FIELD_CACERTPATH, this.gen_caCertPath);
        contentValues.put(GEN_FIELD_TLSPORT, Integer.toString(this.gen_tlsPort));
        contentValues.put(GEN_FIELD_CERTSUBJECT, this.gen_certSubject);
        contentValues.put(GEN_FIELD_PASSWORD, this.gen_password);
        contentValues.put(GEN_FIELD_COLORMODEL, this.gen_colorModel);
        contentValues.put(GEN_FIELD_PREFENCODING, Integer.toString(this.gen_prefEncoding));
        contentValues.put(GEN_FIELD_EXTRAKEYSTOGGLETYPE, Integer.toString(this.gen_extraKeysToggleType));
        contentValues.put(GEN_FIELD_FORCEFULL, Long.toString(this.gen_forceFull));
        contentValues.put(GEN_FIELD_REPEATERID, this.gen_repeaterId);
        contentValues.put(GEN_FIELD_INPUTMODE, this.gen_inputMode);
        contentValues.put(GEN_FIELD_SCALEMODE, this.gen_SCALEMODE);
        contentValues.put(GEN_FIELD_USEDPADASARROWS, this.gen_useDpadAsArrows ? "1" : "0");
        contentValues.put(GEN_FIELD_ROTATEDPAD, this.gen_rotateDpad ? "1" : "0");
        contentValues.put(GEN_FIELD_USEPORTRAIT, this.gen_usePortrait ? "1" : "0");
        contentValues.put(GEN_FIELD_USELOCALCURSOR, Integer.toString(this.gen_useLocalCursor));
        contentValues.put(GEN_FIELD_KEEPPASSWORD, this.gen_keepPassword ? "1" : "0");
        contentValues.put(GEN_FIELD_FOLLOWMOUSE, this.gen_followMouse ? "1" : "0");
        contentValues.put(GEN_FIELD_USEREPEATER, this.gen_useRepeater ? "1" : "0");
        contentValues.put("METALISTID", Long.toString(this.gen_metaListId));
        contentValues.put(GEN_FIELD_LAST_META_KEY_ID, Long.toString(this.gen_LAST_META_KEY_ID));
        contentValues.put(GEN_FIELD_FOLLOWPAN, this.gen_followPan ? "1" : "0");
        contentValues.put(GEN_FIELD_USERNAME, this.gen_userName);
        contentValues.put(GEN_FIELD_RDPDOMAIN, this.gen_rdpDomain);
        contentValues.put(GEN_FIELD_SECURECONNECTIONTYPE, this.gen_secureConnectionType);
        contentValues.put(GEN_FIELD_SHOWZOOMBUTTONS, this.gen_showZoomButtons ? "1" : "0");
        contentValues.put(GEN_FIELD_DOUBLE_TAP_ACTION, this.gen_DOUBLE_TAP_ACTION);
        contentValues.put(GEN_FIELD_RDPRESTYPE, Integer.toString(this.gen_rdpResType));
        contentValues.put(GEN_FIELD_RDPWIDTH, Integer.toString(this.gen_rdpWidth));
        contentValues.put(GEN_FIELD_RDPHEIGHT, Integer.toString(this.gen_rdpHeight));
        contentValues.put(GEN_FIELD_RDPCOLOR, Integer.toString(this.gen_rdpColor));
        contentValues.put(GEN_FIELD_REMOTEFX, this.gen_remoteFx ? "1" : "0");
        contentValues.put(GEN_FIELD_DESKTOPBACKGROUND, this.gen_desktopBackground ? "1" : "0");
        contentValues.put(GEN_FIELD_FONTSMOOTHING, this.gen_fontSmoothing ? "1" : "0");
        contentValues.put(GEN_FIELD_DESKTOPCOMPOSITION, this.gen_desktopComposition ? "1" : "0");
        contentValues.put(GEN_FIELD_WINDOWCONTENTS, this.gen_windowContents ? "1" : "0");
        contentValues.put(GEN_FIELD_MENUANIMATION, this.gen_menuAnimation ? "1" : "0");
        contentValues.put(GEN_FIELD_VISUALSTYLES, this.gen_visualStyles ? "1" : "0");
        contentValues.put(GEN_FIELD_REDIRECTSDCARD, this.gen_redirectSdCard ? "1" : "0");
        contentValues.put(GEN_FIELD_CONSOLEMODE, this.gen_consoleMode ? "1" : "0");
        contentValues.put(GEN_FIELD_ENABLESOUND, this.gen_enableSound ? "1" : "0");
        contentValues.put(GEN_FIELD_ENABLERECORDING, this.gen_enableRecording ? "1" : "0");
        contentValues.put(GEN_FIELD_REMOTESOUNDTYPE, Integer.toString(this.gen_remoteSoundType));
        contentValues.put(GEN_FIELD_VIEWONLY, this.gen_viewOnly ? "1" : "0");
        contentValues.put(GEN_FIELD_LAYOUTMAP, this.gen_layoutMap);
        contentValues.put(GEN_FIELD_FILENAME, this.gen_filename);
        contentValues.put(GEN_FIELD_X509KEYSIGNATURE, this.gen_x509KeySignature);
        contentValues.put(GEN_FIELD_SCREENSHOTFILENAME, this.gen_screenshotFilename);
        contentValues.put(GEN_FIELD_ENABLEGFX, this.gen_enableGfx ? "1" : "0");
        contentValues.put(GEN_FIELD_ENABLEGFXH264, this.gen_enableGfxH264 ? "1" : "0");
        return contentValues;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public int[] Gen_columnIndices(Cursor cursor) {
        int[] iArr = new int[81];
        int columnIndex = cursor.getColumnIndex("_id");
        iArr[0] = columnIndex;
        if (columnIndex == -1) {
            iArr[0] = cursor.getColumnIndex("_ID");
        }
        iArr[1] = cursor.getColumnIndex(GEN_FIELD_NICKNAME);
        iArr[2] = cursor.getColumnIndex(GEN_FIELD_CONNECTIONTYPE);
        iArr[3] = cursor.getColumnIndex(GEN_FIELD_SSHSERVER);
        iArr[4] = cursor.getColumnIndex(GEN_FIELD_SSHPORT);
        iArr[5] = cursor.getColumnIndex(GEN_FIELD_SSHUSER);
        iArr[6] = cursor.getColumnIndex(GEN_FIELD_SSHPASSWORD);
        iArr[7] = cursor.getColumnIndex(GEN_FIELD_KEEPSSHPASSWORD);
        iArr[8] = cursor.getColumnIndex(GEN_FIELD_SSHPUBKEY);
        iArr[9] = cursor.getColumnIndex(GEN_FIELD_SSHPRIVKEY);
        iArr[10] = cursor.getColumnIndex(GEN_FIELD_SSHPASSPHRASE);
        iArr[11] = cursor.getColumnIndex(GEN_FIELD_USESSHPUBKEY);
        iArr[12] = cursor.getColumnIndex(GEN_FIELD_SSHREMOTECOMMANDOS);
        iArr[13] = cursor.getColumnIndex(GEN_FIELD_SSHREMOTECOMMANDTYPE);
        iArr[14] = cursor.getColumnIndex(GEN_FIELD_AUTOXTYPE);
        iArr[15] = cursor.getColumnIndex(GEN_FIELD_AUTOXCOMMAND);
        iArr[16] = cursor.getColumnIndex(GEN_FIELD_AUTOXENABLED);
        iArr[17] = cursor.getColumnIndex(GEN_FIELD_AUTOXRESTYPE);
        iArr[18] = cursor.getColumnIndex(GEN_FIELD_AUTOXWIDTH);
        iArr[19] = cursor.getColumnIndex(GEN_FIELD_AUTOXHEIGHT);
        iArr[20] = cursor.getColumnIndex(GEN_FIELD_AUTOXSESSIONPROG);
        iArr[21] = cursor.getColumnIndex(GEN_FIELD_AUTOXSESSIONTYPE);
        iArr[22] = cursor.getColumnIndex(GEN_FIELD_AUTOXUNIXPW);
        iArr[23] = cursor.getColumnIndex(GEN_FIELD_AUTOXUNIXAUTH);
        iArr[24] = cursor.getColumnIndex(GEN_FIELD_AUTOXRANDFILENM);
        iArr[25] = cursor.getColumnIndex(GEN_FIELD_SSHREMOTECOMMAND);
        iArr[26] = cursor.getColumnIndex(GEN_FIELD_SSHREMOTECOMMANDTIMEOUT);
        iArr[27] = cursor.getColumnIndex(GEN_FIELD_USESSHREMOTECOMMAND);
        iArr[28] = cursor.getColumnIndex(GEN_FIELD_SSHHOSTKEY);
        iArr[29] = cursor.getColumnIndex(GEN_FIELD_ADDRESS);
        iArr[30] = cursor.getColumnIndex(GEN_FIELD_PORT);
        iArr[31] = cursor.getColumnIndex(GEN_FIELD_CACERT);
        iArr[32] = cursor.getColumnIndex(GEN_FIELD_CACERTPATH);
        iArr[33] = cursor.getColumnIndex(GEN_FIELD_TLSPORT);
        iArr[34] = cursor.getColumnIndex(GEN_FIELD_CERTSUBJECT);
        iArr[35] = cursor.getColumnIndex(GEN_FIELD_PASSWORD);
        iArr[36] = cursor.getColumnIndex(GEN_FIELD_COLORMODEL);
        iArr[37] = cursor.getColumnIndex(GEN_FIELD_PREFENCODING);
        iArr[38] = cursor.getColumnIndex(GEN_FIELD_EXTRAKEYSTOGGLETYPE);
        iArr[39] = cursor.getColumnIndex(GEN_FIELD_FORCEFULL);
        iArr[40] = cursor.getColumnIndex(GEN_FIELD_REPEATERID);
        iArr[41] = cursor.getColumnIndex(GEN_FIELD_INPUTMODE);
        iArr[42] = cursor.getColumnIndex(GEN_FIELD_SCALEMODE);
        iArr[43] = cursor.getColumnIndex(GEN_FIELD_USEDPADASARROWS);
        iArr[44] = cursor.getColumnIndex(GEN_FIELD_ROTATEDPAD);
        iArr[45] = cursor.getColumnIndex(GEN_FIELD_USEPORTRAIT);
        iArr[46] = cursor.getColumnIndex(GEN_FIELD_USELOCALCURSOR);
        iArr[47] = cursor.getColumnIndex(GEN_FIELD_KEEPPASSWORD);
        iArr[48] = cursor.getColumnIndex(GEN_FIELD_FOLLOWMOUSE);
        iArr[49] = cursor.getColumnIndex(GEN_FIELD_USEREPEATER);
        iArr[50] = cursor.getColumnIndex("METALISTID");
        iArr[51] = cursor.getColumnIndex(GEN_FIELD_LAST_META_KEY_ID);
        iArr[52] = cursor.getColumnIndex(GEN_FIELD_FOLLOWPAN);
        iArr[53] = cursor.getColumnIndex(GEN_FIELD_USERNAME);
        iArr[54] = cursor.getColumnIndex(GEN_FIELD_RDPDOMAIN);
        iArr[55] = cursor.getColumnIndex(GEN_FIELD_SECURECONNECTIONTYPE);
        iArr[56] = cursor.getColumnIndex(GEN_FIELD_SHOWZOOMBUTTONS);
        iArr[57] = cursor.getColumnIndex(GEN_FIELD_DOUBLE_TAP_ACTION);
        iArr[58] = cursor.getColumnIndex(GEN_FIELD_RDPRESTYPE);
        iArr[59] = cursor.getColumnIndex(GEN_FIELD_RDPWIDTH);
        iArr[60] = cursor.getColumnIndex(GEN_FIELD_RDPHEIGHT);
        iArr[61] = cursor.getColumnIndex(GEN_FIELD_RDPCOLOR);
        iArr[62] = cursor.getColumnIndex(GEN_FIELD_REMOTEFX);
        iArr[63] = cursor.getColumnIndex(GEN_FIELD_DESKTOPBACKGROUND);
        iArr[64] = cursor.getColumnIndex(GEN_FIELD_FONTSMOOTHING);
        iArr[65] = cursor.getColumnIndex(GEN_FIELD_DESKTOPCOMPOSITION);
        iArr[66] = cursor.getColumnIndex(GEN_FIELD_WINDOWCONTENTS);
        iArr[67] = cursor.getColumnIndex(GEN_FIELD_MENUANIMATION);
        iArr[68] = cursor.getColumnIndex(GEN_FIELD_VISUALSTYLES);
        iArr[69] = cursor.getColumnIndex(GEN_FIELD_REDIRECTSDCARD);
        iArr[70] = cursor.getColumnIndex(GEN_FIELD_CONSOLEMODE);
        iArr[71] = cursor.getColumnIndex(GEN_FIELD_ENABLESOUND);
        iArr[72] = cursor.getColumnIndex(GEN_FIELD_ENABLERECORDING);
        iArr[73] = cursor.getColumnIndex(GEN_FIELD_REMOTESOUNDTYPE);
        iArr[74] = cursor.getColumnIndex(GEN_FIELD_VIEWONLY);
        iArr[75] = cursor.getColumnIndex(GEN_FIELD_LAYOUTMAP);
        iArr[76] = cursor.getColumnIndex(GEN_FIELD_FILENAME);
        iArr[77] = cursor.getColumnIndex(GEN_FIELD_X509KEYSIGNATURE);
        iArr[78] = cursor.getColumnIndex(GEN_FIELD_SCREENSHOTFILENAME);
        iArr[79] = cursor.getColumnIndex(GEN_FIELD_ENABLEGFX);
        iArr[80] = cursor.getColumnIndex(GEN_FIELD_ENABLEGFXH264);
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
            this.gen_nickname = cursor.getString(iArr[1]);
        }
        int i3 = iArr[2];
        if (i3 >= 0 && !cursor.isNull(i3)) {
            this.gen_connectionType = cursor.getInt(iArr[2]);
        }
        int i4 = iArr[3];
        if (i4 >= 0 && !cursor.isNull(i4)) {
            this.gen_sshServer = cursor.getString(iArr[3]);
        }
        int i5 = iArr[4];
        if (i5 >= 0 && !cursor.isNull(i5)) {
            this.gen_sshPort = cursor.getInt(iArr[4]);
        }
        int i6 = iArr[5];
        if (i6 >= 0 && !cursor.isNull(i6)) {
            this.gen_sshUser = cursor.getString(iArr[5]);
        }
        int i7 = iArr[6];
        if (i7 >= 0 && !cursor.isNull(i7)) {
            this.gen_sshPassword = cursor.getString(iArr[6]);
        }
        int i8 = iArr[7];
        if (i8 >= 0 && !cursor.isNull(i8)) {
            this.gen_keepSshPassword = cursor.getInt(iArr[7]) != 0;
        }
        int i9 = iArr[8];
        if (i9 >= 0 && !cursor.isNull(i9)) {
            this.gen_sshPubKey = cursor.getString(iArr[8]);
        }
        int i10 = iArr[9];
        if (i10 >= 0 && !cursor.isNull(i10)) {
            this.gen_sshPrivKey = cursor.getString(iArr[9]);
        }
        int i11 = iArr[10];
        if (i11 >= 0 && !cursor.isNull(i11)) {
            this.gen_sshPassPhrase = cursor.getString(iArr[10]);
        }
        int i12 = iArr[11];
        if (i12 >= 0 && !cursor.isNull(i12)) {
            this.gen_useSshPubKey = cursor.getInt(iArr[11]) != 0;
        }
        int i13 = iArr[12];
        if (i13 >= 0 && !cursor.isNull(i13)) {
            this.gen_sshRemoteCommandOS = cursor.getInt(iArr[12]);
        }
        int i14 = iArr[13];
        if (i14 >= 0 && !cursor.isNull(i14)) {
            this.gen_sshRemoteCommandType = cursor.getInt(iArr[13]);
        }
        int i15 = iArr[14];
        if (i15 >= 0 && !cursor.isNull(i15)) {
            this.gen_autoXType = cursor.getInt(iArr[14]);
        }
        int i16 = iArr[15];
        if (i16 >= 0 && !cursor.isNull(i16)) {
            this.gen_autoXCommand = cursor.getString(iArr[15]);
        }
        int i17 = iArr[16];
        if (i17 >= 0 && !cursor.isNull(i17)) {
            this.gen_autoXEnabled = cursor.getInt(iArr[16]) != 0;
        }
        int i18 = iArr[17];
        if (i18 >= 0 && !cursor.isNull(i18)) {
            this.gen_autoXResType = cursor.getInt(iArr[17]);
        }
        int i19 = iArr[18];
        if (i19 >= 0 && !cursor.isNull(i19)) {
            this.gen_autoXWidth = cursor.getInt(iArr[18]);
        }
        int i20 = iArr[19];
        if (i20 >= 0 && !cursor.isNull(i20)) {
            this.gen_autoXHeight = cursor.getInt(iArr[19]);
        }
        int i21 = iArr[20];
        if (i21 >= 0 && !cursor.isNull(i21)) {
            this.gen_autoXSessionProg = cursor.getString(iArr[20]);
        }
        int i22 = iArr[21];
        if (i22 >= 0 && !cursor.isNull(i22)) {
            this.gen_autoXSessionType = cursor.getInt(iArr[21]);
        }
        int i23 = iArr[22];
        if (i23 >= 0 && !cursor.isNull(i23)) {
            this.gen_autoXUnixpw = cursor.getInt(iArr[22]) != 0;
        }
        int i24 = iArr[23];
        if (i24 >= 0 && !cursor.isNull(i24)) {
            this.gen_autoXUnixAuth = cursor.getInt(iArr[23]) != 0;
        }
        int i25 = iArr[24];
        if (i25 >= 0 && !cursor.isNull(i25)) {
            this.gen_autoXRandFileNm = cursor.getString(iArr[24]);
        }
        int i26 = iArr[25];
        if (i26 >= 0 && !cursor.isNull(i26)) {
            this.gen_sshRemoteCommand = cursor.getString(iArr[25]);
        }
        int i27 = iArr[26];
        if (i27 >= 0 && !cursor.isNull(i27)) {
            this.gen_sshRemoteCommandTimeout = cursor.getInt(iArr[26]);
        }
        int i28 = iArr[27];
        if (i28 >= 0 && !cursor.isNull(i28)) {
            this.gen_useSshRemoteCommand = cursor.getInt(iArr[27]) != 0;
        }
        int i29 = iArr[28];
        if (i29 >= 0 && !cursor.isNull(i29)) {
            this.gen_sshHostKey = cursor.getString(iArr[28]);
        }
        int i30 = iArr[29];
        if (i30 >= 0 && !cursor.isNull(i30)) {
            this.gen_address = cursor.getString(iArr[29]);
        }
        int i31 = iArr[30];
        if (i31 >= 0 && !cursor.isNull(i31)) {
            this.gen_port = cursor.getInt(iArr[30]);
        }
        int i32 = iArr[31];
        if (i32 >= 0 && !cursor.isNull(i32)) {
            this.gen_caCert = cursor.getString(iArr[31]);
        }
        int i33 = iArr[32];
        if (i33 >= 0 && !cursor.isNull(i33)) {
            this.gen_caCertPath = cursor.getString(iArr[32]);
        }
        int i34 = iArr[33];
        if (i34 >= 0 && !cursor.isNull(i34)) {
            this.gen_tlsPort = cursor.getInt(iArr[33]);
        }
        int i35 = iArr[34];
        if (i35 >= 0 && !cursor.isNull(i35)) {
            this.gen_certSubject = cursor.getString(iArr[34]);
        }
        int i36 = iArr[35];
        if (i36 >= 0 && !cursor.isNull(i36)) {
            this.gen_password = cursor.getString(iArr[35]);
        }
        int i37 = iArr[36];
        if (i37 >= 0 && !cursor.isNull(i37)) {
            this.gen_colorModel = cursor.getString(iArr[36]);
        }
        int i38 = iArr[37];
        if (i38 >= 0 && !cursor.isNull(i38)) {
            this.gen_prefEncoding = cursor.getInt(iArr[37]);
        }
        int i39 = iArr[38];
        if (i39 >= 0 && !cursor.isNull(i39)) {
            this.gen_extraKeysToggleType = cursor.getInt(iArr[38]);
        }
        int i40 = iArr[39];
        if (i40 >= 0 && !cursor.isNull(i40)) {
            this.gen_forceFull = cursor.getLong(iArr[39]);
        }
        int i41 = iArr[40];
        if (i41 >= 0 && !cursor.isNull(i41)) {
            this.gen_repeaterId = cursor.getString(iArr[40]);
        }
        int i42 = iArr[41];
        if (i42 >= 0 && !cursor.isNull(i42)) {
            this.gen_inputMode = cursor.getString(iArr[41]);
        }
        int i43 = iArr[42];
        if (i43 >= 0 && !cursor.isNull(i43)) {
            this.gen_SCALEMODE = cursor.getString(iArr[42]);
        }
        int i44 = iArr[43];
        if (i44 >= 0 && !cursor.isNull(i44)) {
            this.gen_useDpadAsArrows = cursor.getInt(iArr[43]) != 0;
        }
        int i45 = iArr[44];
        if (i45 >= 0 && !cursor.isNull(i45)) {
            this.gen_rotateDpad = cursor.getInt(iArr[44]) != 0;
        }
        int i46 = iArr[45];
        if (i46 >= 0 && !cursor.isNull(i46)) {
            this.gen_usePortrait = cursor.getInt(iArr[45]) != 0;
        }
        int i47 = iArr[46];
        if (i47 >= 0 && !cursor.isNull(i47)) {
            this.gen_useLocalCursor = cursor.getInt(iArr[46]);
        }
        int i48 = iArr[47];
        if (i48 >= 0 && !cursor.isNull(i48)) {
            this.gen_keepPassword = cursor.getInt(iArr[47]) != 0;
        }
        int i49 = iArr[48];
        if (i49 >= 0 && !cursor.isNull(i49)) {
            this.gen_followMouse = cursor.getInt(iArr[48]) != 0;
        }
        int i50 = iArr[49];
        if (i50 >= 0 && !cursor.isNull(i50)) {
            this.gen_useRepeater = cursor.getInt(iArr[49]) != 0;
        }
        int i51 = iArr[50];
        if (i51 >= 0 && !cursor.isNull(i51)) {
            this.gen_metaListId = cursor.getLong(iArr[50]);
        }
        int i52 = iArr[51];
        if (i52 >= 0 && !cursor.isNull(i52)) {
            this.gen_LAST_META_KEY_ID = cursor.getLong(iArr[51]);
        }
        int i53 = iArr[52];
        if (i53 >= 0 && !cursor.isNull(i53)) {
            this.gen_followPan = cursor.getInt(iArr[52]) != 0;
        }
        int i54 = iArr[53];
        if (i54 >= 0 && !cursor.isNull(i54)) {
            this.gen_userName = cursor.getString(iArr[53]);
        }
        int i55 = iArr[54];
        if (i55 >= 0 && !cursor.isNull(i55)) {
            this.gen_rdpDomain = cursor.getString(iArr[54]);
        }
        int i56 = iArr[55];
        if (i56 >= 0 && !cursor.isNull(i56)) {
            this.gen_secureConnectionType = cursor.getString(iArr[55]);
        }
        int i57 = iArr[56];
        if (i57 >= 0 && !cursor.isNull(i57)) {
            this.gen_showZoomButtons = cursor.getInt(iArr[56]) != 0;
        }
        int i58 = iArr[57];
        if (i58 >= 0 && !cursor.isNull(i58)) {
            this.gen_DOUBLE_TAP_ACTION = cursor.getString(iArr[57]);
        }
        int i59 = iArr[58];
        if (i59 >= 0 && !cursor.isNull(i59)) {
            this.gen_rdpResType = cursor.getInt(iArr[58]);
        }
        int i60 = iArr[59];
        if (i60 >= 0 && !cursor.isNull(i60)) {
            this.gen_rdpWidth = cursor.getInt(iArr[59]);
        }
        int i61 = iArr[60];
        if (i61 >= 0 && !cursor.isNull(i61)) {
            this.gen_rdpHeight = cursor.getInt(iArr[60]);
        }
        int i62 = iArr[61];
        if (i62 >= 0 && !cursor.isNull(i62)) {
            this.gen_rdpColor = cursor.getInt(iArr[61]);
        }
        int i63 = iArr[62];
        if (i63 >= 0 && !cursor.isNull(i63)) {
            this.gen_remoteFx = cursor.getInt(iArr[62]) != 0;
        }
        int i64 = iArr[63];
        if (i64 >= 0 && !cursor.isNull(i64)) {
            this.gen_desktopBackground = cursor.getInt(iArr[63]) != 0;
        }
        int i65 = iArr[64];
        if (i65 >= 0 && !cursor.isNull(i65)) {
            this.gen_fontSmoothing = cursor.getInt(iArr[64]) != 0;
        }
        int i66 = iArr[65];
        if (i66 >= 0 && !cursor.isNull(i66)) {
            this.gen_desktopComposition = cursor.getInt(iArr[65]) != 0;
        }
        int i67 = iArr[66];
        if (i67 >= 0 && !cursor.isNull(i67)) {
            this.gen_windowContents = cursor.getInt(iArr[66]) != 0;
        }
        int i68 = iArr[67];
        if (i68 >= 0 && !cursor.isNull(i68)) {
            this.gen_menuAnimation = cursor.getInt(iArr[67]) != 0;
        }
        int i69 = iArr[68];
        if (i69 >= 0 && !cursor.isNull(i69)) {
            this.gen_visualStyles = cursor.getInt(iArr[68]) != 0;
        }
        int i70 = iArr[69];
        if (i70 >= 0 && !cursor.isNull(i70)) {
            this.gen_redirectSdCard = cursor.getInt(iArr[69]) != 0;
        }
        int i71 = iArr[70];
        if (i71 >= 0 && !cursor.isNull(i71)) {
            this.gen_consoleMode = cursor.getInt(iArr[70]) != 0;
        }
        int i72 = iArr[71];
        if (i72 >= 0 && !cursor.isNull(i72)) {
            this.gen_enableSound = cursor.getInt(iArr[71]) != 0;
        }
        int i73 = iArr[72];
        if (i73 >= 0 && !cursor.isNull(i73)) {
            this.gen_enableRecording = cursor.getInt(iArr[72]) != 0;
        }
        int i74 = iArr[73];
        if (i74 >= 0 && !cursor.isNull(i74)) {
            this.gen_remoteSoundType = cursor.getInt(iArr[73]);
        }
        int i75 = iArr[74];
        if (i75 >= 0 && !cursor.isNull(i75)) {
            this.gen_viewOnly = cursor.getInt(iArr[74]) != 0;
        }
        int i76 = iArr[75];
        if (i76 >= 0 && !cursor.isNull(i76)) {
            this.gen_layoutMap = cursor.getString(iArr[75]);
        }
        int i77 = iArr[76];
        if (i77 >= 0 && !cursor.isNull(i77)) {
            this.gen_filename = cursor.getString(iArr[76]);
        }
        int i78 = iArr[77];
        if (i78 >= 0 && !cursor.isNull(i78)) {
            this.gen_x509KeySignature = cursor.getString(iArr[77]);
        }
        int i79 = iArr[78];
        if (i79 >= 0 && !cursor.isNull(i79)) {
            this.gen_screenshotFilename = cursor.getString(iArr[78]);
        }
        int i80 = iArr[79];
        if (i80 >= 0 && !cursor.isNull(i80)) {
            this.gen_enableGfx = cursor.getInt(iArr[79]) != 0;
        }
        int i81 = iArr[80];
        if (i81 < 0 || cursor.isNull(i81)) {
            return;
        }
        this.gen_enableGfxH264 = cursor.getInt(iArr[80]) != 0;
    }

    @Override // com.antlersoft.android.dbimpl.ImplementationBase
    public void Gen_populate(ContentValues contentValues) {
        this.gen__Id = contentValues.getAsLong("_id").longValue();
        this.gen_nickname = contentValues.getAsString(GEN_FIELD_NICKNAME);
        this.gen_connectionType = contentValues.getAsInteger(GEN_FIELD_CONNECTIONTYPE).intValue();
        this.gen_sshServer = contentValues.getAsString(GEN_FIELD_SSHSERVER);
        this.gen_sshPort = contentValues.getAsInteger(GEN_FIELD_SSHPORT).intValue();
        this.gen_sshUser = contentValues.getAsString(GEN_FIELD_SSHUSER);
        this.gen_sshPassword = contentValues.getAsString(GEN_FIELD_SSHPASSWORD);
        this.gen_keepSshPassword = contentValues.getAsInteger(GEN_FIELD_KEEPSSHPASSWORD).intValue() != 0;
        this.gen_sshPubKey = contentValues.getAsString(GEN_FIELD_SSHPUBKEY);
        this.gen_sshPrivKey = contentValues.getAsString(GEN_FIELD_SSHPRIVKEY);
        this.gen_sshPassPhrase = contentValues.getAsString(GEN_FIELD_SSHPASSPHRASE);
        this.gen_useSshPubKey = contentValues.getAsInteger(GEN_FIELD_USESSHPUBKEY).intValue() != 0;
        this.gen_sshRemoteCommandOS = contentValues.getAsInteger(GEN_FIELD_SSHREMOTECOMMANDOS).intValue();
        this.gen_sshRemoteCommandType = contentValues.getAsInteger(GEN_FIELD_SSHREMOTECOMMANDTYPE).intValue();
        this.gen_autoXType = contentValues.getAsInteger(GEN_FIELD_AUTOXTYPE).intValue();
        this.gen_autoXCommand = contentValues.getAsString(GEN_FIELD_AUTOXCOMMAND);
        this.gen_autoXEnabled = contentValues.getAsInteger(GEN_FIELD_AUTOXENABLED).intValue() != 0;
        this.gen_autoXResType = contentValues.getAsInteger(GEN_FIELD_AUTOXRESTYPE).intValue();
        this.gen_autoXWidth = contentValues.getAsInteger(GEN_FIELD_AUTOXWIDTH).intValue();
        this.gen_autoXHeight = contentValues.getAsInteger(GEN_FIELD_AUTOXHEIGHT).intValue();
        this.gen_autoXSessionProg = contentValues.getAsString(GEN_FIELD_AUTOXSESSIONPROG);
        this.gen_autoXSessionType = contentValues.getAsInteger(GEN_FIELD_AUTOXSESSIONTYPE).intValue();
        this.gen_autoXUnixpw = contentValues.getAsInteger(GEN_FIELD_AUTOXUNIXPW).intValue() != 0;
        this.gen_autoXUnixAuth = contentValues.getAsInteger(GEN_FIELD_AUTOXUNIXAUTH).intValue() != 0;
        this.gen_autoXRandFileNm = contentValues.getAsString(GEN_FIELD_AUTOXRANDFILENM);
        this.gen_sshRemoteCommand = contentValues.getAsString(GEN_FIELD_SSHREMOTECOMMAND);
        this.gen_sshRemoteCommandTimeout = contentValues.getAsInteger(GEN_FIELD_SSHREMOTECOMMANDTIMEOUT).intValue();
        this.gen_useSshRemoteCommand = contentValues.getAsInteger(GEN_FIELD_USESSHREMOTECOMMAND).intValue() != 0;
        this.gen_sshHostKey = contentValues.getAsString(GEN_FIELD_SSHHOSTKEY);
        this.gen_address = contentValues.getAsString(GEN_FIELD_ADDRESS);
        this.gen_port = contentValues.getAsInteger(GEN_FIELD_PORT).intValue();
        this.gen_caCert = contentValues.getAsString(GEN_FIELD_CACERT);
        this.gen_caCertPath = contentValues.getAsString(GEN_FIELD_CACERTPATH);
        this.gen_tlsPort = contentValues.getAsInteger(GEN_FIELD_TLSPORT).intValue();
        this.gen_certSubject = contentValues.getAsString(GEN_FIELD_CERTSUBJECT);
        this.gen_password = contentValues.getAsString(GEN_FIELD_PASSWORD);
        this.gen_colorModel = contentValues.getAsString(GEN_FIELD_COLORMODEL);
        this.gen_prefEncoding = contentValues.getAsInteger(GEN_FIELD_PREFENCODING).intValue();
        this.gen_extraKeysToggleType = contentValues.getAsInteger(GEN_FIELD_EXTRAKEYSTOGGLETYPE).intValue();
        this.gen_forceFull = contentValues.getAsLong(GEN_FIELD_FORCEFULL).longValue();
        this.gen_repeaterId = contentValues.getAsString(GEN_FIELD_REPEATERID);
        this.gen_inputMode = contentValues.getAsString(GEN_FIELD_INPUTMODE);
        this.gen_SCALEMODE = contentValues.getAsString(GEN_FIELD_SCALEMODE);
        this.gen_useDpadAsArrows = contentValues.getAsInteger(GEN_FIELD_USEDPADASARROWS).intValue() != 0;
        this.gen_rotateDpad = contentValues.getAsInteger(GEN_FIELD_ROTATEDPAD).intValue() != 0;
        this.gen_usePortrait = contentValues.getAsInteger(GEN_FIELD_USEPORTRAIT).intValue() != 0;
        this.gen_useLocalCursor = contentValues.getAsInteger(GEN_FIELD_USELOCALCURSOR).intValue();
        this.gen_keepPassword = contentValues.getAsInteger(GEN_FIELD_KEEPPASSWORD).intValue() != 0;
        this.gen_followMouse = contentValues.getAsInteger(GEN_FIELD_FOLLOWMOUSE).intValue() != 0;
        this.gen_useRepeater = contentValues.getAsInteger(GEN_FIELD_USEREPEATER).intValue() != 0;
        this.gen_metaListId = contentValues.getAsLong("METALISTID").longValue();
        this.gen_LAST_META_KEY_ID = contentValues.getAsLong(GEN_FIELD_LAST_META_KEY_ID).longValue();
        this.gen_followPan = contentValues.getAsInteger(GEN_FIELD_FOLLOWPAN).intValue() != 0;
        this.gen_userName = contentValues.getAsString(GEN_FIELD_USERNAME);
        this.gen_rdpDomain = contentValues.getAsString(GEN_FIELD_RDPDOMAIN);
        this.gen_secureConnectionType = contentValues.getAsString(GEN_FIELD_SECURECONNECTIONTYPE);
        this.gen_showZoomButtons = contentValues.getAsInteger(GEN_FIELD_SHOWZOOMBUTTONS).intValue() != 0;
        this.gen_DOUBLE_TAP_ACTION = contentValues.getAsString(GEN_FIELD_DOUBLE_TAP_ACTION);
        this.gen_rdpResType = contentValues.getAsInteger(GEN_FIELD_RDPRESTYPE).intValue();
        this.gen_rdpWidth = contentValues.getAsInteger(GEN_FIELD_RDPWIDTH).intValue();
        this.gen_rdpHeight = contentValues.getAsInteger(GEN_FIELD_RDPHEIGHT).intValue();
        this.gen_rdpColor = contentValues.getAsInteger(GEN_FIELD_RDPCOLOR).intValue();
        this.gen_remoteFx = contentValues.getAsInteger(GEN_FIELD_REMOTEFX).intValue() != 0;
        this.gen_desktopBackground = contentValues.getAsInteger(GEN_FIELD_DESKTOPBACKGROUND).intValue() != 0;
        this.gen_fontSmoothing = contentValues.getAsInteger(GEN_FIELD_FONTSMOOTHING).intValue() != 0;
        this.gen_desktopComposition = contentValues.getAsInteger(GEN_FIELD_DESKTOPCOMPOSITION).intValue() != 0;
        this.gen_windowContents = contentValues.getAsInteger(GEN_FIELD_WINDOWCONTENTS).intValue() != 0;
        this.gen_menuAnimation = contentValues.getAsInteger(GEN_FIELD_MENUANIMATION).intValue() != 0;
        this.gen_visualStyles = contentValues.getAsInteger(GEN_FIELD_VISUALSTYLES).intValue() != 0;
        this.gen_redirectSdCard = contentValues.getAsInteger(GEN_FIELD_REDIRECTSDCARD).intValue() != 0;
        this.gen_consoleMode = contentValues.getAsInteger(GEN_FIELD_CONSOLEMODE).intValue() != 0;
        this.gen_enableSound = contentValues.getAsInteger(GEN_FIELD_ENABLESOUND).intValue() != 0;
        this.gen_enableRecording = contentValues.getAsInteger(GEN_FIELD_ENABLERECORDING).intValue() != 0;
        this.gen_remoteSoundType = contentValues.getAsInteger(GEN_FIELD_REMOTESOUNDTYPE).intValue();
        this.gen_viewOnly = contentValues.getAsInteger(GEN_FIELD_VIEWONLY).intValue() != 0;
        this.gen_layoutMap = contentValues.getAsString(GEN_FIELD_LAYOUTMAP);
        this.gen_filename = contentValues.getAsString(GEN_FIELD_FILENAME);
        this.gen_x509KeySignature = contentValues.getAsString(GEN_FIELD_X509KEYSIGNATURE);
        this.gen_screenshotFilename = contentValues.getAsString(GEN_FIELD_SCREENSHOTFILENAME);
        this.gen_enableGfx = contentValues.getAsInteger(GEN_FIELD_ENABLEGFX).intValue() != 0;
        this.gen_enableGfxH264 = contentValues.getAsInteger(GEN_FIELD_ENABLEGFXH264).intValue() != 0;
    }
}
