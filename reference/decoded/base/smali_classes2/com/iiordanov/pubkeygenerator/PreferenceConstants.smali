.class public Lcom/iiordanov/pubkeygenerator/PreferenceConstants;
.super Ljava/lang/Object;
.source "PreferenceConstants.java"


# static fields
.field public static final BACKGROUND_FILE_TRANSFER:Ljava/lang/String; = "background_file_transfer"

.field public static final BACKUP_PREF_KEY:Ljava/lang/String; = "prefs"

.field public static final BELL:Ljava/lang/String; = "bell"

.field public static final BELL_NOTIFICATION:Ljava/lang/String; = "bellNotification"

.field public static final BELL_VIBRATE:Ljava/lang/String; = "bellVibrate"

.field public static final BELL_VOLUME:Ljava/lang/String; = "bellVolume"

.field public static final BUMPY_ARROWS:Ljava/lang/String; = "bumpyarrows"

.field public static final CAMERA:Ljava/lang/String; = "camera"

.field public static final CAMERA_CTRLA:Ljava/lang/String; = "Ctrl+A"

.field public static final CAMERA_CTRLA_SPACE:Ljava/lang/String; = "Ctrl+A then Space"

.field public static final CAMERA_ESC:Ljava/lang/String; = "Esc"

.field public static final CAMERA_ESC_A:Ljava/lang/String; = "Esc+A"

.field public static final CAMERA_SCREEN_CAPTURE:Ljava/lang/String; = "Screen Capture"

.field public static final CATEGORY_UI:Ljava/lang/String; = "category_ui"

.field public static final CONNECTION_PERSIST:Ljava/lang/String; = "connPersist"

.field public static final CTRL_STRING:Ljava/lang/String; = "ctrl_string"

.field public static final CUSTOM_KEYMAP:Ljava/lang/String; = "list_custom_keymap"

.field public static final CUSTOM_KEYMAP_DISABLED:Ljava/lang/String; = "none"

.field public static final CUSTOM_KEYMAP_SE_XPPRO:Ljava/lang/String; = "se_xppro"

.field public static final CUSTOM_KEYMAP_SGH_I927:Ljava/lang/String; = "sgh_i927"

.field public static final DEBUG_KEYCODES:Ljava/lang/String; = "debug_keycodes"

.field public static final DEFAULT_BELL_VOLUME:F = 0.25f

.field public static final DEFAULT_FONT_SIZE:Ljava/lang/String; = "default_font_size"

.field public static final DEFAULT_FONT_SIZE_HEIGHT:Ljava/lang/String; = "default_fsize_height"

.field public static final DEFAULT_FONT_SIZE_WIDTH:Ljava/lang/String; = "default_fsize_width"

.field public static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download_folder"

.field public static final EMULATION:Ljava/lang/String; = "emulation"

.field public static final EULA:Ljava/lang/String; = "eula"

.field public static final EXTENDED_LONGPRESS:Ljava/lang/String; = "extended_longpress"

.field public static final FILE_DIALOG:Ljava/lang/String; = "file_dialog"

.field public static final FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final HIDE_ACTIONBAR:Ljava/lang/String; = "hide_actionbar"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "keepalive"

.field public static final KEYMODE:Ljava/lang/String; = "keymode"

.field public static final KEYMODE_LEFT:Ljava/lang/String; = "Use left-side keys"

.field public static final KEYMODE_RIGHT:Ljava/lang/String; = "Use right-side keys"

.field public static final LAST_CHECKED:Ljava/lang/String; = "lastchecked"

.field public static final MEMKEYS:Ljava/lang/String; = "memkeys"

.field public static final PICKER_KEEP_OPEN:Ljava/lang/String; = "picker_keep_open"

.field public static final PICKER_STRING:Ljava/lang/String; = "picker_string"

.field public static final PRE_ECLAIR:Z

.field public static final PRE_FROYO:Z

.field public static final PRE_HONEYCOMB:Z

.field public static final REMOTE_UPLOAD_FOLDER:Ljava/lang/String; = "remote_upload_folder"

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final ROTATION_AUTOMATIC:Ljava/lang/String; = "Automatic"

.field public static final ROTATION_DEFAULT:Ljava/lang/String; = "Default"

.field public static final ROTATION_LANDSCAPE:Ljava/lang/String; = "Force landscape"

.field public static final ROTATION_PORTRAIT:Ljava/lang/String; = "Force portrait"

.field public static final SCREEN_CAPTURE_FOLDER:Ljava/lang/String; = "screen_capture_folder"

.field public static final SCREEN_CAPTURE_POPUP:Ljava/lang/String; = "screen_capture_popup"

.field public static final SCROLLBACK:Ljava/lang/String; = "scrollback"

.field public static final SDK_INT:I

.field public static final SORT_BY_COLOR:Ljava/lang/String; = "sortByColor"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final UPDATE_DAILY:Ljava/lang/String; = "Daily"

.field public static final UPDATE_NEVER:Ljava/lang/String; = "Never"

.field public static final UPDATE_WEEKLY:Ljava/lang/String; = "Weekly"

.field public static final UPLOAD_DESTINATION_PROMPT:Ljava/lang/String; = "upload_dest_prompt"

.field public static final WIFI_LOCK:Ljava/lang/String; = "wifilock"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iiordanov/pubkeygenerator/PreferenceConstants;->SDK_INT:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 28
    :goto_0
    sput-boolean v1, Lcom/iiordanov/pubkeygenerator/PreferenceConstants;->PRE_ECLAIR:Z

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 29
    :goto_1
    sput-boolean v1, Lcom/iiordanov/pubkeygenerator/PreferenceConstants;->PRE_FROYO:Z

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 30
    :goto_2
    sput-boolean v2, Lcom/iiordanov/pubkeygenerator/PreferenceConstants;->PRE_HONEYCOMB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
