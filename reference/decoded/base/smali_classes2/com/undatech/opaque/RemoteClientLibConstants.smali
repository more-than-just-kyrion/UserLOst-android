.class public Lcom/undatech/opaque/RemoteClientLibConstants;
.super Ljava/lang/Object;
.source "RemoteClientLibConstants.java"


# static fields
.field public static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.undatech.opaque.USB_PERMISSION"

.field public static final ADVANCED_SETTINGS:I = 0x1

.field public static final DEFAULT_LAYOUT_MAP:Ljava/lang/String; = "English (US)"

.field public static final DEFAULT_SETTINGS:I = 0x2

.field public static final DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "defaultSettings"

.field public static final DIALOG_DISPLAY_VMS:I = 0x2c

.field public static final DIALOG_RDP_CERT:I = 0x3

.field public static final DIALOG_SSH_CERT:I = 0x2

.field public static final DIALOG_STUNNEL_CERT:I = 0x6

.field public static final DIALOG_X509_CERT:I = 0x1

.field public static final DISCONNECT_NO_MESSAGE:I = 0x11

.field public static final DISCONNECT_WITH_MESSAGE:I = 0x12

.field public static final EXTRA_KEYS_OFF:I = 0x0

.field public static final EXTRA_KEYS_ON:I = 0x1

.field public static final EXTRA_KEYS_TIMEOUT:I = 0x2

.field public static final GET_OTP_CODE:I = 0x2a

.field public static final GET_OTP_CODE_ID:Ljava/lang/String; = "getOtpCode"

.field public static final GET_PASSWORD:I = 0xa

.field public static final GET_PASSWORD_ID:Ljava/lang/String; = "getPassword"

.field public static final GET_RDP_CREDENTIALS:I = 0x13

.field public static final GET_SPICE_PASSWORD:I = 0x14

.field public static final GET_SSH_CREDENTIALS:I = 0xc

.field public static final GET_SSH_PASSPHRASE:I = 0xd

.field public static final GET_VERIFICATIONCODE:I = 0xb

.field public static final GET_VNC_CREDENTIALS:I = 0xe

.field public static final GET_VNC_PASSWORD:I = 0xf

.field public static final LAUNCH_VNC_VIEWER:I = 0x17

.field public static final LOGCAT_MAX_LINES:I = 0x1f4

.field public static final NO_VM_FOUND_FOR_USER:I = 0x1c

.field public static final OVIRT_AUTH_FAILURE:I = 0x19

.field public static final OVIRT_SSL_HANDSHAKE_FAILURE:I = 0x1a

.field public static final OVIRT_TIMEOUT:I = 0x1e

.field public static final PRO_FEATURE:I = 0x63

.field public static final PVE_API_IO_ERROR:I = 0x26

.field public static final PVE_API_UNEXPECTED_CODE:I = 0x25

.field public static final PVE_DEFAULT_NODE:Ljava/lang/String; = "pve"

.field public static final PVE_DEFAULT_REALM:Ljava/lang/String; = "pam"

.field public static final PVE_DEFAULT_VIRTUALIZATION:Ljava/lang/String; = "qemu"

.field public static final PVE_FAILED_TO_AUTHENTICATE:I = 0x21

.field public static final PVE_FAILED_TO_CONNECT:I = 0x22

.field public static final PVE_FAILED_TO_PARSE_JSON:I = 0x23

.field public static final PVE_NULL_DATA:I = 0x28

.field public static final PVE_TIMEOUT_COMMUNICATING:I = 0x27

.field public static final PVE_VMID_NOT_NUMERIC:I = 0x24

.field public static final RDP_AUTH_FAILED:I = 0x9

.field public static final RDP_CONNECT_FAILURE:I = 0x7

.field public static final RDP_UNABLE_TO_CONNECT:I = 0x8

.field public static final REINIT_SESSION:I = 0x10

.field public static final REPORT_TOOLBAR_POSITION:I = 0x15

.field public static final SDK_INT:I

.field public static final SERVER_CUT_TEXT:I = 0x2b

.field public static final SHOW_TOAST:I = 0x2f

.field public static final SPICE_CONNECT_FAILURE:I = 0x5

.field public static final SPICE_CONNECT_FAILURE_IF_MAINTAINING_CONNECTION:I = 0x2e

.field public static final SPICE_CONNECT_SUCCESS:I = 0x4

.field public static final SPICE_TLS_ERROR:I = 0x2d

.field public static final URL_BUFFER_SIZE:I = 0xbb8

.field public static final VM_LAUNCHED:I = 0x18

.field public static final VM_LOOKUP_FAILED:I = 0x1b

.field public static final VV_DOWNLOAD_TIMEOUT:I = 0x29

.field public static final VV_FILE_ERROR:I = 0x1d

.field public static final VV_GET_FILE_TIMEOUT:I = 0x4268

.field public static final VV_OVER_HTTPS_FAILURE:I = 0x20

.field public static final VV_OVER_HTTP_FAILURE:I = 0x1f

.field public static final usbDevicePermissionTimeout:I = 0x3a98

.field public static final usbDeviceTimeout:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/undatech/opaque/RemoteClientLibConstants;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
