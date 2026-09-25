package com.iiordanov.pubkeygenerator;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class PreferenceConstants {
    public static final String BACKGROUND_FILE_TRANSFER = "background_file_transfer";
    public static final String BACKUP_PREF_KEY = "prefs";
    public static final String BELL = "bell";
    public static final String BELL_NOTIFICATION = "bellNotification";
    public static final String BELL_VIBRATE = "bellVibrate";
    public static final String BELL_VOLUME = "bellVolume";
    public static final String BUMPY_ARROWS = "bumpyarrows";
    public static final String CAMERA = "camera";
    public static final String CAMERA_CTRLA = "Ctrl+A";
    public static final String CAMERA_CTRLA_SPACE = "Ctrl+A then Space";
    public static final String CAMERA_ESC = "Esc";
    public static final String CAMERA_ESC_A = "Esc+A";
    public static final String CAMERA_SCREEN_CAPTURE = "Screen Capture";
    public static final String CATEGORY_UI = "category_ui";
    public static final String CONNECTION_PERSIST = "connPersist";
    public static final String CTRL_STRING = "ctrl_string";
    public static final String CUSTOM_KEYMAP = "list_custom_keymap";
    public static final String CUSTOM_KEYMAP_DISABLED = "none";
    public static final String CUSTOM_KEYMAP_SE_XPPRO = "se_xppro";
    public static final String CUSTOM_KEYMAP_SGH_I927 = "sgh_i927";
    public static final String DEBUG_KEYCODES = "debug_keycodes";
    public static final float DEFAULT_BELL_VOLUME = 0.25f;
    public static final String DEFAULT_FONT_SIZE = "default_font_size";
    public static final String DEFAULT_FONT_SIZE_HEIGHT = "default_fsize_height";
    public static final String DEFAULT_FONT_SIZE_WIDTH = "default_fsize_width";
    public static final String DOWNLOAD_FOLDER = "download_folder";
    public static final String EMULATION = "emulation";
    public static final String EULA = "eula";
    public static final String EXTENDED_LONGPRESS = "extended_longpress";
    public static final String FILE_DIALOG = "file_dialog";
    public static final String FULLSCREEN = "fullscreen";
    public static final String HIDE_ACTIONBAR = "hide_actionbar";
    public static final String KEEP_ALIVE = "keepalive";
    public static final String KEYMODE = "keymode";
    public static final String KEYMODE_LEFT = "Use left-side keys";
    public static final String KEYMODE_RIGHT = "Use right-side keys";
    public static final String LAST_CHECKED = "lastchecked";
    public static final String MEMKEYS = "memkeys";
    public static final String PICKER_KEEP_OPEN = "picker_keep_open";
    public static final String PICKER_STRING = "picker_string";
    public static final boolean PRE_ECLAIR;
    public static final boolean PRE_FROYO;
    public static final boolean PRE_HONEYCOMB;
    public static final String REMOTE_UPLOAD_FOLDER = "remote_upload_folder";
    public static final String ROTATION = "rotation";
    public static final String ROTATION_AUTOMATIC = "Automatic";
    public static final String ROTATION_DEFAULT = "Default";
    public static final String ROTATION_LANDSCAPE = "Force landscape";
    public static final String ROTATION_PORTRAIT = "Force portrait";
    public static final String SCREEN_CAPTURE_FOLDER = "screen_capture_folder";
    public static final String SCREEN_CAPTURE_POPUP = "screen_capture_popup";
    public static final String SCROLLBACK = "scrollback";
    public static final int SDK_INT;
    public static final String SORT_BY_COLOR = "sortByColor";
    public static final String UPDATE = "update";
    public static final String UPDATE_DAILY = "Daily";
    public static final String UPDATE_NEVER = "Never";
    public static final String UPDATE_WEEKLY = "Weekly";
    public static final String UPLOAD_DESTINATION_PROMPT = "upload_dest_prompt";
    public static final String WIFI_LOCK = "wifilock";

    static {
        int i = Integer.parseInt(Build.VERSION.SDK);
        SDK_INT = i;
        PRE_ECLAIR = i < 5;
        PRE_FROYO = i < 8;
        PRE_HONEYCOMB = i < 11;
    }
}
