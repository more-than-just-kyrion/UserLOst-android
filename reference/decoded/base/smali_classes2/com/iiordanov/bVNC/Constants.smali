.class public Lcom/iiordanov/bVNC/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.iiordanov.aSPICE.USB_PERMISSION"

.field public static final ACTIVITY_GEN_KEY:I = 0x1

.field public static final AUTOX_GEOM_SELECT_CUSTOM:I = 0x1

.field public static final AUTOX_GEOM_SELECT_NATIVE:I = 0x0

.field public static final AUTOX_SELECT_DISABLED:I = 0x0

.field public static final AUTOX_SELECT_FIND:I = 0x4

.field public static final AUTOX_SELECT_SUDO_FIND:I = 0x5

.field public static final AUTOX_SELECT_XDUMMY:I = 0x3

.field public static final AUTOX_SELECT_XVFB:I = 0x1

.field public static final AUTOX_SELECT_XVNC:I = 0x2

.field public static final AUTOX_SESS_PROG_AUTO:Ljava/lang/String; = "/etc/X11/Xsession"

.field public static final AUTOX_SESS_PROG_GNOME:Ljava/lang/String; = "/usr/bin/gnome-session --session=gnome"

.field public static final AUTOX_SESS_PROG_GNOMECL:Ljava/lang/String; = "/usr/bin/gnome-session --session=gnome-classic"

.field public static final AUTOX_SESS_PROG_KDE:Ljava/lang/String; = "/usr/bin/startkde"

.field public static final AUTOX_SESS_PROG_MATE:Ljava/lang/String; = "/usr/bin/mate-session"

.field public static final AUTOX_SESS_PROG_SELECT_AUTO:I = 0x0

.field public static final AUTOX_SESS_PROG_SELECT_CUSTOM:I = 0x1

.field public static final AUTOX_SESS_PROG_SELECT_GNOME:I = 0x6

.field public static final AUTOX_SESS_PROG_SELECT_GNOMECL:I = 0x7

.field public static final AUTOX_SESS_PROG_SELECT_KDE:I = 0x2

.field public static final AUTOX_SESS_PROG_SELECT_MATE:I = 0x9

.field public static final AUTOX_SESS_PROG_SELECT_TRINITY:I = 0x8

.field public static final AUTOX_SESS_PROG_SELECT_UNITY:I = 0x3

.field public static final AUTOX_SESS_PROG_SELECT_UNITY2D:I = 0x4

.field public static final AUTOX_SESS_PROG_SELECT_XFCE:I = 0x5

.field public static final AUTOX_SESS_PROG_TRINITY:Ljava/lang/String; = "/usr/bin/starttde"

.field public static final AUTOX_SESS_PROG_UNITY:Ljava/lang/String; = "/usr/bin/gnome-session --session=ubuntu"

.field public static final AUTOX_SESS_PROG_UNITY2D:Ljava/lang/String; = "/usr/bin/gnome-session --session=ubuntu-2d"

.field public static final AUTOX_SESS_PROG_XFCE:Ljava/lang/String; = "/usr/bin/xfce4-session"

.field public static final AUTO_X_CREATE_PASSWDFILE:Ljava/lang/String; = "umask 0077 && cat > "

.field public static final AUTO_X_PASSWDFILE:Ljava/lang/String; = "-passwdfile rm:"

.field public static final AUTO_X_PWFILEBASENAME:Ljava/lang/String; = ".x11vnc_temp_pwd_"

.field public static final AUTO_X_SYNC:Ljava/lang/String; = " ; sync"

.field public static final AUTO_X_USERPW:Ljava/lang/String; = "-unixpw $USER \""

.field public static final BOTTOM_MARGIN:I = 0x12c

.field public static final COLORMODEL_16BIT:I = 0x6

.field public static final COLORMODEL_24BIT:I = 0x7

.field public static final COLORMODEL_256_COLORS:I = 0x5

.field public static final COLORMODEL_32BIT:I = 0x8

.field public static final COLORMODEL_64_COLORS:I = 0x4

.field public static final COLORMODEL_8_COLORS:I = 0x3

.field public static final COLORMODEL_BLACK_AND_WHITE:I = 0x1

.field public static final COLORMODEL_GREYSCALE:I = 0x2

.field public static final COMMAND_AUTO_X_CREATE_XDUMMY:I = 0x3

.field public static final COMMAND_AUTO_X_CREATE_XDUMMY_STRING:Ljava/lang/String; = "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost -xdummy "

.field public static final COMMAND_AUTO_X_CREATE_XVFB:I = 0x1

.field public static final COMMAND_AUTO_X_CREATE_XVFB_STRING:Ljava/lang/String; = "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost "

.field public static final COMMAND_AUTO_X_CREATE_XVNC:I = 0x2

.field public static final COMMAND_AUTO_X_CREATE_XVNC_STRING:Ljava/lang/String; = "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost -xvnc "

.field public static final COMMAND_AUTO_X_CUSTOM:I = 0x6

.field public static final COMMAND_AUTO_X_DISABLED:I = 0x0

.field public static final COMMAND_AUTO_X_FIND:I = 0x4

.field public static final COMMAND_AUTO_X_FIND_STRING:Ljava/lang/String; = "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -find   -localhost "

.field public static final COMMAND_AUTO_X_SUDO_FIND:I = 0x5

.field public static final COMMAND_AUTO_X_SUDO_FIND_STRING:Ljava/lang/String; = "sh -c \"PORT= sudo -S x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -find -localhost -env FD_XDM=1 "

.field public static final COMMAND_CUSTOM:I = 0x3e8

.field public static final COMMAND_DISABLED:I = 0x0

.field public static final COMMAND_LINUX_END:I = 0xc7

.field public static final COMMAND_LINUX_START:I = 0x64

.field public static final COMMAND_LINUX_STDVNC:I = 0x66

.field public static final COMMAND_LINUX_VINO:I = 0x67

.field public static final COMMAND_LINUX_X11VNC:I = 0x65

.field public static final COMMAND_MACOSX_END:I = 0x18f

.field public static final COMMAND_MACOSX_START:I = 0x12c

.field public static final COMMAND_MACOSX_STDVNC:I = 0x12d

.field public static final COMMAND_WINDOWS_END:I = 0x12b

.field public static final COMMAND_WINDOWS_REAL:I = 0xcc

.field public static final COMMAND_WINDOWS_START:I = 0xc8

.field public static final COMMAND_WINDOWS_TIGER:I = 0xcb

.field public static final COMMAND_WINDOWS_TIGHT:I = 0xc9

.field public static final COMMAND_WINDOWS_ULTRA:I = 0xca

.field public static final CONN_TYPE_ANONTLS:I = 0x3

.field public static final CONN_TYPE_PLAIN:I = 0x0

.field public static final CONN_TYPE_SSH:I = 0x1

.field public static final CONN_TYPE_STUNNEL:I = 0x5

.field public static final CONN_TYPE_ULTRAVNC:I = 0x2

.field public static final CONN_TYPE_VENCRYPT:I = 0x4

.field public static final CURSOR_AUTO:I = 0x0

.field public static final CURSOR_FORCE_DISABLE:I = 0x2

.field public static final CURSOR_FORCE_LOCAL:I = 0x1

.field public static final DEFAULT_LAYOUT_MAP:Ljava/lang/String; = "English (US)"

.field public static volatile DEFAULT_PROTOCOL_PORT:I = 0x170c

.field public static final DEFAULT_RDP_PORT:I = 0xd3d

.field public static final DEFAULT_SSH_PORT:I = 0x16

.field public static final DEFAULT_VNC_PORT:I = 0x170c

.field public static final EXTRA_KEYS_OFF:I = 0x0

.field public static final EXTRA_KEYS_ON:I = 0x1

.field public static final EXTRA_KEYS_TIMEOUT:I = 0x2

.field public static final H_THRESH:I = 0x32

.field public static final ID_HASH_MD5:I = 0x1

.field public static final ID_HASH_SHA1:I = 0x2

.field public static final ID_HASH_SHA256:I = 0x4

.field public static final LOGCAT_MAX_LINES:I = 0x1f4

.field public static final MV_DMRC_AWAY:Ljava/lang/String; = "[ -O ${HOME}/.dmrc ] && mv ${HOME}/.dmrc ${HOME}/.dmrc.$$ ; "

.field public static final MV_DMRC_BACK:Ljava/lang/String; = " ; [ -O ${HOME}/.dmrc.$$ ] && mv ${HOME}/.dmrc.$$ ${HOME}/.dmrc"

.field public static final PARAM_APIKEY:Ljava/lang/String; = "ApiKey"

.field public static final PARAM_CACERT_PATH:Ljava/lang/String; = "CaCertPath"

.field public static final PARAM_CERT_SUBJECT:Ljava/lang/String; = "CertSubject"

.field public static final PARAM_COLORMODEL:Ljava/lang/String; = "ColorModel"

.field public static final PARAM_CONN_NAME:Ljava/lang/String; = "ConnectionName"

.field public static final PARAM_EXTRAKEYS_TOGGLE:Ljava/lang/String; = "ExtraKeysToggle"

.field public static final PARAM_ID_HASH:Ljava/lang/String; = "IdHash"

.field public static final PARAM_ID_HASH_ALG:Ljava/lang/String; = "IdHashAlgorithm"

.field public static final PARAM_KEYBOARD_LAYOUT:Ljava/lang/String; = "KeyboardLayout"

.field public static final PARAM_RDP_PWD:Ljava/lang/String; = "RdpPassword"

.field public static final PARAM_RDP_USER:Ljava/lang/String; = "RdpUsername"

.field public static final PARAM_SAVE_CONN:Ljava/lang/String; = "SaveConnection"

.field public static final PARAM_SCALE_MODE:Ljava/lang/String; = "ScaleMode"

.field public static final PARAM_SECTYPE:Ljava/lang/String; = "SecurityType"

.field public static final PARAM_SPICE_PWD:Ljava/lang/String; = "SpicePassword"

.field public static final PARAM_SPICE_USER:Ljava/lang/String; = "SpiceUsername"

.field public static final PARAM_SSH_HOST:Ljava/lang/String; = "SshHost"

.field public static final PARAM_SSH_PORT:Ljava/lang/String; = "SshPort"

.field public static final PARAM_SSH_PWD:Ljava/lang/String; = "SshPassword"

.field public static final PARAM_SSH_USER:Ljava/lang/String; = "SshUsername"

.field public static final PARAM_TLS_PORT:Ljava/lang/String; = "TlsPort"

.field public static final PARAM_VIEW_ONLY:Ljava/lang/String; = "ViewOnly"

.field public static final PARAM_VNC_PWD:Ljava/lang/String; = "VncPassword"

.field public static final PARAM_VNC_USER:Ljava/lang/String; = "VncUsername"

.field public static final RDP_GEOM_SELECT_CUSTOM:I = 0x2

.field public static final RDP_GEOM_SELECT_NATIVE_LANDSCAPE:I = 0x0

.field public static final RDP_GEOM_SELECT_NATIVE_PORTRAIT:I = 0x1

.field public static final REMOTE_SOUND_DISABLED:I = 0x2

.field public static final REMOTE_SOUND_ON_DEVICE:I = 0x0

.field public static final REMOTE_SOUND_ON_SERVER:I = 0x1

.field public static final SDK_INT:I

.field public static final SECTYPE_INTEGRATED_SSH:I = 0x18

.field public static final SECTYPE_NONE:I = 0x1

.field public static final SECTYPE_TLS:I = 0x12

.field public static final SECTYPE_TUNNEL:I = 0x17

.field public static final SECTYPE_ULTRA:I = 0x11

.field public static final SECTYPE_VENCRYPT:I = 0x13

.field public static final SECTYPE_VNC:I = 0x2

.field public static final SHORT_VIBRATION:I = 0x1

.field public static final SOCKET_CONN_TIMEOUT:I = 0x7530

.field public static final TOP_MARGIN:I = 0x6e

.field public static final VNC_GEOM_SELECT_AUTOMATIC:I = 0x1

.field public static final VNC_GEOM_SELECT_CUSTOM:I = 0x4

.field public static final VNC_GEOM_SELECT_DISABLED:I = 0x0

.field public static final VNC_GEOM_SELECT_NATIVE_LANDSCAPE:I = 0x2

.field public static final VNC_GEOM_SELECT_NATIVE_PORTRAIT:I = 0x3

.field public static final W_THRESH:I = 0x32

.field public static final defaultInputMethodTag:Ljava/lang/String; = "defaultInputMethod"

.field public static final disableImmersiveTag:Ljava/lang/String; = "disableImmersive"

.field public static final forceLandscapeTag:Ljava/lang/String; = "forceLandscape"

.field public static final generalSettingsTag:Ljava/lang/String; = "generalSettings"

.field public static final keepScreenOnTag:Ljava/lang/String; = "keepScreenOn"

.field public static final keyLength:I = 0x100

.field public static final leftHandedModeTag:Ljava/lang/String; = "leftHandedModeTag"

.field public static final masterPasswordEnabledTag:Ljava/lang/String; = "masterPasswordEnabled"

.field public static final numIterations:I = 0x2710

.field public static final passwordKey:Ljava/lang/String; = "MasterPassword"

.field public static final permissionsRequested:Ljava/lang/String; = "permissionsRequested"

.field public static final positionToolbarLastUsed:Ljava/lang/String; = "positionToolbarLastUsed"

.field public static final rAltAsIsoL3ShiftTag:Ljava/lang/String; = "rAltAsIsoL3Shift"

.field public static final saltLength:I = 0x100

.field public static final testpassword:Ljava/lang/String; = "password"

.field public static final usbDevicePermissionTimeout:I = 0x3a98

.field public static final usbDeviceTimeout:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 271
    const-string p0, ""

    return-object p0

    .line 269
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sh -c \"PORT= sudo -S x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -find -localhost -env FD_XDM=1 "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -find   -localhost "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost -xdummy "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost -xvnc "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sh -c \"PORT= x11vnc -norc -nopw -wait_ui 2 -defer 15 -wait 15 -ncache 0 -timeout 10 -create -localhost "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSessionProgString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 245
    const-string p0, ""

    return-object p0

    .line 243
    :pswitch_0
    const-string p0, "/usr/bin/mate-session"

    return-object p0

    .line 241
    :pswitch_1
    const-string p0, "/usr/bin/starttde"

    return-object p0

    .line 239
    :pswitch_2
    const-string p0, "/usr/bin/gnome-session --session=gnome-classic"

    return-object p0

    .line 237
    :pswitch_3
    const-string p0, "/usr/bin/gnome-session --session=gnome"

    return-object p0

    .line 235
    :pswitch_4
    const-string p0, "/usr/bin/xfce4-session"

    return-object p0

    .line 233
    :pswitch_5
    const-string p0, "/usr/bin/gnome-session --session=ubuntu-2d"

    return-object p0

    .line 231
    :pswitch_6
    const-string p0, "/usr/bin/gnome-session --session=ubuntu"

    return-object p0

    .line 229
    :pswitch_7
    const-string p0, "/usr/bin/startkde"

    return-object p0

    .line 227
    :cond_0
    const-string p0, "/etc/X11/Xsession"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
