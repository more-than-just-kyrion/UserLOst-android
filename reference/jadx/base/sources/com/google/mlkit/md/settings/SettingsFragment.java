package com.google.mlkit.md.settings;

import android.hardware.Camera;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import com.google.mlkit.md.Utils;
import com.google.mlkit.md.camera.CameraSizePair;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\n"}, d2 = {"Lcom/google/mlkit/md/settings/SettingsFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "()V", "onCreatePreferences", "", "bundle", "Landroid/os/Bundle;", "rootKey", "", "setUpRearCameraPreviewSizePreference", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SettingsFragment extends PreferenceFragmentCompat {
    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle bundle, String rootKey) {
        setPreferencesFromResource(R.xml.barcode_preferences, rootKey);
        setUpRearCameraPreviewSizePreference();
    }

    private final void setUpRearCameraPreviewSizePreference() {
        Preference preferenceFindPreference = findPreference(getString(R.string.pref_key_rear_camera_preview_size));
        Intrinsics.checkNotNull(preferenceFindPreference);
        final ListPreference listPreference = (ListPreference) preferenceFindPreference;
        Camera cameraOpen = null;
        try {
            try {
                cameraOpen = Camera.open(0);
                Utils utils = Utils.INSTANCE;
                Intrinsics.checkNotNull(cameraOpen);
                List<CameraSizePair> listGenerateValidPreviewSizeList = utils.generateValidPreviewSizeList(cameraOpen);
                String[] strArr = new String[listGenerateValidPreviewSizeList.size()];
                final HashMap map = new HashMap();
                int size = listGenerateValidPreviewSizeList.size();
                for (int i = 0; i < size; i++) {
                    CameraSizePair cameraSizePair = listGenerateValidPreviewSizeList.get(i);
                    strArr[i] = cameraSizePair.getPreview().toString();
                    if (cameraSizePair.getPicture() != null) {
                        String string = cameraSizePair.getPreview().toString();
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        String string2 = cameraSizePair.getPicture().toString();
                        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                        map.put(string, string2);
                    }
                }
                listPreference.setEntries(strArr);
                listPreference.setEntryValues(strArr);
                listPreference.setSummary(listPreference.getEntry());
                listPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.google.mlkit.md.settings.SettingsFragment$$ExternalSyntheticLambda0
                    @Override // androidx.preference.Preference.OnPreferenceChangeListener
                    public final boolean onPreferenceChange(Preference preference, Object obj) {
                        return SettingsFragment.setUpRearCameraPreviewSizePreference$lambda$0(this.f$0, listPreference, map, preference, obj);
                    }
                });
            } catch (Exception unused) {
                PreferenceGroup parent = listPreference.getParent();
                if (parent != null) {
                    parent.removePreference(listPreference);
                }
                if (cameraOpen == null) {
                    return;
                }
            }
            cameraOpen.release();
        } catch (Throwable th) {
            if (cameraOpen != null) {
                cameraOpen.release();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setUpRearCameraPreviewSizePreference$lambda$0(SettingsFragment this$0, ListPreference previewSizePreference, HashMap previewToPictureSizeStringMap, Preference preference, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(previewSizePreference, "$previewSizePreference");
        Intrinsics.checkNotNullParameter(previewToPictureSizeStringMap, "$previewToPictureSizeStringMap");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        FragmentActivity activity = this$0.getActivity();
        if (activity == null) {
            return false;
        }
        previewSizePreference.setSummary(str);
        PreferenceUtils.INSTANCE.saveStringPreference(activity, R.string.pref_key_rear_camera_picture_size, (String) previewToPictureSizeStringMap.get(str));
        return true;
    }
}
