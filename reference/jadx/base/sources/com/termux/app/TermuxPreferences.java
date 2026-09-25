package com.termux.app;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.TypedValue;
import android.widget.Toast;
import com.termux.terminal.EmulatorDebug;
import com.termux.terminal.TerminalSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
final class TermuxPreferences {
    static final int BELL_BEEP = 2;
    static final int BELL_IGNORE = 3;
    static final int BELL_VIBRATE = 1;
    private static final String CURRENT_SESSION_KEY = "current_session";
    private static final String FONTSIZE_KEY = "fontsize";
    private static final int MAX_FONTSIZE = 256;
    private static final String SCREEN_ALWAYS_ON_KEY = "screen_always_on";
    static final int SHORTCUT_ACTION_CREATE_SESSION = 1;
    static final int SHORTCUT_ACTION_NEXT_SESSION = 2;
    static final int SHORTCUT_ACTION_PREVIOUS_SESSION = 3;
    static final int SHORTCUT_ACTION_RENAME_SESSION = 4;
    private static final String SHOW_EXTRA_KEYS_KEY = "show_extra_keys";
    private final int MIN_FONTSIZE;
    private String home_path;
    boolean mBackIsEscape;
    boolean mDisableVolumeVirtualKeys;
    ExtraKeysInfos mExtraKeys;
    private int mFontSize;
    private boolean mScreenAlwaysOn;
    boolean mShowExtraKeys;
    private boolean mUseDarkUI;
    int mBellBehaviour = 1;
    final List<KeyboardShortcut> shortcuts = new ArrayList();

    @Retention(RetentionPolicy.SOURCE)
    @interface AsciiBellBehaviour {
    }

    static final class KeyboardShortcut {
        final int codePoint;
        final int shortcutAction;

        KeyboardShortcut(int i, int i2) {
            this.codePoint = i;
            this.shortcutAction = i2;
        }
    }

    static int clamp(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    TermuxPreferences(Context context) {
        this.home_path = context.getFilesDir().getAbsolutePath() + "/home";
        reloadFromProperties(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        float fApplyDimension = TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics());
        this.MIN_FONTSIZE = (int) (4.0f * fApplyDimension);
        this.mShowExtraKeys = defaultSharedPreferences.getBoolean(SHOW_EXTRA_KEYS_KEY, true);
        this.mScreenAlwaysOn = defaultSharedPreferences.getBoolean(SCREEN_ALWAYS_ON_KEY, false);
        int iRound = Math.round(fApplyDimension * 12.0f);
        iRound = iRound % 2 == 1 ? iRound - 1 : iRound;
        try {
            this.mFontSize = Integer.parseInt(defaultSharedPreferences.getString(FONTSIZE_KEY, Integer.toString(iRound)));
        } catch (ClassCastException | NumberFormatException unused) {
            this.mFontSize = iRound;
        }
        this.mFontSize = clamp(this.mFontSize, this.MIN_FONTSIZE, 256);
    }

    boolean toggleShowExtraKeys(Context context) {
        this.mShowExtraKeys = !this.mShowExtraKeys;
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(SHOW_EXTRA_KEYS_KEY, this.mShowExtraKeys).apply();
        return this.mShowExtraKeys;
    }

    int getFontSize() {
        return this.mFontSize;
    }

    void changeFontSize(Context context, boolean z) {
        int i = this.mFontSize + ((z ? 1 : -1) * 2);
        this.mFontSize = i;
        this.mFontSize = Math.max(this.MIN_FONTSIZE, Math.min(i, 256));
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(FONTSIZE_KEY, Integer.toString(this.mFontSize)).apply();
    }

    boolean isScreenAlwaysOn() {
        return this.mScreenAlwaysOn;
    }

    boolean isUsingBlackUI() {
        return this.mUseDarkUI;
    }

    void setScreenAlwaysOn(Context context, boolean z) {
        this.mScreenAlwaysOn = z;
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(SCREEN_ALWAYS_ON_KEY, z).apply();
    }

    static void storeCurrentSession(Context context, TerminalSession terminalSession) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(CURRENT_SESSION_KEY, terminalSession.mHandle).apply();
    }

    static TerminalSession getCurrentSession(TermuxActivity termuxActivity) {
        String string = PreferenceManager.getDefaultSharedPreferences(termuxActivity).getString(CURRENT_SESSION_KEY, "");
        int size = termuxActivity.mTermService.getSessions().size();
        for (int i = 0; i < size; i++) {
            TerminalSession terminalSession = termuxActivity.mTermService.getSessions().get(i);
            if (terminalSession.mHandle.equals(string)) {
                return terminalSession;
            }
        }
        return null;
    }

    void reloadFromProperties(Context context) {
        File file = new File(this.home_path + "/.termux/termux.properties");
        if (!file.exists()) {
            file = new File(this.home_path + "/.config/termux/termux.properties");
        }
        Properties properties = new Properties();
        try {
            if (file.isFile() && file.canRead()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    properties.load(new InputStreamReader(fileInputStream, StandardCharsets.UTF_8));
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (Exception e) {
            Toast.makeText(context, "Could not open properties file termux.properties: " + e.getMessage(), 1).show();
            Log.e(EmulatorDebug.LOG_TAG, "Error loading props", e);
        }
        String property = properties.getProperty("bell-character", "vibrate");
        property.hashCode();
        if (property.equals("ignore")) {
            this.mBellBehaviour = 3;
        } else if (property.equals("beep")) {
            this.mBellBehaviour = 2;
        } else {
            this.mBellBehaviour = 1;
        }
        String lowerCase = properties.getProperty("use-black-ui", "").toLowerCase();
        lowerCase.hashCode();
        if (lowerCase.equals("true")) {
            this.mUseDarkUI = true;
        } else {
            if (lowerCase.equals("false")) {
                this.mUseDarkUI = false;
            } else {
                this.mUseDarkUI = (context.getResources().getConfiguration().uiMode & 48) == 32;
            }
        }
        try {
            this.mExtraKeys = new ExtraKeysInfos(properties.getProperty("extra-keys", "[['ESC', '/', '-', 'HOME', 'UP', 'END', 'PGUP'], ['TAB', 'CTRL', 'ALT', 'LEFT', 'DOWN', 'RIGHT', 'PGDN']]"), properties.getProperty("extra-keys-style", "default"));
        } catch (JSONException e2) {
            Toast.makeText(context, "Could not load the extra-keys property from the config: " + e2.toString(), 1).show();
            Log.e(EmulatorDebug.LOG_TAG, "Error loading props", e2);
            try {
                this.mExtraKeys = new ExtraKeysInfos("[['ESC', '/', '-', 'HOME', 'UP', 'END', 'PGUP'], ['TAB', 'CTRL', 'ALT', 'LEFT', 'DOWN', 'RIGHT', 'PGDN']]", "default");
            } catch (JSONException e3) {
                e3.printStackTrace();
                Toast.makeText(context, "Can't create default extra keys", 1).show();
                this.mExtraKeys = null;
            }
        }
        this.mBackIsEscape = "escape".equals(properties.getProperty("back-key", "back"));
        this.mDisableVolumeVirtualKeys = "volume".equals(properties.getProperty("volume-keys", "virtual"));
        this.shortcuts.clear();
        parseAction("shortcut.create-session", 1, properties);
        parseAction("shortcut.next-session", 2, properties);
        parseAction("shortcut.previous-session", 3, properties);
        parseAction("shortcut.rename-session", 4, properties);
    }

    private void parseAction(String str, int i, Properties properties) {
        int codePoint;
        String property = properties.getProperty(str);
        if (property == null) {
            return;
        }
        String[] strArrSplit = property.toLowerCase().trim().split("\\+");
        String strTrim = strArrSplit.length == 2 ? strArrSplit[1].trim() : null;
        if (strArrSplit.length != 2 || !strArrSplit[0].trim().equals("ctrl") || strTrim.isEmpty() || strTrim.length() > 2) {
            Log.e(EmulatorDebug.LOG_TAG, "Keyboard shortcut '" + str + "' is not Ctrl+<something>");
            return;
        }
        char cCharAt = strTrim.charAt(0);
        if (Character.isLowSurrogate(cCharAt)) {
            if (strTrim.length() != 2 || Character.isHighSurrogate(strTrim.charAt(1))) {
                codePoint = cCharAt;
                codePoint = cCharAt;
                Log.e(EmulatorDebug.LOG_TAG, "Keyboard shortcut '" + str + "' is not Ctrl+<something>");
                return;
            }
            codePoint = cCharAt;
            codePoint = Character.toCodePoint(strTrim.charAt(1), cCharAt);
        }
        codePoint = cCharAt;
        this.shortcuts.add(new KeyboardShortcut(codePoint, i));
    }
}
