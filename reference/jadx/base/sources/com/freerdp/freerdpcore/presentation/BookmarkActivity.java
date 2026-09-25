package com.freerdp.freerdpcore.presentation;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import com.freerdp.freerdpcore.services.LibFreeRDP;
import com.freerdp.freerdpcore.services.ManualBookmarkGateway;
import com.freerdp.freerdpcore.utils.RDPFileParser;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class BookmarkActivity extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final String PARAM_CONNECTION_REFERENCE = "conRef";
    private static final int PREFERENCES_ADVANCED = 5;
    private static final int PREFERENCES_BOOKMARK = 1;
    private static final int PREFERENCES_CREDENTIALS = 2;
    private static final int PREFERENCES_DEBUG = 9;
    private static final int PREFERENCES_GATEWAY = 8;
    private static final int PREFERENCES_PERFORMANCE = 4;
    private static final int PREFERENCES_PERFORMANCE3G = 7;
    private static final int PREFERENCES_SCREEN = 3;
    private static final int PREFERENCES_SCREEN3G = 6;
    private static final String TAG = "BookmarkActivity";
    private static BookmarkBase bookmark = null;
    private static boolean new_bookmark = false;
    private static boolean settings_changed = false;
    private int current_preferences;

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PreferenceManager preferenceManager = getPreferenceManager();
        preferenceManager.setSharedPreferencesName("TEMP");
        preferenceManager.setSharedPreferencesMode(0);
        if (bookmark == null) {
            Bundle extras = getIntent().getExtras();
            if (extras != null && extras.containsKey("conRef")) {
                String string = extras.getString("conRef");
                if (ConnectionReference.isManualBookmarkReference(string)) {
                    bookmark = GlobalApp.getManualBookmarkGateway().findById(ConnectionReference.getManualBookmarkId(string));
                    new_bookmark = false;
                } else if (ConnectionReference.isHostnameReference(string)) {
                    ManualBookmark manualBookmark = new ManualBookmark();
                    bookmark = manualBookmark;
                    ((ManualBookmark) manualBookmark.get()).setLabel(ConnectionReference.getHostname(string));
                    ((ManualBookmark) bookmark.get()).setHostname(ConnectionReference.getHostname(string));
                    new_bookmark = true;
                } else if (ConnectionReference.isFileReference(string)) {
                    String file = ConnectionReference.getFile(string);
                    ManualBookmark manualBookmark2 = new ManualBookmark();
                    bookmark = manualBookmark2;
                    manualBookmark2.setLabel(file);
                    try {
                        updateBookmarkFromFile((ManualBookmark) bookmark, new RDPFileParser(file));
                        bookmark.setLabel(new File(file).getName());
                        new_bookmark = true;
                    } catch (IOException e) {
                        Log.e(TAG, "Failed reading RDP file", e);
                    }
                }
            }
            if (bookmark == null) {
                bookmark = new ManualBookmark();
            }
            if (this.current_preferences == 5 && bookmark.getType() != 1) {
                PreferenceScreen preferenceScreen = getPreferenceScreen();
                preferenceScreen.removePreference(findPreference("bookmark.enable_gateway"));
                preferenceScreen.removePreference(findPreference("bookmark.gateway"));
            }
            updateH264Preferences();
            bookmark.writeToSharedPreferences(preferenceManager.getSharedPreferences());
            settings_changed = false;
        }
        if (getIntent() == null || getIntent().getData() == null) {
            addPreferencesFromResource(R.xml.bookmark_settings);
            this.current_preferences = 1;
        } else if (getIntent().getData().toString().equals("preferences://screen_settings")) {
            addPreferencesFromResource(R.xml.screen_settings);
            this.current_preferences = 3;
        } else if (getIntent().getData().toString().equals("preferences://performance_flags")) {
            addPreferencesFromResource(R.xml.performance_flags);
            this.current_preferences = 4;
        } else if (getIntent().getData().toString().equals("preferences://screen_settings_3g")) {
            addPreferencesFromResource(R.xml.screen_settings_3g);
            this.current_preferences = 6;
        } else if (getIntent().getData().toString().equals("preferences://performance_flags_3g")) {
            addPreferencesFromResource(R.xml.performance_flags_3g);
            this.current_preferences = 7;
        } else if (getIntent().getData().toString().equals("preferences://advanced_settings")) {
            addPreferencesFromResource(R.xml.advanced_settings);
            this.current_preferences = 5;
        } else if (getIntent().getData().toString().equals("preferences://credentials_settings")) {
            addPreferencesFromResource(R.xml.credentials_settings);
            this.current_preferences = 2;
        } else if (getIntent().getData().toString().equals("preferences://gateway_settings")) {
            addPreferencesFromResource(R.xml.gateway_settings);
            this.current_preferences = 8;
        } else if (getIntent().getData().toString().equals("preferences://debug_settings")) {
            addPreferencesFromResource(R.xml.debug_settings);
            this.current_preferences = 9;
        } else {
            addPreferencesFromResource(R.xml.bookmark_settings);
            this.current_preferences = 1;
        }
        initSettings(preferenceManager.getSharedPreferences());
        preferenceManager.getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        setIntentComponentNames();
        updateH264Preferences();
    }

    private void updateH264Preferences() {
        if (LibFreeRDP.hasH264Support()) {
            return;
        }
        int[] iArr = {R.string.preference_key_h264, R.string.preference_key_h264_3g};
        PreferenceManager preferenceManager = getPreferenceManager();
        for (int i = 0; i < 2; i++) {
            Preference preferenceFindPreference = preferenceManager.findPreference(getString(iArr[i]));
            if (preferenceFindPreference != null) {
                preferenceFindPreference.setEnabled(false);
            }
        }
    }

    private void updateBookmarkFromFile(ManualBookmark manualBookmark, RDPFileParser rDPFileParser) {
        String string = rDPFileParser.getString("full address");
        if (string != null) {
            if (string.lastIndexOf(":") > string.lastIndexOf("]")) {
                try {
                    manualBookmark.setPort(Integer.parseInt(string.substring(string.lastIndexOf(":") + 1)));
                } catch (NumberFormatException unused) {
                    Log.e(TAG, "Malformed address");
                }
                string = string.substring(0, string.lastIndexOf(":"));
            }
            if (string.startsWith("[") && string.endsWith("]")) {
                string = string.substring(1, string.length() - 1);
            }
            manualBookmark.setHostname(string);
        }
        Integer integer = rDPFileParser.getInteger("server port");
        if (integer != null) {
            manualBookmark.setPort(integer.intValue());
        }
        String string2 = rDPFileParser.getString("username");
        if (string2 != null) {
            manualBookmark.setUsername(string2);
        }
        String string3 = rDPFileParser.getString("domain");
        if (string3 != null) {
            manualBookmark.setDomain(string3);
        }
        Integer integer2 = rDPFileParser.getInteger("connect to console");
        if (integer2 != null) {
            manualBookmark.getAdvancedSettings().setConsoleMode(integer2.intValue() == 1);
        }
    }

    private void setIntentComponentNames() {
        ComponentName componentName = new ComponentName(getPackageName(), BookmarkActivity.class.getName());
        ArrayList arrayList = new ArrayList();
        arrayList.add("bookmark.credentials");
        arrayList.add("bookmark.screen");
        arrayList.add("bookmark.performance");
        arrayList.add("bookmark.advanced");
        arrayList.add("bookmark.screen_3g");
        arrayList.add("bookmark.performance_3g");
        arrayList.add("bookmark.gateway_settings");
        arrayList.add("bookmark.debug");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Preference preferenceFindPreference = findPreference((String) it.next());
            if (preferenceFindPreference != null) {
                preferenceFindPreference.getIntent().setComponent(componentName);
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        settings_changed = true;
        int i = this.current_preferences;
        if (i == 1) {
            bookmarkSettingsChanged(sharedPreferences, str);
            return;
        }
        if (i == 2) {
            credentialsSettingsChanged(sharedPreferences, str);
            return;
        }
        if (i != 3) {
            if (i == 5) {
                advancedSettingsChanged(sharedPreferences, str);
                return;
            }
            if (i != 6) {
                if (i == 8) {
                    gatewaySettingsChanged(sharedPreferences, str);
                    return;
                } else {
                    if (i != 9) {
                        return;
                    }
                    debugSettingsChanged(sharedPreferences, str);
                    return;
                }
            }
        }
        screenSettingsChanged(sharedPreferences, str);
    }

    private void initSettings(SharedPreferences sharedPreferences) {
        int i = this.current_preferences;
        if (i == 1) {
            initBookmarkSettings(sharedPreferences);
            return;
        }
        if (i == 2) {
            initCredentialsSettings(sharedPreferences);
            return;
        }
        if (i == 3) {
            initScreenSettings(sharedPreferences);
            return;
        }
        if (i == 5) {
            initAdvancedSettings(sharedPreferences);
            return;
        }
        if (i == 6) {
            initScreenSettings3G(sharedPreferences);
        } else if (i == 8) {
            initGatewaySettings(sharedPreferences);
        } else {
            if (i != 9) {
                return;
            }
            initDebugSettings(sharedPreferences);
        }
    }

    private void initBookmarkSettings(SharedPreferences sharedPreferences) {
        bookmarkSettingsChanged(sharedPreferences, "bookmark.label");
        bookmarkSettingsChanged(sharedPreferences, "bookmark.hostname");
        bookmarkSettingsChanged(sharedPreferences, "bookmark.port");
        bookmarkSettingsChanged(sharedPreferences, "bookmark.username");
        bookmarkSettingsChanged(sharedPreferences, "bookmark.resolution");
    }

    private void bookmarkSettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("bookmark.label") && findPreference(str) != null) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
            return;
        }
        if (str.equals("bookmark.hostname") && findPreference(str) != null) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
            return;
        }
        if (str.equals("bookmark.port") && findPreference(str) != null) {
            findPreference(str).setSummary(String.valueOf(sharedPreferences.getInt(str, -1)));
            return;
        }
        if (str.equals("bookmark.username")) {
            String string = sharedPreferences.getString(str, "<none>");
            findPreference("bookmark.credentials").setSummary(string.length() != 0 ? string : "<none>");
            return;
        }
        if (str.equals("bookmark.resolution") || str.equals("bookmark.colors") || str.equals("bookmark.width") || str.equals("bookmark.height")) {
            String string2 = sharedPreferences.getString("bookmark.resolution", "800x600");
            if (string2.equals("automatic")) {
                string2 = getResources().getString(R.string.resolution_automatic);
            }
            if (string2.equals("custom")) {
                string2 = getResources().getString(R.string.resolution_custom);
            }
            if (string2.equals("fitscreen")) {
                string2 = getResources().getString(R.string.resolution_fit);
            }
            findPreference("bookmark.screen").setSummary(string2 + "@" + sharedPreferences.getInt("bookmark.colors", 16));
        }
    }

    private void initAdvancedSettings(SharedPreferences sharedPreferences) {
        advancedSettingsChanged(sharedPreferences, "bookmark.enable_gateway_settings");
        advancedSettingsChanged(sharedPreferences, "bookmark.enable_3g_settings");
        advancedSettingsChanged(sharedPreferences, "bookmark.security");
        advancedSettingsChanged(sharedPreferences, "bookmark.resolution_3g");
        advancedSettingsChanged(sharedPreferences, "bookmark.remote_program");
        advancedSettingsChanged(sharedPreferences, "bookmark.work_dir");
    }

    private void advancedSettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("bookmark.enable_gateway_settings")) {
            findPreference("bookmark.gateway_settings").setEnabled(sharedPreferences.getBoolean(str, false));
            return;
        }
        if (str.equals("bookmark.enable_3g_settings")) {
            boolean z = sharedPreferences.getBoolean(str, false);
            findPreference("bookmark.screen_3g").setEnabled(z);
            findPreference("bookmark.performance_3g").setEnabled(z);
            return;
        }
        if (str.equals("bookmark.security")) {
            ListPreference listPreference = (ListPreference) findPreference(str);
            listPreference.setSummary(listPreference.getEntries()[sharedPreferences.getInt(str, 0)]);
            return;
        }
        if (str.equals("bookmark.resolution_3g") || str.equals("bookmark.colors_3g") || str.equals("bookmark.width_3g") || str.equals("bookmark.height_3g")) {
            String string = sharedPreferences.getString("bookmark.resolution_3g", "800x600");
            if (string.equals("automatic")) {
                string = getResources().getString(R.string.resolution_automatic);
            } else if (string.equals("custom")) {
                string = getResources().getString(R.string.resolution_custom);
            }
            findPreference("bookmark.screen_3g").setSummary(string + "@" + sharedPreferences.getInt("bookmark.colors_3g", 16));
            return;
        }
        if (str.equals("bookmark.remote_program")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
        } else if (str.equals("bookmark.work_dir")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
        }
    }

    private void initCredentialsSettings(SharedPreferences sharedPreferences) {
        credentialsSettingsChanged(sharedPreferences, "bookmark.username");
        credentialsSettingsChanged(sharedPreferences, "bookmark.password");
        credentialsSettingsChanged(sharedPreferences, "bookmark.domain");
    }

    private void credentialsSettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("bookmark.username")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
            return;
        }
        if (str.equals("bookmark.password")) {
            if (sharedPreferences.getString(str, "").length() == 0) {
                findPreference(str).setSummary(getResources().getString(R.string.settings_password_empty));
                return;
            } else {
                findPreference(str).setSummary(getResources().getString(R.string.settings_password_present));
                return;
            }
        }
        if (str.equals("bookmark.domain")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
        }
    }

    private void initScreenSettings(SharedPreferences sharedPreferences) {
        screenSettingsChanged(sharedPreferences, "bookmark.colors");
        screenSettingsChanged(sharedPreferences, "bookmark.resolution");
        screenSettingsChanged(sharedPreferences, "bookmark.width");
        screenSettingsChanged(sharedPreferences, "bookmark.height");
    }

    private void initScreenSettings3G(SharedPreferences sharedPreferences) {
        screenSettingsChanged(sharedPreferences, "bookmark.colors_3g");
        screenSettingsChanged(sharedPreferences, "bookmark.resolution_3g");
        screenSettingsChanged(sharedPreferences, "bookmark.width_3g");
        screenSettingsChanged(sharedPreferences, "bookmark.height_3g");
    }

    private void screenSettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (findPreference(str) == null) {
            return;
        }
        if (str.equals("bookmark.colors") || str.equals("bookmark.colors_3g")) {
            ListPreference listPreference = (ListPreference) findPreference(str);
            listPreference.setSummary(listPreference.getEntry());
            return;
        }
        if (str.equals("bookmark.resolution") || str.equals("bookmark.resolution_3g")) {
            ListPreference listPreference2 = (ListPreference) findPreference(str);
            listPreference2.setSummary(listPreference2.getEntry());
            boolean zEqualsIgnoreCase = listPreference2.getValue().equalsIgnoreCase("custom");
            if (str.equals("bookmark.resolution")) {
                findPreference("bookmark.width").setEnabled(zEqualsIgnoreCase);
                findPreference("bookmark.height").setEnabled(zEqualsIgnoreCase);
                return;
            } else {
                findPreference("bookmark.width_3g").setEnabled(zEqualsIgnoreCase);
                findPreference("bookmark.height_3g").setEnabled(zEqualsIgnoreCase);
                return;
            }
        }
        if (str.equals("bookmark.width") || str.equals("bookmark.width_3g")) {
            findPreference(str).setSummary(String.valueOf(sharedPreferences.getInt(str, 800)));
        } else if (str.equals("bookmark.height") || str.equals("bookmark.height_3g")) {
            findPreference(str).setSummary(String.valueOf(sharedPreferences.getInt(str, 600)));
        }
    }

    private void initDebugSettings(SharedPreferences sharedPreferences) {
        debugSettingsChanged(sharedPreferences, "bookmark.debug_level");
        debugSettingsChanged(sharedPreferences, "bookmark.async_channel");
        debugSettingsChanged(sharedPreferences, "bookmark.async_update");
        debugSettingsChanged(sharedPreferences, "bookmark.async_input");
    }

    private void initGatewaySettings(SharedPreferences sharedPreferences) {
        gatewaySettingsChanged(sharedPreferences, "bookmark.gateway_hostname");
        gatewaySettingsChanged(sharedPreferences, "bookmark.gateway_port");
        gatewaySettingsChanged(sharedPreferences, "bookmark.gateway_username");
        gatewaySettingsChanged(sharedPreferences, "bookmark.gateway_password");
        gatewaySettingsChanged(sharedPreferences, "bookmark.gateway_domain");
    }

    private void debugSettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("bookmark.debug_level")) {
            findPreference("bookmark.debug_level").setDefaultValue(sharedPreferences.getString(str, "INFO"));
            return;
        }
        if (str.equals("bookmark.async_channel")) {
            findPreference("bookmark.async_channel").setDefaultValue(Boolean.valueOf(sharedPreferences.getBoolean(str, false)));
        } else if (str.equals("bookmark.async_update")) {
            findPreference("bookmark.async_update").setDefaultValue(Boolean.valueOf(sharedPreferences.getBoolean(str, false)));
        } else if (str.equals("bookmark.async_input")) {
            findPreference("bookmark.async_input").setDefaultValue(Boolean.valueOf(sharedPreferences.getBoolean(str, false)));
        }
    }

    private void gatewaySettingsChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("bookmark.gateway_hostname")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
            return;
        }
        if (str.equals("bookmark.gateway_port")) {
            findPreference(str).setSummary(String.valueOf(sharedPreferences.getInt(str, 443)));
            return;
        }
        if (str.equals("bookmark.gateway_username")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
            return;
        }
        if (str.equals("bookmark.gateway_password")) {
            if (sharedPreferences.getString(str, "").length() == 0) {
                findPreference(str).setSummary(getResources().getString(R.string.settings_password_empty));
                return;
            } else {
                findPreference(str).setSummary(getResources().getString(R.string.settings_password_present));
                return;
            }
        }
        if (str.equals("bookmark.gateway_domain")) {
            findPreference(str).setSummary(sharedPreferences.getString(str, ""));
        }
    }

    private boolean verifySettings(SharedPreferences sharedPreferences) {
        boolean z = sharedPreferences.getString("bookmark.label", "").length() == 0;
        if (!z && sharedPreferences.getString("bookmark.hostname", "").length() == 0) {
            z = true;
        }
        if (!z && sharedPreferences.getInt("bookmark.port", -1) <= 0) {
            z = true;
        }
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAndResetBookmark() {
        bookmark = null;
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        finish();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        if (this.current_preferences != 1) {
            super.onBackPressed();
            getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        } else if (!verifySettings(getPreferenceManager().getSharedPreferences())) {
            new AlertDialog.Builder(this).setTitle(R.string.error_bookmark_incomplete_title).setMessage(R.string.error_bookmark_incomplete).setPositiveButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.BookmarkActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BookmarkActivity.this.finishAndResetBookmark();
                }
            }).setNegativeButton(R.string.cont, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.BookmarkActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            }).show();
        } else if (new_bookmark || settings_changed) {
            new AlertDialog.Builder(this).setTitle(R.string.dlg_title_save_bookmark).setMessage(R.string.dlg_save_bookmark).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.BookmarkActivity.4
                static final /* synthetic */ boolean $assertionsDisabled = false;

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BookmarkActivity.bookmark.readFromSharedPreferences(BookmarkActivity.this.getPreferenceManager().getSharedPreferences());
                    if (BookmarkActivity.bookmark.getType() == 1) {
                        ManualBookmarkGateway manualBookmarkGateway = GlobalApp.getManualBookmarkGateway();
                        GlobalApp.getQuickConnectHistoryGateway().removeHistoryItem(((ManualBookmark) BookmarkActivity.bookmark.get()).getHostname());
                        if (BookmarkActivity.bookmark.getId() > 0) {
                            manualBookmarkGateway.update(BookmarkActivity.bookmark);
                        } else {
                            manualBookmarkGateway.insert(BookmarkActivity.bookmark);
                        }
                        BookmarkActivity.this.finishAndResetBookmark();
                    }
                }
            }).setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.BookmarkActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BookmarkActivity.this.finishAndResetBookmark();
                }
            }).show();
        } else {
            finishAndResetBookmark();
        }
    }
}
