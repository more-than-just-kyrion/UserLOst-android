package tech.ula.library.utils.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppsPreferences.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0014\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Ltech/ula/library/utils/preferences/AppsPreferences;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "getDistributionsList", "", "", "setDistributionsList", "", "distributionList", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsPreferences {
    private final SharedPreferences prefs;

    public AppsPreferences(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefs = context.getSharedPreferences("apps", 0);
    }

    public final void setDistributionsList(Set<String> distributionList) {
        Intrinsics.checkNotNullParameter(distributionList, "distributionList");
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putStringSet("distributionsList", distributionList);
        editorEdit.apply();
    }

    public final Set<String> getDistributionsList() {
        Set<String> stringSet = this.prefs.getStringSet("distributionsList", SetsKt.emptySet());
        return stringSet == null ? SetsKt.emptySet() : stringSet;
    }
}
