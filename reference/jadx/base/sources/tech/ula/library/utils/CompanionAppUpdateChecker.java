package tech.ula.library.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: CompanionAppUpdateChecker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\"\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Ltech/ula/library/utils/CompanionAppUpdateChecker;", "", "()V", "CHECK_INTERVAL_MS", "", "PREFS_NAME", "", "TAG", "httpClient", "Lokhttp3/OkHttpClient;", "installedVersion", "Ltech/ula/library/utils/CompanionAppUpdateChecker$SemVer;", "context", "Landroid/content/Context;", "packageName", "isUpdateRequired", "", "versionManifestUrl", "latestVersion", ImagesContract.URL, "SemVer", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompanionAppUpdateChecker {
    private static final String PREFS_NAME = "companion_app_updates";
    private static final String TAG = "CompanionAppUpdateChecker";
    public static final CompanionAppUpdateChecker INSTANCE = new CompanionAppUpdateChecker();
    private static final long CHECK_INTERVAL_MS = TimeUnit.DAYS.toMillis(1);
    private static final OkHttpClient httpClient = new OkHttpClient.Builder().connectTimeout(5, TimeUnit.SECONDS).readTimeout(5, TimeUnit.SECONDS).build();

    private CompanionAppUpdateChecker() {
    }

    /* JADX INFO: compiled from: CompanionAppUpdateChecker.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Ltech/ula/library/utils/CompanionAppUpdateChecker$SemVer;", "", "major", "", "minor", "(II)V", "getMajor", "()I", "getMinor", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class SemVer {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int major;
        private final int minor;

        public static /* synthetic */ SemVer copy$default(SemVer semVer, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = semVer.major;
            }
            if ((i3 & 2) != 0) {
                i2 = semVer.minor;
            }
            return semVer.copy(i, i2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getMajor() {
            return this.major;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getMinor() {
            return this.minor;
        }

        public final SemVer copy(int major, int minor) {
            return new SemVer(major, minor);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SemVer)) {
                return false;
            }
            SemVer semVer = (SemVer) other;
            return this.major == semVer.major && this.minor == semVer.minor;
        }

        public int hashCode() {
            return (Integer.hashCode(this.major) * 31) + Integer.hashCode(this.minor);
        }

        public String toString() {
            return "SemVer(major=" + this.major + ", minor=" + this.minor + ")";
        }

        /* JADX INFO: compiled from: CompanionAppUpdateChecker.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/utils/CompanionAppUpdateChecker$SemVer$Companion;", "", "()V", "parse", "Ltech/ula/library/utils/CompanionAppUpdateChecker$SemVer;", "raw", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final SemVer parse(String raw) {
                Integer intOrNull;
                Intrinsics.checkNotNullParameter(raw, "raw");
                List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.trim((CharSequence) raw).toString(), new String[]{"."}, false, 0, 6, (Object) null);
                if (listSplit$default.size() >= 2 && (intOrNull = StringsKt.toIntOrNull((String) listSplit$default.get(0))) != null) {
                    int iIntValue = intOrNull.intValue();
                    Integer intOrNull2 = StringsKt.toIntOrNull((String) listSplit$default.get(1));
                    if (intOrNull2 != null) {
                        return new SemVer(iIntValue, intOrNull2.intValue());
                    }
                }
                return null;
            }
        }

        public SemVer(int i, int i2) {
            this.major = i;
            this.minor = i2;
        }

        public final int getMajor() {
            return this.major;
        }

        public final int getMinor() {
            return this.minor;
        }
    }

    public final boolean isUpdateRequired(Context context, String packageName, String versionManifestUrl) {
        SemVer semVerLatestVersion;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(versionManifestUrl, "versionManifestUrl");
        SemVer semVerInstalledVersion = installedVersion(context, packageName);
        return (semVerInstalledVersion == null || (semVerLatestVersion = latestVersion(context, packageName, versionManifestUrl)) == null || semVerLatestVersion.getMajor() <= semVerInstalledVersion.getMajor()) ? false : true;
    }

    private final SemVer installedVersion(Context context, String packageName) {
        SemVer semVer;
        try {
            String str = context.getPackageManager().getPackageInfo(packageName, 0).versionName;
            return (str == null || (semVer = SemVer.INSTANCE.parse(str)) == null) ? new SemVer(0, 0) : semVer;
        } catch (Exception unused) {
            return null;
        }
    }

    private final SemVer latestVersion(Context context, String packageName, String url) {
        SemVer semVer;
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS_NAME, 0);
        String str = "cachedVersion:" + packageName;
        String str2 = "cachedVersionTime:" + packageName;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - sharedPreferences.getLong(str2, 0L);
        if (0 <= j && j < CHECK_INTERVAL_MS) {
            String string = sharedPreferences.getString(str, null);
            if (string != null) {
                return SemVer.INSTANCE.parse(string);
            }
            return null;
        }
        try {
            Response responseExecute = httpClient.newCall(new Request.Builder().url(url).build()).execute();
            try {
                Response response = responseExecute;
                ResponseBody responseBodyBody = response.body();
                if (response.isSuccessful() && responseBodyBody != null) {
                    String string2 = StringsKt.trim((CharSequence) responseBodyBody.string()).toString();
                    sharedPreferences.edit().putString(str, string2).putLong(str2, jCurrentTimeMillis).apply();
                    SemVer semVer2 = SemVer.INSTANCE.parse(string2);
                    CloseableKt.closeFinally(responseExecute, null);
                    return semVer2;
                }
                Log.w(TAG, "latestVersion: HTTP " + response.code() + " for " + url);
                String string3 = sharedPreferences.getString(str, null);
                if (string3 != null) {
                    SemVer.Companion companion = SemVer.INSTANCE;
                    Intrinsics.checkNotNull(string3);
                    semVer = companion.parse(string3);
                } else {
                    semVer = null;
                }
                CloseableKt.closeFinally(responseExecute, null);
                return semVer;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(responseExecute, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "latestVersion: failed to fetch " + url + ": " + e.getMessage());
            String string4 = sharedPreferences.getString(str, null);
            return string4 != null ? SemVer.INSTANCE.parse(string4) : null;
        }
    }
}
