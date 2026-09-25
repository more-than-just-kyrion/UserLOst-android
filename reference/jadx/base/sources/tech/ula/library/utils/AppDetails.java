package tech.ula.library.utils;

import android.content.res.Resources;
import android.net.Uri;
import java.io.File;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: AppDetails.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0003J\b\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/ula/library/utils/AppDetails;", "", "applicationFilesDir", "", "resources", "Landroid/content/res/Resources;", "(Ljava/lang/String;Landroid/content/res/Resources;)V", "findAppDescription", "appName", "findIconUri", "Landroid/net/Uri;", "getDefaultIconUri", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppDetails {
    private final String applicationFilesDir;
    private final Resources resources;

    public AppDetails(String applicationFilesDir, Resources resources) {
        Intrinsics.checkNotNullParameter(applicationFilesDir, "applicationFilesDir");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.applicationFilesDir = applicationFilesDir;
        this.resources = resources;
    }

    public final Uri findIconUri(String appName) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        File file = new File(this.applicationFilesDir + "/apps/" + appName + "/" + appName + ".png");
        if (!file.exists()) {
            return getDefaultIconUri();
        }
        Uri uriFromFile = Uri.fromFile(file);
        Intrinsics.checkNotNullExpressionValue(uriFromFile, "fromFile(...)");
        return uriFromFile;
    }

    private final Uri getDefaultIconUri() {
        int i = R.mipmap.ic_launcher_foreground;
        Uri uri = Uri.parse("android.resource://" + this.resources.getResourcePackageName(i) + "/" + this.resources.getResourceTypeName(i) + "/" + this.resources.getResourceEntryName(i));
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        return uri;
    }

    public final String findAppDescription(String appName) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        File file = new File(this.applicationFilesDir + "/apps/" + appName + "/" + appName + ".txt");
        if (!file.exists()) {
            String string = this.resources.getString(R.string.error_app_description_not_found);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        return FilesKt.readText$default(file, null, 1, null);
    }
}
