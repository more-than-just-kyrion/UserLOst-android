package com.freerdp.freerdpcore.presentation;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.utils.AppCompatPreferenceActivity;
import java.io.File;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationSettingsActivity extends AppCompatPreferenceActivity {
    private static boolean isXLargeTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 4;
    }

    @Override // com.freerdp.freerdpcore.utils.AppCompatPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setupActionBar();
    }

    private void setupActionBar() {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override // android.preference.PreferenceActivity
    public boolean onIsMultiPane() {
        return isXLargeTablet(this);
    }

    @Override // android.preference.PreferenceActivity
    public void onBuildHeaders(List<PreferenceActivity.Header> list) {
        loadHeadersFromResource(R.xml.settings_app_headers, list);
    }

    @Override // android.preference.PreferenceActivity
    protected boolean isValidFragment(String str) {
        return PreferenceFragment.class.getName().equals(str) || ClientPreferenceFragment.class.getName().equals(str) || UiPreferenceFragment.class.getName().equals(str) || PowerPreferenceFragment.class.getName().equals(str) || SecurityPreferenceFragment.class.getName().equals(str);
    }

    public static class ClientPreferenceFragment extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.settings_app_client);
            ApplicationSettingsActivity.get(getActivity()).registerOnSharedPreferenceChangeListener(this);
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (isAdded()) {
                String string = getString(R.string.preference_key_client_name);
                ApplicationSettingsActivity.get(getActivity());
                if (str.equals(string)) {
                    ((EditTextPreference) findPreference(string)).setText(sharedPreferences.getString(string, ""));
                }
            }
        }
    }

    public static class UiPreferenceFragment extends PreferenceFragment {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.settings_app_ui);
        }
    }

    public static class PowerPreferenceFragment extends PreferenceFragment {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.settings_app_power);
        }
    }

    public static class SecurityPreferenceFragment extends PreferenceFragment {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.settings_app_security);
        }

        @Override // android.preference.PreferenceFragment
        public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
            if (preference.getKey().equals(getString(R.string.preference_key_security_clear_certificate_cache))) {
                showDialog();
                return true;
            }
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }

        private void showDialog() {
            new AlertDialog.Builder(getActivity()).setTitle(R.string.dlg_title_clear_cert_cache).setMessage(R.string.dlg_msg_clear_cert_cache).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.ApplicationSettingsActivity.SecurityPreferenceFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    SecurityPreferenceFragment.this.clearCertificateCache();
                    dialogInterface.dismiss();
                }
            }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.ApplicationSettingsActivity.SecurityPreferenceFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).setIcon(android.R.drawable.ic_delete).show();
        }

        private boolean deleteDirectory(File file) {
            if (file.isDirectory()) {
                for (String str : file.list()) {
                    if (!deleteDirectory(new File(file, str))) {
                        return false;
                    }
                }
            }
            return file.delete();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCertificateCache() {
            Activity activity = getActivity();
            if (new File(activity.getFilesDir() + "/.freerdp").exists()) {
                if (deleteDirectory(new File(activity.getFilesDir() + "/.freerdp"))) {
                    Toast.makeText(activity, R.string.info_reset_success, 1).show();
                    return;
                } else {
                    Toast.makeText(activity, R.string.info_reset_failed, 1).show();
                    return;
                }
            }
            Toast.makeText(activity, R.string.info_reset_success, 1).show();
        }
    }

    public static SharedPreferences get(Context context) {
        Context applicationContext = context.getApplicationContext();
        PreferenceManager.setDefaultValues(applicationContext, R.xml.settings_app_client, false);
        PreferenceManager.setDefaultValues(applicationContext, R.xml.settings_app_power, false);
        PreferenceManager.setDefaultValues(applicationContext, R.xml.settings_app_security, false);
        PreferenceManager.setDefaultValues(applicationContext, R.xml.settings_app_ui, false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext);
        String string = context.getString(R.string.preference_key_client_name);
        if (defaultSharedPreferences.getString(string, "").isEmpty()) {
            defaultSharedPreferences.edit().putString(string, (context.getString(R.string.preference_default_client_name) + "-" + UUID.randomUUID().toString()).substring(0, 31)).apply();
        }
        return defaultSharedPreferences;
    }

    public static int getDisconnectTimeout(Context context) {
        return get(context).getInt(context.getString(R.string.preference_key_power_disconnect_timeout), 0);
    }

    public static boolean getHideStatusBar(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_hide_status_bar), false);
    }

    public static boolean getHideActionBar(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_hide_action_bar), false);
    }

    public static boolean getAcceptAllCertificates(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_accept_certificates), false);
    }

    public static boolean getHideZoomControls(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_hide_zoom_controls), false);
    }

    public static boolean getSwapMouseButtons(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_swap_mouse_buttons), false);
    }

    public static boolean getInvertScrolling(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_invert_scrolling), false);
    }

    public static boolean getAskOnExit(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_ask_on_exit), false);
    }

    public static boolean getAutoScrollTouchPointer(Context context) {
        return get(context).getBoolean(context.getString(R.string.preference_key_ui_auto_scroll_touchpointer), false);
    }

    public static String getClientName(Context context) {
        return get(context).getString(context.getString(R.string.preference_key_client_name), "");
    }
}
