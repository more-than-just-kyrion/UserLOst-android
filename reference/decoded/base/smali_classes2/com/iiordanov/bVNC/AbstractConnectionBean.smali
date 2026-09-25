.class public abstract Lcom/iiordanov/bVNC/AbstractConnectionBean;
.super Lcom/antlersoft/android/dbimpl/IdImplementationBase;
.source "AbstractConnectionBean.java"

# interfaces
.implements Lcom/iiordanov/bVNC/IConnectionBean;


# static fields
.field public static final GEN_COUNT:I = 0x51

.field public static GEN_CREATE:Ljava/lang/String; = "CREATE TABLE CONNECTION_BEAN (_id INTEGER PRIMARY KEY AUTOINCREMENT,NICKNAME TEXT,CONNECTIONTYPE INTEGER,SSHSERVER TEXT,SSHPORT INTEGER,SSHUSER TEXT,SSHPASSWORD TEXT,KEEPSSHPASSWORD INTEGER,SSHPUBKEY TEXT,SSHPRIVKEY TEXT,SSHPASSPHRASE TEXT,USESSHPUBKEY INTEGER,SSHREMOTECOMMANDOS INTEGER,SSHREMOTECOMMANDTYPE INTEGER,AUTOXTYPE INTEGER,AUTOXCOMMAND TEXT,AUTOXENABLED INTEGER,AUTOXRESTYPE INTEGER,AUTOXWIDTH INTEGER,AUTOXHEIGHT INTEGER,AUTOXSESSIONPROG TEXT,AUTOXSESSIONTYPE INTEGER,AUTOXUNIXPW INTEGER,AUTOXUNIXAUTH INTEGER,AUTOXRANDFILENM TEXT,SSHREMOTECOMMAND TEXT,SSHREMOTECOMMANDTIMEOUT INTEGER,USESSHREMOTECOMMAND INTEGER,SSHHOSTKEY TEXT,ADDRESS TEXT,PORT INTEGER,CACERT TEXT,CACERTPATH TEXT,TLSPORT INTEGER,CERTSUBJECT TEXT,PASSWORD TEXT,COLORMODEL TEXT,PREFENCODING INTEGER,EXTRAKEYSTOGGLETYPE INTEGER,FORCEFULL INTEGER,REPEATERID TEXT,INPUTMODE TEXT,SCALEMODE TEXT,USEDPADASARROWS INTEGER,ROTATEDPAD INTEGER,USEPORTRAIT INTEGER,USELOCALCURSOR INTEGER,KEEPPASSWORD INTEGER,FOLLOWMOUSE INTEGER,USEREPEATER INTEGER,METALISTID INTEGER,LAST_META_KEY_ID INTEGER,FOLLOWPAN INTEGER DEFAULT 0,USERNAME TEXT,RDPDOMAIN TEXT,SECURECONNECTIONTYPE TEXT,SHOWZOOMBUTTONS INTEGER DEFAULT 1,DOUBLE_TAP_ACTION TEXT,RDPRESTYPE INTEGER,RDPWIDTH INTEGER,RDPHEIGHT INTEGER,RDPCOLOR INTEGER,REMOTEFX INTEGER,DESKTOPBACKGROUND INTEGER,FONTSMOOTHING INTEGER,DESKTOPCOMPOSITION INTEGER,WINDOWCONTENTS INTEGER,MENUANIMATION INTEGER,VISUALSTYLES INTEGER,REDIRECTSDCARD INTEGER,CONSOLEMODE INTEGER,ENABLESOUND INTEGER,ENABLERECORDING INTEGER,REMOTESOUNDTYPE INTEGER,VIEWONLY INTEGER,LAYOUTMAP TEXT,FILENAME TEXT,X509KEYSIGNATURE TEXT,SCREENSHOTFILENAME TEXT,ENABLEGFX INTEGER,ENABLEGFXH264 INTEGER)"

.field public static final GEN_FIELD_ADDRESS:Ljava/lang/String; = "ADDRESS"

.field public static final GEN_FIELD_AUTOXCOMMAND:Ljava/lang/String; = "AUTOXCOMMAND"

.field public static final GEN_FIELD_AUTOXENABLED:Ljava/lang/String; = "AUTOXENABLED"

.field public static final GEN_FIELD_AUTOXHEIGHT:Ljava/lang/String; = "AUTOXHEIGHT"

.field public static final GEN_FIELD_AUTOXRANDFILENM:Ljava/lang/String; = "AUTOXRANDFILENM"

.field public static final GEN_FIELD_AUTOXRESTYPE:Ljava/lang/String; = "AUTOXRESTYPE"

.field public static final GEN_FIELD_AUTOXSESSIONPROG:Ljava/lang/String; = "AUTOXSESSIONPROG"

.field public static final GEN_FIELD_AUTOXSESSIONTYPE:Ljava/lang/String; = "AUTOXSESSIONTYPE"

.field public static final GEN_FIELD_AUTOXTYPE:Ljava/lang/String; = "AUTOXTYPE"

.field public static final GEN_FIELD_AUTOXUNIXAUTH:Ljava/lang/String; = "AUTOXUNIXAUTH"

.field public static final GEN_FIELD_AUTOXUNIXPW:Ljava/lang/String; = "AUTOXUNIXPW"

.field public static final GEN_FIELD_AUTOXWIDTH:Ljava/lang/String; = "AUTOXWIDTH"

.field public static final GEN_FIELD_CACERT:Ljava/lang/String; = "CACERT"

.field public static final GEN_FIELD_CACERTPATH:Ljava/lang/String; = "CACERTPATH"

.field public static final GEN_FIELD_CERTSUBJECT:Ljava/lang/String; = "CERTSUBJECT"

.field public static final GEN_FIELD_COLORMODEL:Ljava/lang/String; = "COLORMODEL"

.field public static final GEN_FIELD_CONNECTIONTYPE:Ljava/lang/String; = "CONNECTIONTYPE"

.field public static final GEN_FIELD_CONSOLEMODE:Ljava/lang/String; = "CONSOLEMODE"

.field public static final GEN_FIELD_DESKTOPBACKGROUND:Ljava/lang/String; = "DESKTOPBACKGROUND"

.field public static final GEN_FIELD_DESKTOPCOMPOSITION:Ljava/lang/String; = "DESKTOPCOMPOSITION"

.field public static final GEN_FIELD_DOUBLE_TAP_ACTION:Ljava/lang/String; = "DOUBLE_TAP_ACTION"

.field public static final GEN_FIELD_ENABLEGFX:Ljava/lang/String; = "ENABLEGFX"

.field public static final GEN_FIELD_ENABLEGFXH264:Ljava/lang/String; = "ENABLEGFXH264"

.field public static final GEN_FIELD_ENABLERECORDING:Ljava/lang/String; = "ENABLERECORDING"

.field public static final GEN_FIELD_ENABLESOUND:Ljava/lang/String; = "ENABLESOUND"

.field public static final GEN_FIELD_EXTRAKEYSTOGGLETYPE:Ljava/lang/String; = "EXTRAKEYSTOGGLETYPE"

.field public static final GEN_FIELD_FILENAME:Ljava/lang/String; = "FILENAME"

.field public static final GEN_FIELD_FOLLOWMOUSE:Ljava/lang/String; = "FOLLOWMOUSE"

.field public static final GEN_FIELD_FOLLOWPAN:Ljava/lang/String; = "FOLLOWPAN"

.field public static final GEN_FIELD_FONTSMOOTHING:Ljava/lang/String; = "FONTSMOOTHING"

.field public static final GEN_FIELD_FORCEFULL:Ljava/lang/String; = "FORCEFULL"

.field public static final GEN_FIELD_INPUTMODE:Ljava/lang/String; = "INPUTMODE"

.field public static final GEN_FIELD_KEEPPASSWORD:Ljava/lang/String; = "KEEPPASSWORD"

.field public static final GEN_FIELD_KEEPSSHPASSWORD:Ljava/lang/String; = "KEEPSSHPASSWORD"

.field public static final GEN_FIELD_LAST_META_KEY_ID:Ljava/lang/String; = "LAST_META_KEY_ID"

.field public static final GEN_FIELD_LAYOUTMAP:Ljava/lang/String; = "LAYOUTMAP"

.field public static final GEN_FIELD_MENUANIMATION:Ljava/lang/String; = "MENUANIMATION"

.field public static final GEN_FIELD_METALISTID:Ljava/lang/String; = "METALISTID"

.field public static final GEN_FIELD_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field public static final GEN_FIELD_PASSWORD:Ljava/lang/String; = "PASSWORD"

.field public static final GEN_FIELD_PORT:Ljava/lang/String; = "PORT"

.field public static final GEN_FIELD_PREFENCODING:Ljava/lang/String; = "PREFENCODING"

.field public static final GEN_FIELD_RDPCOLOR:Ljava/lang/String; = "RDPCOLOR"

.field public static final GEN_FIELD_RDPDOMAIN:Ljava/lang/String; = "RDPDOMAIN"

.field public static final GEN_FIELD_RDPHEIGHT:Ljava/lang/String; = "RDPHEIGHT"

.field public static final GEN_FIELD_RDPRESTYPE:Ljava/lang/String; = "RDPRESTYPE"

.field public static final GEN_FIELD_RDPWIDTH:Ljava/lang/String; = "RDPWIDTH"

.field public static final GEN_FIELD_REDIRECTSDCARD:Ljava/lang/String; = "REDIRECTSDCARD"

.field public static final GEN_FIELD_REMOTEFX:Ljava/lang/String; = "REMOTEFX"

.field public static final GEN_FIELD_REMOTESOUNDTYPE:Ljava/lang/String; = "REMOTESOUNDTYPE"

.field public static final GEN_FIELD_REPEATERID:Ljava/lang/String; = "REPEATERID"

.field public static final GEN_FIELD_ROTATEDPAD:Ljava/lang/String; = "ROTATEDPAD"

.field public static final GEN_FIELD_SCALEMODE:Ljava/lang/String; = "SCALEMODE"

.field public static final GEN_FIELD_SCREENSHOTFILENAME:Ljava/lang/String; = "SCREENSHOTFILENAME"

.field public static final GEN_FIELD_SECURECONNECTIONTYPE:Ljava/lang/String; = "SECURECONNECTIONTYPE"

.field public static final GEN_FIELD_SHOWZOOMBUTTONS:Ljava/lang/String; = "SHOWZOOMBUTTONS"

.field public static final GEN_FIELD_SSHHOSTKEY:Ljava/lang/String; = "SSHHOSTKEY"

.field public static final GEN_FIELD_SSHPASSPHRASE:Ljava/lang/String; = "SSHPASSPHRASE"

.field public static final GEN_FIELD_SSHPASSWORD:Ljava/lang/String; = "SSHPASSWORD"

.field public static final GEN_FIELD_SSHPORT:Ljava/lang/String; = "SSHPORT"

.field public static final GEN_FIELD_SSHPRIVKEY:Ljava/lang/String; = "SSHPRIVKEY"

.field public static final GEN_FIELD_SSHPUBKEY:Ljava/lang/String; = "SSHPUBKEY"

.field public static final GEN_FIELD_SSHREMOTECOMMAND:Ljava/lang/String; = "SSHREMOTECOMMAND"

.field public static final GEN_FIELD_SSHREMOTECOMMANDOS:Ljava/lang/String; = "SSHREMOTECOMMANDOS"

.field public static final GEN_FIELD_SSHREMOTECOMMANDTIMEOUT:Ljava/lang/String; = "SSHREMOTECOMMANDTIMEOUT"

.field public static final GEN_FIELD_SSHREMOTECOMMANDTYPE:Ljava/lang/String; = "SSHREMOTECOMMANDTYPE"

.field public static final GEN_FIELD_SSHSERVER:Ljava/lang/String; = "SSHSERVER"

.field public static final GEN_FIELD_SSHUSER:Ljava/lang/String; = "SSHUSER"

.field public static final GEN_FIELD_TLSPORT:Ljava/lang/String; = "TLSPORT"

.field public static final GEN_FIELD_USEDPADASARROWS:Ljava/lang/String; = "USEDPADASARROWS"

.field public static final GEN_FIELD_USELOCALCURSOR:Ljava/lang/String; = "USELOCALCURSOR"

.field public static final GEN_FIELD_USEPORTRAIT:Ljava/lang/String; = "USEPORTRAIT"

.field public static final GEN_FIELD_USEREPEATER:Ljava/lang/String; = "USEREPEATER"

.field public static final GEN_FIELD_USERNAME:Ljava/lang/String; = "USERNAME"

.field public static final GEN_FIELD_USESSHPUBKEY:Ljava/lang/String; = "USESSHPUBKEY"

.field public static final GEN_FIELD_USESSHREMOTECOMMAND:Ljava/lang/String; = "USESSHREMOTECOMMAND"

.field public static final GEN_FIELD_VIEWONLY:Ljava/lang/String; = "VIEWONLY"

.field public static final GEN_FIELD_VISUALSTYLES:Ljava/lang/String; = "VISUALSTYLES"

.field public static final GEN_FIELD_WINDOWCONTENTS:Ljava/lang/String; = "WINDOWCONTENTS"

.field public static final GEN_FIELD_X509KEYSIGNATURE:Ljava/lang/String; = "X509KEYSIGNATURE"

.field public static final GEN_FIELD__ID:Ljava/lang/String; = "_id"

.field public static final GEN_ID_ADDRESS:I = 0x1d

.field public static final GEN_ID_AUTOXCOMMAND:I = 0xf

.field public static final GEN_ID_AUTOXENABLED:I = 0x10

.field public static final GEN_ID_AUTOXHEIGHT:I = 0x13

.field public static final GEN_ID_AUTOXRANDFILENM:I = 0x18

.field public static final GEN_ID_AUTOXRESTYPE:I = 0x11

.field public static final GEN_ID_AUTOXSESSIONPROG:I = 0x14

.field public static final GEN_ID_AUTOXSESSIONTYPE:I = 0x15

.field public static final GEN_ID_AUTOXTYPE:I = 0xe

.field public static final GEN_ID_AUTOXUNIXAUTH:I = 0x17

.field public static final GEN_ID_AUTOXUNIXPW:I = 0x16

.field public static final GEN_ID_AUTOXWIDTH:I = 0x12

.field public static final GEN_ID_CACERT:I = 0x1f

.field public static final GEN_ID_CACERTPATH:I = 0x20

.field public static final GEN_ID_CERTSUBJECT:I = 0x22

.field public static final GEN_ID_COLORMODEL:I = 0x24

.field public static final GEN_ID_CONNECTIONTYPE:I = 0x2

.field public static final GEN_ID_CONSOLEMODE:I = 0x46

.field public static final GEN_ID_DESKTOPBACKGROUND:I = 0x3f

.field public static final GEN_ID_DESKTOPCOMPOSITION:I = 0x41

.field public static final GEN_ID_DOUBLE_TAP_ACTION:I = 0x39

.field public static final GEN_ID_ENABLEGFX:I = 0x4f

.field public static final GEN_ID_ENABLEGFXH264:I = 0x50

.field public static final GEN_ID_ENABLERECORDING:I = 0x48

.field public static final GEN_ID_ENABLESOUND:I = 0x47

.field public static final GEN_ID_EXTRAKEYSTOGGLETYPE:I = 0x26

.field public static final GEN_ID_FILENAME:I = 0x4c

.field public static final GEN_ID_FOLLOWMOUSE:I = 0x30

.field public static final GEN_ID_FOLLOWPAN:I = 0x34

.field public static final GEN_ID_FONTSMOOTHING:I = 0x40

.field public static final GEN_ID_FORCEFULL:I = 0x27

.field public static final GEN_ID_INPUTMODE:I = 0x29

.field public static final GEN_ID_KEEPPASSWORD:I = 0x2f

.field public static final GEN_ID_KEEPSSHPASSWORD:I = 0x7

.field public static final GEN_ID_LAST_META_KEY_ID:I = 0x33

.field public static final GEN_ID_LAYOUTMAP:I = 0x4b

.field public static final GEN_ID_MENUANIMATION:I = 0x43

.field public static final GEN_ID_METALISTID:I = 0x32

.field public static final GEN_ID_NICKNAME:I = 0x1

.field public static final GEN_ID_PASSWORD:I = 0x23

.field public static final GEN_ID_PORT:I = 0x1e

.field public static final GEN_ID_PREFENCODING:I = 0x25

.field public static final GEN_ID_RDPCOLOR:I = 0x3d

.field public static final GEN_ID_RDPDOMAIN:I = 0x36

.field public static final GEN_ID_RDPHEIGHT:I = 0x3c

.field public static final GEN_ID_RDPRESTYPE:I = 0x3a

.field public static final GEN_ID_RDPWIDTH:I = 0x3b

.field public static final GEN_ID_REDIRECTSDCARD:I = 0x45

.field public static final GEN_ID_REMOTEFX:I = 0x3e

.field public static final GEN_ID_REMOTESOUNDTYPE:I = 0x49

.field public static final GEN_ID_REPEATERID:I = 0x28

.field public static final GEN_ID_ROTATEDPAD:I = 0x2c

.field public static final GEN_ID_SCALEMODE:I = 0x2a

.field public static final GEN_ID_SCREENSHOTFILENAME:I = 0x4e

.field public static final GEN_ID_SECURECONNECTIONTYPE:I = 0x37

.field public static final GEN_ID_SHOWZOOMBUTTONS:I = 0x38

.field public static final GEN_ID_SSHHOSTKEY:I = 0x1c

.field public static final GEN_ID_SSHPASSPHRASE:I = 0xa

.field public static final GEN_ID_SSHPASSWORD:I = 0x6

.field public static final GEN_ID_SSHPORT:I = 0x4

.field public static final GEN_ID_SSHPRIVKEY:I = 0x9

.field public static final GEN_ID_SSHPUBKEY:I = 0x8

.field public static final GEN_ID_SSHREMOTECOMMAND:I = 0x19

.field public static final GEN_ID_SSHREMOTECOMMANDOS:I = 0xc

.field public static final GEN_ID_SSHREMOTECOMMANDTIMEOUT:I = 0x1a

.field public static final GEN_ID_SSHREMOTECOMMANDTYPE:I = 0xd

.field public static final GEN_ID_SSHSERVER:I = 0x3

.field public static final GEN_ID_SSHUSER:I = 0x5

.field public static final GEN_ID_TLSPORT:I = 0x21

.field public static final GEN_ID_USEDPADASARROWS:I = 0x2b

.field public static final GEN_ID_USELOCALCURSOR:I = 0x2e

.field public static final GEN_ID_USEPORTRAIT:I = 0x2d

.field public static final GEN_ID_USEREPEATER:I = 0x31

.field public static final GEN_ID_USERNAME:I = 0x35

.field public static final GEN_ID_USESSHPUBKEY:I = 0xb

.field public static final GEN_ID_USESSHREMOTECOMMAND:I = 0x1b

.field public static final GEN_ID_VIEWONLY:I = 0x4a

.field public static final GEN_ID_VISUALSTYLES:I = 0x44

.field public static final GEN_ID_WINDOWCONTENTS:I = 0x42

.field public static final GEN_ID_X509KEYSIGNATURE:I = 0x4d

.field public static final GEN_ID__ID:I = 0x0

.field public static final GEN_TABLE_NAME:Ljava/lang/String; = "CONNECTION_BEAN"


# instance fields
.field private gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

.field private gen_LAST_META_KEY_ID:J

.field private gen_SCALEMODE:Ljava/lang/String;

.field private gen__Id:J

.field private gen_address:Ljava/lang/String;

.field private gen_autoXCommand:Ljava/lang/String;

.field private gen_autoXEnabled:Z

.field private gen_autoXHeight:I

.field private gen_autoXRandFileNm:Ljava/lang/String;

.field private gen_autoXResType:I

.field private gen_autoXSessionProg:Ljava/lang/String;

.field private gen_autoXSessionType:I

.field private gen_autoXType:I

.field private gen_autoXUnixAuth:Z

.field private gen_autoXUnixpw:Z

.field private gen_autoXWidth:I

.field private gen_caCert:Ljava/lang/String;

.field private gen_caCertPath:Ljava/lang/String;

.field private gen_certSubject:Ljava/lang/String;

.field private gen_colorModel:Ljava/lang/String;

.field private gen_connectionType:I

.field private gen_consoleMode:Z

.field private gen_desktopBackground:Z

.field private gen_desktopComposition:Z

.field private gen_enableGfx:Z

.field private gen_enableGfxH264:Z

.field private gen_enableRecording:Z

.field private gen_enableSound:Z

.field private gen_extraKeysToggleType:I

.field private gen_filename:Ljava/lang/String;

.field private gen_followMouse:Z

.field private gen_followPan:Z

.field private gen_fontSmoothing:Z

.field private gen_forceFull:J

.field private gen_inputMode:Ljava/lang/String;

.field private gen_keepPassword:Z

.field private gen_keepSshPassword:Z

.field private gen_layoutMap:Ljava/lang/String;

.field private gen_menuAnimation:Z

.field private gen_metaListId:J

.field private gen_nickname:Ljava/lang/String;

.field private gen_password:Ljava/lang/String;

.field private gen_port:I

.field private gen_prefEncoding:I

.field private gen_rdpColor:I

.field private gen_rdpDomain:Ljava/lang/String;

.field private gen_rdpHeight:I

.field private gen_rdpResType:I

.field private gen_rdpWidth:I

.field private gen_redirectSdCard:Z

.field private gen_remoteFx:Z

.field private gen_remoteSoundType:I

.field private gen_repeaterId:Ljava/lang/String;

.field private gen_rotateDpad:Z

.field private gen_screenshotFilename:Ljava/lang/String;

.field private gen_secureConnectionType:Ljava/lang/String;

.field private gen_showZoomButtons:Z

.field private gen_sshHostKey:Ljava/lang/String;

.field private gen_sshPassPhrase:Ljava/lang/String;

.field private gen_sshPassword:Ljava/lang/String;

.field private gen_sshPort:I

.field private gen_sshPrivKey:Ljava/lang/String;

.field private gen_sshPubKey:Ljava/lang/String;

.field private gen_sshRemoteCommand:Ljava/lang/String;

.field private gen_sshRemoteCommandOS:I

.field private gen_sshRemoteCommandTimeout:I

.field private gen_sshRemoteCommandType:I

.field private gen_sshServer:Ljava/lang/String;

.field private gen_sshUser:Ljava/lang/String;

.field private gen_tlsPort:I

.field private gen_useDpadAsArrows:Z

.field private gen_useLocalCursor:I

.field private gen_usePortrait:Z

.field private gen_useRepeater:Z

.field private gen_useSshPubKey:Z

.field private gen_useSshRemoteCommand:Z

.field private gen_userName:Ljava/lang/String;

.field private gen_viewOnly:Z

.field private gen_visualStyles:Z

.field private gen_windowContents:Z

.field private gen_x509KeySignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public Gen_columnIndices(Landroid/database/Cursor;)[I
    .locals 4

    const/16 v0, 0x51

    .line 610
    new-array v0, v0, [I

    .line 611
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 614
    const-string v1, "_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 616
    :cond_0
    const-string v1, "NICKNAME"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 617
    const-string v1, "CONNECTIONTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 618
    const-string v1, "SSHSERVER"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 619
    const-string v1, "SSHPORT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 620
    const-string v1, "SSHUSER"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 621
    const-string v1, "SSHPASSWORD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 622
    const-string v1, "KEEPSSHPASSWORD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 623
    const-string v1, "SSHPUBKEY"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 624
    const-string v1, "SSHPRIVKEY"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 625
    const-string v1, "SSHPASSPHRASE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 626
    const-string v1, "USESSHPUBKEY"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 627
    const-string v1, "SSHREMOTECOMMANDOS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 628
    const-string v1, "SSHREMOTECOMMANDTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 629
    const-string v1, "AUTOXTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 630
    const-string v1, "AUTOXCOMMAND"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 631
    const-string v1, "AUTOXENABLED"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x10

    aput v1, v0, v2

    .line 632
    const-string v1, "AUTOXRESTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 633
    const-string v1, "AUTOXWIDTH"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 634
    const-string v1, "AUTOXHEIGHT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 635
    const-string v1, "AUTOXSESSIONPROG"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v0, v2

    .line 636
    const-string v1, "AUTOXSESSIONTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    aput v1, v0, v2

    .line 637
    const-string v1, "AUTOXUNIXPW"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x16

    aput v1, v0, v2

    .line 638
    const-string v1, "AUTOXUNIXAUTH"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x17

    aput v1, v0, v2

    .line 639
    const-string v1, "AUTOXRANDFILENM"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    aput v1, v0, v2

    .line 640
    const-string v1, "SSHREMOTECOMMAND"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    aput v1, v0, v2

    .line 641
    const-string v1, "SSHREMOTECOMMANDTIMEOUT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1a

    aput v1, v0, v2

    .line 642
    const-string v1, "USESSHREMOTECOMMAND"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1b

    aput v1, v0, v2

    .line 643
    const-string v1, "SSHHOSTKEY"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1c

    aput v1, v0, v2

    .line 644
    const-string v1, "ADDRESS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1d

    aput v1, v0, v2

    .line 645
    const-string v1, "PORT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    aput v1, v0, v2

    .line 646
    const-string v1, "CACERT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1f

    aput v1, v0, v2

    .line 647
    const-string v1, "CACERTPATH"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    aput v1, v0, v2

    .line 648
    const-string v1, "TLSPORT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x21

    aput v1, v0, v2

    .line 649
    const-string v1, "CERTSUBJECT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x22

    aput v1, v0, v2

    .line 650
    const-string v1, "PASSWORD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x23

    aput v1, v0, v2

    .line 651
    const-string v1, "COLORMODEL"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x24

    aput v1, v0, v2

    .line 652
    const-string v1, "PREFENCODING"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x25

    aput v1, v0, v2

    .line 653
    const-string v1, "EXTRAKEYSTOGGLETYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x26

    aput v1, v0, v2

    .line 654
    const-string v1, "FORCEFULL"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x27

    aput v1, v0, v2

    .line 655
    const-string v1, "REPEATERID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x28

    aput v1, v0, v2

    .line 656
    const-string v1, "INPUTMODE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x29

    aput v1, v0, v2

    .line 657
    const-string v1, "SCALEMODE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2a

    aput v1, v0, v2

    .line 658
    const-string v1, "USEDPADASARROWS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2b

    aput v1, v0, v2

    .line 659
    const-string v1, "ROTATEDPAD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2c

    aput v1, v0, v2

    .line 660
    const-string v1, "USEPORTRAIT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    aput v1, v0, v2

    .line 661
    const-string v1, "USELOCALCURSOR"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2e

    aput v1, v0, v2

    .line 662
    const-string v1, "KEEPPASSWORD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2f

    aput v1, v0, v2

    .line 663
    const-string v1, "FOLLOWMOUSE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x30

    aput v1, v0, v2

    .line 664
    const-string v1, "USEREPEATER"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x31

    aput v1, v0, v2

    .line 665
    const-string v1, "METALISTID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x32

    aput v1, v0, v2

    .line 666
    const-string v1, "LAST_META_KEY_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x33

    aput v1, v0, v2

    .line 667
    const-string v1, "FOLLOWPAN"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x34

    aput v1, v0, v2

    .line 668
    const-string v1, "USERNAME"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x35

    aput v1, v0, v2

    .line 669
    const-string v1, "RDPDOMAIN"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x36

    aput v1, v0, v2

    .line 670
    const-string v1, "SECURECONNECTIONTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x37

    aput v1, v0, v2

    .line 671
    const-string v1, "SHOWZOOMBUTTONS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x38

    aput v1, v0, v2

    .line 672
    const-string v1, "DOUBLE_TAP_ACTION"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x39

    aput v1, v0, v2

    .line 673
    const-string v1, "RDPRESTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3a

    aput v1, v0, v2

    .line 674
    const-string v1, "RDPWIDTH"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    aput v1, v0, v2

    .line 675
    const-string v1, "RDPHEIGHT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3c

    aput v1, v0, v2

    .line 676
    const-string v1, "RDPCOLOR"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 677
    const-string v1, "REMOTEFX"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e

    aput v1, v0, v2

    .line 678
    const-string v1, "DESKTOPBACKGROUND"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3f

    aput v1, v0, v2

    .line 679
    const-string v1, "FONTSMOOTHING"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    aput v1, v0, v2

    .line 680
    const-string v1, "DESKTOPCOMPOSITION"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x41

    aput v1, v0, v2

    .line 681
    const-string v1, "WINDOWCONTENTS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x42

    aput v1, v0, v2

    .line 682
    const-string v1, "MENUANIMATION"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x43

    aput v1, v0, v2

    .line 683
    const-string v1, "VISUALSTYLES"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x44

    aput v1, v0, v2

    .line 684
    const-string v1, "REDIRECTSDCARD"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x45

    aput v1, v0, v2

    .line 685
    const-string v1, "CONSOLEMODE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x46

    aput v1, v0, v2

    .line 686
    const-string v1, "ENABLESOUND"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x47

    aput v1, v0, v2

    .line 687
    const-string v1, "ENABLERECORDING"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x48

    aput v1, v0, v2

    .line 688
    const-string v1, "REMOTESOUNDTYPE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x49

    aput v1, v0, v2

    .line 689
    const-string v1, "VIEWONLY"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4a

    aput v1, v0, v2

    .line 690
    const-string v1, "LAYOUTMAP"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4b

    aput v1, v0, v2

    .line 692
    const-string v1, "FILENAME"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4c

    aput v1, v0, v2

    .line 693
    const-string v1, "X509KEYSIGNATURE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4d

    aput v1, v0, v2

    .line 694
    const-string v1, "SCREENSHOTFILENAME"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4e

    aput v1, v0, v2

    .line 696
    const-string v1, "ENABLEGFX"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x4f

    aput v1, v0, v2

    .line 697
    const-string v1, "ENABLEGFXH264"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x50

    aput p1, v0, v1

    return-object v0
.end method

.method public Gen_getValues()Landroid/content/ContentValues;
    .locals 6

    .line 516
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 517
    iget-wide v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen__Id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v1, "NICKNAME"

    iget-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_connectionType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECTIONTYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "SSHSERVER"

    iget-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshServer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSHPORT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "SSHUSER"

    iget-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshUser:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "SSHPASSWORD"

    iget-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepSshPassword:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "KEEPSSHPASSWORD"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "SSHPUBKEY"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPubKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "SSHPRIVKEY"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPrivKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v1, "SSHPASSPHRASE"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshPubKey:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "USESSHPUBKEY"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandOS:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSHREMOTECOMMANDOS"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSHREMOTECOMMANDTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTOXTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "AUTOXCOMMAND"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXEnabled:Z

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    const-string v4, "AUTOXENABLED"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXResType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTOXRESTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTOXWIDTH"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTOXHEIGHT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "AUTOXSESSIONPROG"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionProg:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUTOXSESSIONTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixpw:Z

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    const-string v4, "AUTOXUNIXPW"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixAuth:Z

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    const-string v4, "AUTOXUNIXAUTH"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "AUTOXRANDFILENM"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXRandFileNm:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "SSHREMOTECOMMAND"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSHREMOTECOMMANDTIMEOUT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshRemoteCommand:Z

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    const-string v4, "USESSHREMOTECOMMAND"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "SSHHOSTKEY"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshHostKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "ADDRESS"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_address:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PORT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "CACERT"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCert:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "CACERTPATH"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCertPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_tlsPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "TLSPORT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "CERTSUBJECT"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_certSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "PASSWORD"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "COLORMODEL"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_colorModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_prefEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PREFENCODING"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_extraKeysToggleType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "EXTRAKEYSTOGGLETYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-wide v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_forceFull:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "FORCEFULL"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "REPEATERID"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_repeaterId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "INPUTMODE"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_inputMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "SCALEMODE"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_SCALEMODE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useDpadAsArrows:Z

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_6

    :cond_6
    move-object v1, v3

    :goto_6
    const-string v4, "USEDPADASARROWS"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rotateDpad:Z

    if-eqz v1, :cond_7

    move-object v1, v2

    goto :goto_7

    :cond_7
    move-object v1, v3

    :goto_7
    const-string v4, "ROTATEDPAD"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_usePortrait:Z

    if-eqz v1, :cond_8

    move-object v1, v2

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    const-string v4, "USEPORTRAIT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useLocalCursor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "USELOCALCURSOR"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepPassword:Z

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_9

    :cond_9
    move-object v1, v3

    :goto_9
    const-string v4, "KEEPPASSWORD"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followMouse:Z

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_a

    :cond_a
    move-object v1, v3

    :goto_a
    const-string v4, "FOLLOWMOUSE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useRepeater:Z

    if-eqz v1, :cond_b

    move-object v1, v2

    goto :goto_b

    :cond_b
    move-object v1, v3

    :goto_b
    const-string v4, "USEREPEATER"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-wide v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_metaListId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "METALISTID"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-wide v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_LAST_META_KEY_ID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LAST_META_KEY_ID"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followPan:Z

    if-eqz v1, :cond_c

    move-object v1, v2

    goto :goto_c

    :cond_c
    move-object v1, v3

    :goto_c
    const-string v4, "FOLLOWPAN"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "USERNAME"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "RDPDOMAIN"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "SECURECONNECTIONTYPE"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_secureConnectionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_showZoomButtons:Z

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_d

    :cond_d
    move-object v1, v3

    :goto_d
    const-string v4, "SHOWZOOMBUTTONS"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v1, "DOUBLE_TAP_ACTION"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpResType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RDPRESTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RDPWIDTH"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RDPHEIGHT"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RDPCOLOR"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteFx:Z

    if-eqz v1, :cond_e

    move-object v1, v2

    goto :goto_e

    :cond_e
    move-object v1, v3

    :goto_e
    const-string v4, "REMOTEFX"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopBackground:Z

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_f

    :cond_f
    move-object v1, v3

    :goto_f
    const-string v4, "DESKTOPBACKGROUND"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_fontSmoothing:Z

    if-eqz v1, :cond_10

    move-object v1, v2

    goto :goto_10

    :cond_10
    move-object v1, v3

    :goto_10
    const-string v4, "FONTSMOOTHING"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopComposition:Z

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_11

    :cond_11
    move-object v1, v3

    :goto_11
    const-string v4, "DESKTOPCOMPOSITION"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_windowContents:Z

    if-eqz v1, :cond_12

    move-object v1, v2

    goto :goto_12

    :cond_12
    move-object v1, v3

    :goto_12
    const-string v4, "WINDOWCONTENTS"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_menuAnimation:Z

    if-eqz v1, :cond_13

    move-object v1, v2

    goto :goto_13

    :cond_13
    move-object v1, v3

    :goto_13
    const-string v4, "MENUANIMATION"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_visualStyles:Z

    if-eqz v1, :cond_14

    move-object v1, v2

    goto :goto_14

    :cond_14
    move-object v1, v3

    :goto_14
    const-string v4, "VISUALSTYLES"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_redirectSdCard:Z

    if-eqz v1, :cond_15

    move-object v1, v2

    goto :goto_15

    :cond_15
    move-object v1, v3

    :goto_15
    const-string v4, "REDIRECTSDCARD"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_consoleMode:Z

    if-eqz v1, :cond_16

    move-object v1, v2

    goto :goto_16

    :cond_16
    move-object v1, v3

    :goto_16
    const-string v4, "CONSOLEMODE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableSound:Z

    if-eqz v1, :cond_17

    move-object v1, v2

    goto :goto_17

    :cond_17
    move-object v1, v3

    :goto_17
    const-string v4, "ENABLESOUND"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableRecording:Z

    if-eqz v1, :cond_18

    move-object v1, v2

    goto :goto_18

    :cond_18
    move-object v1, v3

    :goto_18
    const-string v4, "ENABLERECORDING"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteSoundType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "REMOTESOUNDTYPE"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_viewOnly:Z

    if-eqz v1, :cond_19

    move-object v1, v2

    goto :goto_19

    :cond_19
    move-object v1, v3

    :goto_19
    const-string v4, "VIEWONLY"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "LAYOUTMAP"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_layoutMap:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "FILENAME"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "X509KEYSIGNATURE"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_x509KeySignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "SCREENSHOTFILENAME"

    iget-object v4, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_screenshotFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfx:Z

    if-eqz v1, :cond_1a

    move-object v1, v2

    goto :goto_1a

    :cond_1a
    move-object v1, v3

    :goto_1a
    const-string v4, "ENABLEGFX"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfxH264:Z

    if-eqz v1, :cond_1b

    goto :goto_1b

    :cond_1b
    move-object v2, v3

    :goto_1b
    const-string v1, "ENABLEGFXH264"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public Gen_populate(Landroid/content/ContentValues;)V
    .locals 5

    .line 956
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen__Id:J

    .line 957
    const-string v0, "NICKNAME"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_nickname:Ljava/lang/String;

    .line 958
    const-string v0, "CONNECTIONTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_connectionType:I

    .line 959
    const-string v0, "SSHSERVER"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshServer:Ljava/lang/String;

    .line 960
    const-string v0, "SSHPORT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPort:I

    .line 961
    const-string v0, "SSHUSER"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshUser:Ljava/lang/String;

    .line 962
    const-string v0, "SSHPASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassword:Ljava/lang/String;

    .line 963
    const-string v0, "KEEPSSHPASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepSshPassword:Z

    .line 964
    const-string v0, "SSHPUBKEY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPubKey:Ljava/lang/String;

    .line 965
    const-string v0, "SSHPRIVKEY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPrivKey:Ljava/lang/String;

    .line 966
    const-string v0, "SSHPASSPHRASE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassPhrase:Ljava/lang/String;

    .line 967
    const-string v0, "USESSHPUBKEY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshPubKey:Z

    .line 968
    const-string v0, "SSHREMOTECOMMANDOS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandOS:I

    .line 969
    const-string v0, "SSHREMOTECOMMANDTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandType:I

    .line 970
    const-string v0, "AUTOXTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXType:I

    .line 971
    const-string v0, "AUTOXCOMMAND"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXCommand:Ljava/lang/String;

    .line 972
    const-string v0, "AUTOXENABLED"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXEnabled:Z

    .line 973
    const-string v0, "AUTOXRESTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXResType:I

    .line 974
    const-string v0, "AUTOXWIDTH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXWidth:I

    .line 975
    const-string v0, "AUTOXHEIGHT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXHeight:I

    .line 976
    const-string v0, "AUTOXSESSIONPROG"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionProg:Ljava/lang/String;

    .line 977
    const-string v0, "AUTOXSESSIONTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionType:I

    .line 978
    const-string v0, "AUTOXUNIXPW"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixpw:Z

    .line 979
    const-string v0, "AUTOXUNIXAUTH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixAuth:Z

    .line 980
    const-string v0, "AUTOXRANDFILENM"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXRandFileNm:Ljava/lang/String;

    .line 981
    const-string v0, "SSHREMOTECOMMAND"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommand:Ljava/lang/String;

    .line 982
    const-string v0, "SSHREMOTECOMMANDTIMEOUT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandTimeout:I

    .line 983
    const-string v0, "USESSHREMOTECOMMAND"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshRemoteCommand:Z

    .line 984
    const-string v0, "SSHHOSTKEY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshHostKey:Ljava/lang/String;

    .line 985
    const-string v0, "ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_address:Ljava/lang/String;

    .line 986
    const-string v0, "PORT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_port:I

    .line 987
    const-string v0, "CACERT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCert:Ljava/lang/String;

    .line 988
    const-string v0, "CACERTPATH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCertPath:Ljava/lang/String;

    .line 989
    const-string v0, "TLSPORT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_tlsPort:I

    .line 990
    const-string v0, "CERTSUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_certSubject:Ljava/lang/String;

    .line 991
    const-string v0, "PASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_password:Ljava/lang/String;

    .line 992
    const-string v0, "COLORMODEL"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_colorModel:Ljava/lang/String;

    .line 993
    const-string v0, "PREFENCODING"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_prefEncoding:I

    .line 994
    const-string v0, "EXTRAKEYSTOGGLETYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_extraKeysToggleType:I

    .line 995
    const-string v0, "FORCEFULL"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_forceFull:J

    .line 996
    const-string v0, "REPEATERID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_repeaterId:Ljava/lang/String;

    .line 997
    const-string v0, "INPUTMODE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_inputMode:Ljava/lang/String;

    .line 998
    const-string v0, "SCALEMODE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_SCALEMODE:Ljava/lang/String;

    .line 999
    const-string v0, "USEDPADASARROWS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useDpadAsArrows:Z

    .line 1000
    const-string v0, "ROTATEDPAD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rotateDpad:Z

    .line 1001
    const-string v0, "USEPORTRAIT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_usePortrait:Z

    .line 1002
    const-string v0, "USELOCALCURSOR"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useLocalCursor:I

    .line 1003
    const-string v0, "KEEPPASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepPassword:Z

    .line 1004
    const-string v0, "FOLLOWMOUSE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followMouse:Z

    .line 1005
    const-string v0, "USEREPEATER"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useRepeater:Z

    .line 1006
    const-string v0, "METALISTID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_metaListId:J

    .line 1007
    const-string v0, "LAST_META_KEY_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_LAST_META_KEY_ID:J

    .line 1008
    const-string v0, "FOLLOWPAN"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followPan:Z

    .line 1009
    const-string v0, "USERNAME"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_userName:Ljava/lang/String;

    .line 1010
    const-string v0, "RDPDOMAIN"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpDomain:Ljava/lang/String;

    .line 1011
    const-string v0, "SECURECONNECTIONTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_secureConnectionType:Ljava/lang/String;

    .line 1012
    const-string v0, "SHOWZOOMBUTTONS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_showZoomButtons:Z

    .line 1013
    const-string v0, "DOUBLE_TAP_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

    .line 1014
    const-string v0, "RDPRESTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpResType:I

    .line 1015
    const-string v0, "RDPWIDTH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpWidth:I

    .line 1016
    const-string v0, "RDPHEIGHT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpHeight:I

    .line 1017
    const-string v0, "RDPCOLOR"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpColor:I

    .line 1018
    const-string v0, "REMOTEFX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_e

    :cond_e
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteFx:Z

    .line 1019
    const-string v0, "DESKTOPBACKGROUND"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopBackground:Z

    .line 1020
    const-string v0, "FONTSMOOTHING"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_10

    :cond_10
    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_fontSmoothing:Z

    .line 1021
    const-string v0, "DESKTOPCOMPOSITION"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_11

    :cond_11
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopComposition:Z

    .line 1022
    const-string v0, "WINDOWCONTENTS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_12

    :cond_12
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_windowContents:Z

    .line 1023
    const-string v0, "MENUANIMATION"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_13

    :cond_13
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_menuAnimation:Z

    .line 1024
    const-string v0, "VISUALSTYLES"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_14

    :cond_14
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_visualStyles:Z

    .line 1025
    const-string v0, "REDIRECTSDCARD"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_15

    :cond_15
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_redirectSdCard:Z

    .line 1026
    const-string v0, "CONSOLEMODE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_16

    :cond_16
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_consoleMode:Z

    .line 1027
    const-string v0, "ENABLESOUND"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_17

    :cond_17
    move v0, v2

    :goto_17
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableSound:Z

    .line 1028
    const-string v0, "ENABLERECORDING"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_18

    :cond_18
    move v0, v2

    :goto_18
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableRecording:Z

    .line 1029
    const-string v0, "REMOTESOUNDTYPE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteSoundType:I

    .line 1030
    const-string v0, "VIEWONLY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_19

    :cond_19
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_viewOnly:Z

    .line 1031
    const-string v0, "LAYOUTMAP"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_layoutMap:Ljava/lang/String;

    .line 1033
    const-string v0, "FILENAME"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_filename:Ljava/lang/String;

    .line 1034
    const-string v0, "X509KEYSIGNATURE"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_x509KeySignature:Ljava/lang/String;

    .line 1035
    const-string v0, "SCREENSHOTFILENAME"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_screenshotFilename:Ljava/lang/String;

    .line 1037
    const-string v0, "ENABLEGFX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1a

    :cond_1a
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfx:Z

    .line 1038
    const-string v0, "ENABLEGFXH264"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1b

    :cond_1b
    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfxH264:Z

    return-void
.end method

.method public Gen_populate(Landroid/database/Cursor;[I)V
    .locals 4

    const/4 v0, 0x0

    .line 705
    aget v1, p2, v0

    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    aget v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen__Id:J

    :cond_0
    const/4 v1, 0x1

    .line 708
    aget v2, p2, v1

    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    aget v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_nickname:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x2

    .line 711
    aget v3, p2, v2

    if-ltz v3, :cond_2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 712
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_connectionType:I

    :cond_2
    const/4 v2, 0x3

    .line 714
    aget v3, p2, v2

    if-ltz v3, :cond_3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 715
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshServer:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x4

    .line 717
    aget v3, p2, v2

    if-ltz v3, :cond_4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 718
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPort:I

    :cond_4
    const/4 v2, 0x5

    .line 720
    aget v3, p2, v2

    if-ltz v3, :cond_5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 721
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshUser:Ljava/lang/String;

    :cond_5
    const/4 v2, 0x6

    .line 723
    aget v3, p2, v2

    if-ltz v3, :cond_6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 724
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassword:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x7

    .line 726
    aget v3, p2, v2

    if-ltz v3, :cond_8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 727
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepSshPassword:Z

    :cond_8
    const/16 v2, 0x8

    .line 729
    aget v3, p2, v2

    if-ltz v3, :cond_9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 730
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPubKey:Ljava/lang/String;

    :cond_9
    const/16 v2, 0x9

    .line 732
    aget v3, p2, v2

    if-ltz v3, :cond_a

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 733
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPrivKey:Ljava/lang/String;

    :cond_a
    const/16 v2, 0xa

    .line 735
    aget v3, p2, v2

    if-ltz v3, :cond_b

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 736
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassPhrase:Ljava/lang/String;

    :cond_b
    const/16 v2, 0xb

    .line 738
    aget v3, p2, v2

    if-ltz v3, :cond_d

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 739
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_1

    :cond_c
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshPubKey:Z

    :cond_d
    const/16 v2, 0xc

    .line 741
    aget v3, p2, v2

    if-ltz v3, :cond_e

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 742
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandOS:I

    :cond_e
    const/16 v2, 0xd

    .line 744
    aget v3, p2, v2

    if-ltz v3, :cond_f

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 745
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandType:I

    :cond_f
    const/16 v2, 0xe

    .line 747
    aget v3, p2, v2

    if-ltz v3, :cond_10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 748
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXType:I

    :cond_10
    const/16 v2, 0xf

    .line 750
    aget v3, p2, v2

    if-ltz v3, :cond_11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 751
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXCommand:Ljava/lang/String;

    :cond_11
    const/16 v2, 0x10

    .line 753
    aget v3, p2, v2

    if-ltz v3, :cond_13

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 754
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_12

    move v2, v1

    goto :goto_2

    :cond_12
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXEnabled:Z

    :cond_13
    const/16 v2, 0x11

    .line 756
    aget v3, p2, v2

    if-ltz v3, :cond_14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 757
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXResType:I

    :cond_14
    const/16 v2, 0x12

    .line 759
    aget v3, p2, v2

    if-ltz v3, :cond_15

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 760
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXWidth:I

    :cond_15
    const/16 v2, 0x13

    .line 762
    aget v3, p2, v2

    if-ltz v3, :cond_16

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 763
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXHeight:I

    :cond_16
    const/16 v2, 0x14

    .line 765
    aget v3, p2, v2

    if-ltz v3, :cond_17

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 766
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionProg:Ljava/lang/String;

    :cond_17
    const/16 v2, 0x15

    .line 768
    aget v3, p2, v2

    if-ltz v3, :cond_18

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 769
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionType:I

    :cond_18
    const/16 v2, 0x16

    .line 771
    aget v2, p2, v2

    if-ltz v2, :cond_1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1a

    const/16 v2, 0x16

    .line 772
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_3

    :cond_19
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixpw:Z

    :cond_1a
    const/16 v2, 0x17

    .line 774
    aget v2, p2, v2

    if-ltz v2, :cond_1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1c

    const/16 v2, 0x17

    .line 775
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v1

    goto :goto_4

    :cond_1b
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixAuth:Z

    :cond_1c
    const/16 v2, 0x18

    .line 777
    aget v2, p2, v2

    if-ltz v2, :cond_1d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1d

    const/16 v2, 0x18

    .line 778
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXRandFileNm:Ljava/lang/String;

    :cond_1d
    const/16 v2, 0x19

    .line 780
    aget v2, p2, v2

    if-ltz v2, :cond_1e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1e

    const/16 v2, 0x19

    .line 781
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommand:Ljava/lang/String;

    :cond_1e
    const/16 v2, 0x1a

    .line 783
    aget v2, p2, v2

    if-ltz v2, :cond_1f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1f

    const/16 v2, 0x1a

    .line 784
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandTimeout:I

    :cond_1f
    const/16 v2, 0x1b

    .line 786
    aget v2, p2, v2

    if-ltz v2, :cond_21

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_21

    const/16 v2, 0x1b

    .line 787
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_20

    move v2, v1

    goto :goto_5

    :cond_20
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshRemoteCommand:Z

    :cond_21
    const/16 v2, 0x1c

    .line 789
    aget v2, p2, v2

    if-ltz v2, :cond_22

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0x1c

    .line 790
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshHostKey:Ljava/lang/String;

    :cond_22
    const/16 v2, 0x1d

    .line 792
    aget v2, p2, v2

    if-ltz v2, :cond_23

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_23

    const/16 v2, 0x1d

    .line 793
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_address:Ljava/lang/String;

    :cond_23
    const/16 v2, 0x1e

    .line 795
    aget v2, p2, v2

    if-ltz v2, :cond_24

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_24

    const/16 v2, 0x1e

    .line 796
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_port:I

    :cond_24
    const/16 v2, 0x1f

    .line 798
    aget v2, p2, v2

    if-ltz v2, :cond_25

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_25

    const/16 v2, 0x1f

    .line 799
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCert:Ljava/lang/String;

    :cond_25
    const/16 v2, 0x20

    .line 801
    aget v2, p2, v2

    if-ltz v2, :cond_26

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_26

    const/16 v2, 0x20

    .line 802
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCertPath:Ljava/lang/String;

    :cond_26
    const/16 v2, 0x21

    .line 804
    aget v2, p2, v2

    if-ltz v2, :cond_27

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v2, 0x21

    .line 805
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_tlsPort:I

    :cond_27
    const/16 v2, 0x22

    .line 807
    aget v2, p2, v2

    if-ltz v2, :cond_28

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_28

    const/16 v2, 0x22

    .line 808
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_certSubject:Ljava/lang/String;

    :cond_28
    const/16 v2, 0x23

    .line 810
    aget v2, p2, v2

    if-ltz v2, :cond_29

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_29

    const/16 v2, 0x23

    .line 811
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_password:Ljava/lang/String;

    :cond_29
    const/16 v2, 0x24

    .line 813
    aget v2, p2, v2

    if-ltz v2, :cond_2a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2a

    const/16 v2, 0x24

    .line 814
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_colorModel:Ljava/lang/String;

    :cond_2a
    const/16 v2, 0x25

    .line 816
    aget v2, p2, v2

    if-ltz v2, :cond_2b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2b

    const/16 v2, 0x25

    .line 817
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_prefEncoding:I

    :cond_2b
    const/16 v2, 0x26

    .line 819
    aget v2, p2, v2

    if-ltz v2, :cond_2c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0x26

    .line 820
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_extraKeysToggleType:I

    :cond_2c
    const/16 v2, 0x27

    .line 822
    aget v2, p2, v2

    if-ltz v2, :cond_2d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/16 v2, 0x27

    .line 823
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_forceFull:J

    :cond_2d
    const/16 v2, 0x28

    .line 825
    aget v2, p2, v2

    if-ltz v2, :cond_2e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2e

    const/16 v2, 0x28

    .line 826
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_repeaterId:Ljava/lang/String;

    :cond_2e
    const/16 v2, 0x29

    .line 828
    aget v2, p2, v2

    if-ltz v2, :cond_2f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2f

    const/16 v2, 0x29

    .line 829
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_inputMode:Ljava/lang/String;

    :cond_2f
    const/16 v2, 0x2a

    .line 831
    aget v2, p2, v2

    if-ltz v2, :cond_30

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_30

    const/16 v2, 0x2a

    .line 832
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_SCALEMODE:Ljava/lang/String;

    :cond_30
    const/16 v2, 0x2b

    .line 834
    aget v2, p2, v2

    if-ltz v2, :cond_32

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_32

    const/16 v2, 0x2b

    .line 835
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_31

    move v2, v1

    goto :goto_6

    :cond_31
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useDpadAsArrows:Z

    :cond_32
    const/16 v2, 0x2c

    .line 837
    aget v2, p2, v2

    if-ltz v2, :cond_34

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_34

    const/16 v2, 0x2c

    .line 838
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_33

    move v2, v1

    goto :goto_7

    :cond_33
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rotateDpad:Z

    :cond_34
    const/16 v2, 0x2d

    .line 840
    aget v2, p2, v2

    if-ltz v2, :cond_36

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_36

    const/16 v2, 0x2d

    .line 841
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_35

    move v2, v1

    goto :goto_8

    :cond_35
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_usePortrait:Z

    :cond_36
    const/16 v2, 0x2e

    .line 843
    aget v2, p2, v2

    if-ltz v2, :cond_37

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_37

    const/16 v2, 0x2e

    .line 844
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useLocalCursor:I

    :cond_37
    const/16 v2, 0x2f

    .line 846
    aget v2, p2, v2

    if-ltz v2, :cond_39

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_39

    const/16 v2, 0x2f

    .line 847
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_38

    move v2, v1

    goto :goto_9

    :cond_38
    move v2, v0

    :goto_9
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepPassword:Z

    :cond_39
    const/16 v2, 0x30

    .line 849
    aget v2, p2, v2

    if-ltz v2, :cond_3b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3b

    const/16 v2, 0x30

    .line 850
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v1

    goto :goto_a

    :cond_3a
    move v2, v0

    :goto_a
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followMouse:Z

    :cond_3b
    const/16 v2, 0x31

    .line 852
    aget v2, p2, v2

    if-ltz v2, :cond_3d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3d

    const/16 v2, 0x31

    .line 853
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v1

    goto :goto_b

    :cond_3c
    move v2, v0

    :goto_b
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useRepeater:Z

    :cond_3d
    const/16 v2, 0x32

    .line 855
    aget v2, p2, v2

    if-ltz v2, :cond_3e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3e

    const/16 v2, 0x32

    .line 856
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_metaListId:J

    :cond_3e
    const/16 v2, 0x33

    .line 858
    aget v2, p2, v2

    if-ltz v2, :cond_3f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3f

    const/16 v2, 0x33

    .line 859
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_LAST_META_KEY_ID:J

    :cond_3f
    const/16 v2, 0x34

    .line 861
    aget v2, p2, v2

    if-ltz v2, :cond_41

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_41

    const/16 v2, 0x34

    .line 862
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_40

    move v2, v1

    goto :goto_c

    :cond_40
    move v2, v0

    :goto_c
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followPan:Z

    :cond_41
    const/16 v2, 0x35

    .line 864
    aget v2, p2, v2

    if-ltz v2, :cond_42

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v2, 0x35

    .line 865
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_userName:Ljava/lang/String;

    :cond_42
    const/16 v2, 0x36

    .line 867
    aget v2, p2, v2

    if-ltz v2, :cond_43

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_43

    const/16 v2, 0x36

    .line 868
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpDomain:Ljava/lang/String;

    :cond_43
    const/16 v2, 0x37

    .line 870
    aget v2, p2, v2

    if-ltz v2, :cond_44

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_44

    const/16 v2, 0x37

    .line 871
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_secureConnectionType:Ljava/lang/String;

    :cond_44
    const/16 v2, 0x38

    .line 873
    aget v2, p2, v2

    if-ltz v2, :cond_46

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_46

    const/16 v2, 0x38

    .line 874
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_45

    move v2, v1

    goto :goto_d

    :cond_45
    move v2, v0

    :goto_d
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_showZoomButtons:Z

    :cond_46
    const/16 v2, 0x39

    .line 876
    aget v2, p2, v2

    if-ltz v2, :cond_47

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_47

    const/16 v2, 0x39

    .line 877
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

    :cond_47
    const/16 v2, 0x3a

    .line 879
    aget v2, p2, v2

    if-ltz v2, :cond_48

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_48

    const/16 v2, 0x3a

    .line 880
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpResType:I

    :cond_48
    const/16 v2, 0x3b

    .line 882
    aget v2, p2, v2

    if-ltz v2, :cond_49

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_49

    const/16 v2, 0x3b

    .line 883
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpWidth:I

    :cond_49
    const/16 v2, 0x3c

    .line 885
    aget v2, p2, v2

    if-ltz v2, :cond_4a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4a

    const/16 v2, 0x3c

    .line 886
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpHeight:I

    :cond_4a
    const/16 v2, 0x3d

    .line 888
    aget v2, p2, v2

    if-ltz v2, :cond_4b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4b

    const/16 v2, 0x3d

    .line 889
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpColor:I

    :cond_4b
    const/16 v2, 0x3e

    .line 891
    aget v2, p2, v2

    if-ltz v2, :cond_4d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4d

    const/16 v2, 0x3e

    .line 892
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v1

    goto :goto_e

    :cond_4c
    move v2, v0

    :goto_e
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteFx:Z

    :cond_4d
    const/16 v2, 0x3f

    .line 894
    aget v2, p2, v2

    if-ltz v2, :cond_4f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4f

    const/16 v2, 0x3f

    .line 895
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v1

    goto :goto_f

    :cond_4e
    move v2, v0

    :goto_f
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopBackground:Z

    :cond_4f
    const/16 v2, 0x40

    .line 897
    aget v2, p2, v2

    if-ltz v2, :cond_51

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_51

    const/16 v2, 0x40

    .line 898
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_50

    move v2, v1

    goto :goto_10

    :cond_50
    move v2, v0

    :goto_10
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_fontSmoothing:Z

    :cond_51
    const/16 v2, 0x41

    .line 900
    aget v2, p2, v2

    if-ltz v2, :cond_53

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_53

    const/16 v2, 0x41

    .line 901
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_52

    move v2, v1

    goto :goto_11

    :cond_52
    move v2, v0

    :goto_11
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopComposition:Z

    :cond_53
    const/16 v2, 0x42

    .line 903
    aget v2, p2, v2

    if-ltz v2, :cond_55

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_55

    const/16 v2, 0x42

    .line 904
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_54

    move v2, v1

    goto :goto_12

    :cond_54
    move v2, v0

    :goto_12
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_windowContents:Z

    :cond_55
    const/16 v2, 0x43

    .line 906
    aget v2, p2, v2

    if-ltz v2, :cond_57

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_57

    const/16 v2, 0x43

    .line 907
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_56

    move v2, v1

    goto :goto_13

    :cond_56
    move v2, v0

    :goto_13
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_menuAnimation:Z

    :cond_57
    const/16 v2, 0x44

    .line 909
    aget v2, p2, v2

    if-ltz v2, :cond_59

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_59

    const/16 v2, 0x44

    .line 910
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_58

    move v2, v1

    goto :goto_14

    :cond_58
    move v2, v0

    :goto_14
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_visualStyles:Z

    :cond_59
    const/16 v2, 0x45

    .line 912
    aget v2, p2, v2

    if-ltz v2, :cond_5b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5b

    const/16 v2, 0x45

    .line 913
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5a

    move v2, v1

    goto :goto_15

    :cond_5a
    move v2, v0

    :goto_15
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_redirectSdCard:Z

    :cond_5b
    const/16 v2, 0x46

    .line 915
    aget v2, p2, v2

    if-ltz v2, :cond_5d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5d

    const/16 v2, 0x46

    .line 916
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5c

    move v2, v1

    goto :goto_16

    :cond_5c
    move v2, v0

    :goto_16
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_consoleMode:Z

    :cond_5d
    const/16 v2, 0x47

    .line 918
    aget v2, p2, v2

    if-ltz v2, :cond_5f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5f

    const/16 v2, 0x47

    .line 919
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5e

    move v2, v1

    goto :goto_17

    :cond_5e
    move v2, v0

    :goto_17
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableSound:Z

    :cond_5f
    const/16 v2, 0x48

    .line 921
    aget v2, p2, v2

    if-ltz v2, :cond_61

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_61

    const/16 v2, 0x48

    .line 922
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_60

    move v2, v1

    goto :goto_18

    :cond_60
    move v2, v0

    :goto_18
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableRecording:Z

    :cond_61
    const/16 v2, 0x49

    .line 924
    aget v2, p2, v2

    if-ltz v2, :cond_62

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_62

    const/16 v2, 0x49

    .line 925
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteSoundType:I

    :cond_62
    const/16 v2, 0x4a

    .line 927
    aget v2, p2, v2

    if-ltz v2, :cond_64

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_64

    const/16 v2, 0x4a

    .line 928
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_63

    move v2, v1

    goto :goto_19

    :cond_63
    move v2, v0

    :goto_19
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_viewOnly:Z

    :cond_64
    const/16 v2, 0x4b

    .line 930
    aget v2, p2, v2

    if-ltz v2, :cond_65

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_65

    const/16 v2, 0x4b

    .line 931
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_layoutMap:Ljava/lang/String;

    :cond_65
    const/16 v2, 0x4c

    .line 934
    aget v2, p2, v2

    if-ltz v2, :cond_66

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_66

    const/16 v2, 0x4c

    .line 935
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_filename:Ljava/lang/String;

    :cond_66
    const/16 v2, 0x4d

    .line 937
    aget v2, p2, v2

    if-ltz v2, :cond_67

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_67

    const/16 v2, 0x4d

    .line 938
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_x509KeySignature:Ljava/lang/String;

    :cond_67
    const/16 v2, 0x4e

    .line 940
    aget v2, p2, v2

    if-ltz v2, :cond_68

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_68

    const/16 v2, 0x4e

    .line 941
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_screenshotFilename:Ljava/lang/String;

    :cond_68
    const/16 v2, 0x4f

    .line 944
    aget v2, p2, v2

    if-ltz v2, :cond_6a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6a

    const/16 v2, 0x4f

    .line 945
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_69

    move v2, v1

    goto :goto_1a

    :cond_69
    move v2, v0

    :goto_1a
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfx:Z

    :cond_6a
    const/16 v2, 0x50

    .line 947
    aget v2, p2, v2

    if-ltz v2, :cond_6c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6c

    const/16 v2, 0x50

    .line 948
    aget p2, p2, v2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_6b

    move v0, v1

    :cond_6b
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfxH264:Z

    :cond_6c
    return-void
.end method

.method public Gen_tableName()Ljava/lang/String;
    .locals 1

    .line 347
    const-string v0, "CONNECTION_BEAN"

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_address:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoXCommand()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoXEnabled()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXEnabled:Z

    return v0
.end method

.method public getAutoXHeight()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXHeight:I

    return v0
.end method

.method public getAutoXRandFileNm()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXRandFileNm:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoXResType()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXResType:I

    return v0
.end method

.method public getAutoXSessionProg()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionProg:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoXSessionType()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionType:I

    return v0
.end method

.method public getAutoXType()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXType:I

    return v0
.end method

.method public getAutoXUnixAuth()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixAuth:Z

    return v0
.end method

.method public getAutoXUnixpw()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixpw:Z

    return v0
.end method

.method public getAutoXWidth()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXWidth:I

    return v0
.end method

.method public getCaCert()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCaCertPath()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCertPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCertSubject()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_certSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getColorModel()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_colorModel:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_connectionType:I

    return v0
.end method

.method public getConsoleMode()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_consoleMode:Z

    return v0
.end method

.method public getDesktopBackground()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopBackground:Z

    return v0
.end method

.method public getDesktopComposition()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopComposition:Z

    return v0
.end method

.method public getDoubleTapActionAsString()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableGfx()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfx:Z

    return v0
.end method

.method public getEnableGfxH264()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfxH264:Z

    return v0
.end method

.method public getEnableRecording()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableRecording:Z

    return v0
.end method

.method public getEnableSound()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableSound:Z

    return v0
.end method

.method public getExtraKeysToggleType()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_extraKeysToggleType:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowMouse()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followMouse:Z

    return v0
.end method

.method public getFollowPan()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followPan:Z

    return v0
.end method

.method public getFontSmoothing()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_fontSmoothing:Z

    return v0
.end method

.method public getForceFull()J
    .locals 2

    .line 428
    iget-wide v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_forceFull:J

    return-wide v0
.end method

.method public getInputMode()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_inputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepPassword()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepPassword:Z

    return v0
.end method

.method public getKeepSshPassword()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepSshPassword:Z

    return v0
.end method

.method public getLastMetaKeyId()J
    .locals 2

    .line 452
    iget-wide v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_LAST_META_KEY_ID:J

    return-wide v0
.end method

.method public getLayoutMap()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_layoutMap:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuAnimation()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_menuAnimation:Z

    return v0
.end method

.method public getMetaListId()J
    .locals 2

    .line 450
    iget-wide v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_metaListId:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_port:I

    return v0
.end method

.method public getPrefEncoding()I
    .locals 1

    .line 424
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_prefEncoding:I

    return v0
.end method

.method public getRdpColor()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpColor:I

    return v0
.end method

.method public getRdpDomain()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getRdpHeight()I
    .locals 1

    .line 470
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpHeight:I

    return v0
.end method

.method public getRdpResType()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpResType:I

    return v0
.end method

.method public getRdpWidth()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpWidth:I

    return v0
.end method

.method public getRedirectSdCard()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_redirectSdCard:Z

    return v0
.end method

.method public getRemoteFx()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteFx:Z

    return v0
.end method

.method public getRemoteSoundType()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteSoundType:I

    return v0
.end method

.method public getRepeaterId()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_repeaterId:Ljava/lang/String;

    return-object v0
.end method

.method public getRotateDpad()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rotateDpad:Z

    return v0
.end method

.method public getScaleModeAsString()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_SCALEMODE:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshotFilename()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_screenshotFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureConnectionType()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_secureConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowZoomButtons()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_showZoomButtons:Z

    return v0
.end method

.method public getSshHostKey()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshHostKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSshPassPhrase()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSshPassword()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSshPort()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPort:I

    return v0
.end method

.method public getSshPrivKey()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPrivKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSshPubKey()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSshRemoteCommand()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getSshRemoteCommandOS()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandOS:I

    return v0
.end method

.method public getSshRemoteCommandTimeout()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandTimeout:I

    return v0
.end method

.method public getSshRemoteCommandType()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandType:I

    return v0
.end method

.method public getSshServer()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshServer:Ljava/lang/String;

    return-object v0
.end method

.method public getSshUser()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshUser:Ljava/lang/String;

    return-object v0
.end method

.method public getTlsPort()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_tlsPort:I

    return v0
.end method

.method public getUseDpadAsArrows()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useDpadAsArrows:Z

    return v0
.end method

.method public getUseLocalCursor()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useLocalCursor:I

    return v0
.end method

.method public getUsePortrait()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_usePortrait:Z

    return v0
.end method

.method public getUseRepeater()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useRepeater:Z

    return v0
.end method

.method public getUseSshPubKey()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshPubKey:Z

    return v0
.end method

.method public getUseSshRemoteCommand()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshRemoteCommand:Z

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_userName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewOnly()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_viewOnly:Z

    return v0
.end method

.method public getVisualStyles()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_visualStyles:Z

    return v0
.end method

.method public getWindowContents()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_windowContents:Z

    return v0
.end method

.method public getX509KeySignature()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_x509KeySignature:Ljava/lang/String;

    return-object v0
.end method

.method public get_Id()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen__Id:J

    return-wide v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_address:Ljava/lang/String;

    return-void
.end method

.method public setAutoXCommand(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXCommand:Ljava/lang/String;

    return-void
.end method

.method public setAutoXEnabled(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXEnabled:Z

    return-void
.end method

.method public setAutoXHeight(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXHeight:I

    return-void
.end method

.method public setAutoXRandFileNm(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXRandFileNm:Ljava/lang/String;

    return-void
.end method

.method public setAutoXResType(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXResType:I

    return-void
.end method

.method public setAutoXSessionProg(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionProg:Ljava/lang/String;

    return-void
.end method

.method public setAutoXSessionType(I)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXSessionType:I

    return-void
.end method

.method public setAutoXType(I)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXType:I

    return-void
.end method

.method public setAutoXUnixAuth(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixAuth:Z

    return-void
.end method

.method public setAutoXUnixpw(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXUnixpw:Z

    return-void
.end method

.method public setAutoXWidth(I)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_autoXWidth:I

    return-void
.end method

.method public setCaCert(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCert:Ljava/lang/String;

    return-void
.end method

.method public setCaCertPath(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_caCertPath:Ljava/lang/String;

    return-void
.end method

.method public setCertSubject(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_certSubject:Ljava/lang/String;

    return-void
.end method

.method public setColorModel(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_colorModel:Ljava/lang/String;

    return-void
.end method

.method public setConnectionType(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_connectionType:I

    return-void
.end method

.method public setConsoleMode(Z)V
    .locals 0

    .line 491
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_consoleMode:Z

    return-void
.end method

.method public setDesktopBackground(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopBackground:Z

    return-void
.end method

.method public setDesktopComposition(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_desktopComposition:Z

    return-void
.end method

.method public setDoubleTapActionAsString(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_DOUBLE_TAP_ACTION:Ljava/lang/String;

    return-void
.end method

.method public setEnableGfx(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfx:Z

    return-void
.end method

.method public setEnableGfxH264(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableGfxH264:Z

    return-void
.end method

.method public setEnableRecording(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableRecording:Z

    return-void
.end method

.method public setEnableSound(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_enableSound:Z

    return-void
.end method

.method public setExtraKeysToggleType(I)V
    .locals 0

    .line 427
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_extraKeysToggleType:I

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_filename:Ljava/lang/String;

    return-void
.end method

.method public setFollowMouse(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followMouse:Z

    return-void
.end method

.method public setFollowPan(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_followPan:Z

    return-void
.end method

.method public setFontSmoothing(Z)V
    .locals 0

    .line 479
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_fontSmoothing:Z

    return-void
.end method

.method public setForceFull(J)V
    .locals 0

    .line 429
    iput-wide p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_forceFull:J

    return-void
.end method

.method public setInputMode(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_inputMode:Ljava/lang/String;

    return-void
.end method

.method public setKeepPassword(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepPassword:Z

    return-void
.end method

.method public setKeepSshPassword(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_keepSshPassword:Z

    return-void
.end method

.method public setLastMetaKeyId(J)V
    .locals 0

    .line 453
    iput-wide p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_LAST_META_KEY_ID:J

    return-void
.end method

.method public setLayoutMap(Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_layoutMap:Ljava/lang/String;

    return-void
.end method

.method public setMenuAnimation(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_menuAnimation:Z

    return-void
.end method

.method public setMetaListId(J)V
    .locals 0

    .line 451
    iput-wide p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_metaListId:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_nickname:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_port:I

    return-void
.end method

.method public setPrefEncoding(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_prefEncoding:I

    return-void
.end method

.method public setRdpColor(I)V
    .locals 0

    .line 473
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpColor:I

    return-void
.end method

.method public setRdpDomain(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpDomain:Ljava/lang/String;

    return-void
.end method

.method public setRdpHeight(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpHeight:I

    return-void
.end method

.method public setRdpResType(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpResType:I

    return-void
.end method

.method public setRdpWidth(I)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rdpWidth:I

    return-void
.end method

.method public setRedirectSdCard(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_redirectSdCard:Z

    return-void
.end method

.method public setRemoteFx(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteFx:Z

    return-void
.end method

.method public setRemoteSoundType(I)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_remoteSoundType:I

    return-void
.end method

.method public setRepeaterId(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_repeaterId:Ljava/lang/String;

    return-void
.end method

.method public setRotateDpad(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_rotateDpad:Z

    return-void
.end method

.method public setScaleModeAsString(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_SCALEMODE:Ljava/lang/String;

    return-void
.end method

.method public setScreenshotFilename(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_screenshotFilename:Ljava/lang/String;

    return-void
.end method

.method public setSecureConnectionType(Ljava/lang/String;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_secureConnectionType:Ljava/lang/String;

    return-void
.end method

.method public setShowZoomButtons(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_showZoomButtons:Z

    return-void
.end method

.method public setSshHostKey(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshHostKey:Ljava/lang/String;

    return-void
.end method

.method public setSshPassPhrase(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassPhrase:Ljava/lang/String;

    return-void
.end method

.method public setSshPassword(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPassword:Ljava/lang/String;

    return-void
.end method

.method public setSshPort(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPort:I

    return-void
.end method

.method public setSshPrivKey(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPrivKey:Ljava/lang/String;

    return-void
.end method

.method public setSshPubKey(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshPubKey:Ljava/lang/String;

    return-void
.end method

.method public setSshRemoteCommand(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommand:Ljava/lang/String;

    return-void
.end method

.method public setSshRemoteCommandOS(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandOS:I

    return-void
.end method

.method public setSshRemoteCommandTimeout(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandTimeout:I

    return-void
.end method

.method public setSshRemoteCommandType(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshRemoteCommandType:I

    return-void
.end method

.method public setSshServer(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshServer:Ljava/lang/String;

    return-void
.end method

.method public setSshUser(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_sshUser:Ljava/lang/String;

    return-void
.end method

.method public setTlsPort(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_tlsPort:I

    return-void
.end method

.method public setUseDpadAsArrows(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useDpadAsArrows:Z

    return-void
.end method

.method public setUseLocalCursor(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useLocalCursor:I

    return-void
.end method

.method public setUsePortrait(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_usePortrait:Z

    return-void
.end method

.method public setUseRepeater(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useRepeater:Z

    return-void
.end method

.method public setUseSshPubKey(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshPubKey:Z

    return-void
.end method

.method public setUseSshRemoteCommand(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_useSshRemoteCommand:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_userName:Ljava/lang/String;

    return-void
.end method

.method public setViewOnly(Z)V
    .locals 0

    .line 499
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_viewOnly:Z

    return-void
.end method

.method public setVisualStyles(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_visualStyles:Z

    return-void
.end method

.method public setWindowContents(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_windowContents:Z

    return-void
.end method

.method public setX509KeySignature(Ljava/lang/String;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen_x509KeySignature:Ljava/lang/String;

    return-void
.end method

.method public set_Id(J)V
    .locals 0

    .line 351
    iput-wide p1, p0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->gen__Id:J

    return-void
.end method
