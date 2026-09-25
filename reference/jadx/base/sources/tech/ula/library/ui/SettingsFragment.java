package tech.ula.library.ui;

import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.utils.ProotDebugLogger;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Ltech/ula/library/ui/SettingsFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "()V", "prootDebugLogger", "Ltech/ula/library/utils/ProotDebugLogger;", "getProotDebugLogger", "()Ltech/ula/library/utils/ProotDebugLogger;", "prootDebugLogger$delegate", "Lkotlin/Lazy;", "hidePrefs", "", "onCreatePreferences", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "setDivider", "divider", "Landroid/graphics/drawable/Drawable;", "setDividerHeight", "height", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SettingsFragment extends PreferenceFragmentCompat {

    /* JADX INFO: renamed from: prootDebugLogger$delegate, reason: from kotlin metadata */
    private final Lazy prootDebugLogger = LazyKt.lazy(new Function0<ProotDebugLogger>() { // from class: tech.ula.library.ui.SettingsFragment$prootDebugLogger$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ProotDebugLogger invoke() {
            FragmentActivity activity = this.this$0.getActivity();
            Intrinsics.checkNotNull(activity);
            FragmentActivity fragmentActivity = activity;
            FragmentActivity activity2 = this.this$0.getActivity();
            Intrinsics.checkNotNull(activity2);
            String nativeLibraryDir = activity2.getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            UlaFiles ulaFiles = new UlaFiles(fragmentActivity, nativeLibraryDir, null, 4, null);
            FragmentActivity activity3 = this.this$0.getActivity();
            Intrinsics.checkNotNull(activity3);
            FragmentActivity fragmentActivity2 = activity3;
            SharedPreferences sharedPreferences = fragmentActivity2.getSharedPreferences(fragmentActivity2.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return new ProotDebugLogger(sharedPreferences, ulaFiles);
        }
    });

    private final void hidePrefs() {
    }

    private final ProotDebugLogger getProotDebugLogger() {
        return (ProotDebugLogger) this.prootDebugLogger.getValue();
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(R.xml.preferences);
        Preference preferenceFindPreference = findPreference("pref_proot_delete_debug_file");
        Intrinsics.checkNotNull(preferenceFindPreference);
        preferenceFindPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: tech.ula.library.ui.SettingsFragment$$ExternalSyntheticLambda0
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                return SettingsFragment.onCreatePreferences$lambda$0(this.f$0, preference);
            }
        });
        Preference preferenceFindPreference2 = findPreference("pref_clear_auto_start");
        Intrinsics.checkNotNull(preferenceFindPreference2);
        preferenceFindPreference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: tech.ula.library.ui.SettingsFragment$$ExternalSyntheticLambda1
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                return SettingsFragment.onCreatePreferences$lambda$2(this.f$0, preference);
            }
        });
        Preference preferenceFindPreference3 = findPreference("pref_clear_connect_type");
        Intrinsics.checkNotNull(preferenceFindPreference3);
        preferenceFindPreference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: tech.ula.library.ui.SettingsFragment$$ExternalSyntheticLambda2
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                return SettingsFragment.onCreatePreferences$lambda$4(this.f$0, preference);
            }
        });
        Preference preferenceFindPreference4 = findPreference("pref_clear_display_preferences");
        Intrinsics.checkNotNull(preferenceFindPreference4);
        preferenceFindPreference4.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: tech.ula.library.ui.SettingsFragment$$ExternalSyntheticLambda3
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                return SettingsFragment.onCreatePreferences$lambda$6(this.f$0, preference);
            }
        });
        Preference preferenceFindPreference5 = findPreference("pref_hide_sessions_filesystems");
        Intrinsics.checkNotNull(preferenceFindPreference5);
        ((CheckBoxPreference) preferenceFindPreference5).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: tech.ula.library.ui.SettingsFragment$$ExternalSyntheticLambda4
            @Override // androidx.preference.Preference.OnPreferenceChangeListener
            public final boolean onPreferenceChange(Preference preference, Object obj) {
                return SettingsFragment.onCreatePreferences$lambda$7(this.f$0, preference, obj);
            }
        });
        hidePrefs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$0(SettingsFragment this$0, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getProotDebugLogger().deleteLogs();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$2(SettingsFragment this$0, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity);
        SharedPreferences.Editor editorEdit = activity.getSharedPreferences("apps", 0).edit();
        editorEdit.remove("AutoApp");
        editorEdit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$4(SettingsFragment this$0, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity);
        SharedPreferences.Editor editorEdit = activity.getSharedPreferences("apps", 0).edit();
        editorEdit.putBoolean("askConnectType", true);
        editorEdit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$6(SettingsFragment this$0, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity);
        SharedPreferences.Editor editorEdit = activity.getSharedPreferences("apps", 0).edit();
        editorEdit.putBoolean("askDisplayPreferences", true);
        editorEdit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$7(SettingsFragment this$0, Preference preference, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!(obj instanceof Boolean)) {
            return true;
        }
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity);
        BottomNavigationView bottomNavigationView = (BottomNavigationView) activity.findViewById(R.id.bottom_nav_view);
        if (((Boolean) obj).booleanValue()) {
            bottomNavigationView.setVisibility(8);
            return true;
        }
        bottomNavigationView.setVisibility(0);
        return true;
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void setDivider(Drawable divider) {
        super.setDivider(new ColorDrawable(0));
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void setDividerHeight(int height) {
        super.setDividerHeight(0);
    }
}
