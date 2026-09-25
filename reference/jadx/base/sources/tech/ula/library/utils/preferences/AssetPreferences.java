package tech.ula.library.utils.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Asset;

/* JADX INFO: compiled from: AssetPreferences.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017J\u000e\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006J\u001c\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011J\u000e\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0015J\u0014\u0010 \u001a\u00020\u000f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017J\u0016\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006J\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Ltech/ula/library/utils/preferences/AssetPreferences;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "downloadsAreInProgressKey", "", "enqueuedDownloadsKey", "lowestPossibleVersion", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "rootFsKey", "versionKey", "clearEnqueuedDownloadsCache", "", "getCachedAssetList", "", "Ltech/ula/library/model/entities/Asset;", "assetType", "getDownloadsAreInProgress", "", "getEnqueuedDownloads", "", "", "getLatestDownloadFilesystemVersion", "repo", "getLatestDownloadVersion", "setAssetList", "assetList", "setDownloadsAreInProgress", "inProgress", "setEnqueuedDownloads", "downloads", "setLatestDownloadFilesystemVersion", "version", "setLatestDownloadVersion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetPreferences {
    private final String downloadsAreInProgressKey;
    private final String enqueuedDownloadsKey;
    private final String lowestPossibleVersion;
    private final SharedPreferences prefs;
    private final String rootFsKey;
    private final String versionKey;

    public AssetPreferences(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefs = context.getSharedPreferences("assetLists", 0);
        this.versionKey = "version";
        this.rootFsKey = "rootfs";
        this.downloadsAreInProgressKey = "downloadsAreInProgress";
        this.enqueuedDownloadsKey = "currentlyEnqueuedDownloads";
        this.lowestPossibleVersion = "v0.0.0";
    }

    public final String getLatestDownloadVersion(String repo) {
        Intrinsics.checkNotNullParameter(repo, "repo");
        String string = this.prefs.getString(repo + "-" + this.versionKey, this.lowestPossibleVersion);
        return string == null ? this.lowestPossibleVersion : string;
    }

    public final String getLatestDownloadFilesystemVersion(String repo) {
        Intrinsics.checkNotNullParameter(repo, "repo");
        String string = this.prefs.getString(repo + "-" + this.rootFsKey + "-" + this.versionKey, this.lowestPossibleVersion);
        return string == null ? this.lowestPossibleVersion : string;
    }

    public final void setLatestDownloadVersion(String repo, String version) {
        Intrinsics.checkNotNullParameter(repo, "repo");
        Intrinsics.checkNotNullParameter(version, "version");
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putString(repo + "-" + this.versionKey, version);
        editorEdit.apply();
    }

    public final void setLatestDownloadFilesystemVersion(String repo, String version) {
        Intrinsics.checkNotNullParameter(repo, "repo");
        Intrinsics.checkNotNullParameter(version, "version");
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putString(repo + "-" + this.rootFsKey + "-" + this.versionKey, version);
        editorEdit.apply();
    }

    public final boolean getDownloadsAreInProgress() {
        return this.prefs.getBoolean(this.downloadsAreInProgressKey, false);
    }

    public final void setDownloadsAreInProgress(boolean inProgress) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.downloadsAreInProgressKey, inProgress);
        editorEdit.apply();
    }

    public final Set<Long> getEnqueuedDownloads() {
        Set<String> stringSet = this.prefs.getStringSet(this.enqueuedDownloadsKey, SetsKt.emptySet());
        if (stringSet == null) {
            stringSet = SetsKt.emptySet();
        }
        Set<String> set = stringSet;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        for (String str : set) {
            Intrinsics.checkNotNull(str);
            arrayList.add(Long.valueOf(Long.parseLong(str)));
        }
        return CollectionsKt.toSet(arrayList);
    }

    public final void setEnqueuedDownloads(Set<Long> downloads) {
        Intrinsics.checkNotNullParameter(downloads, "downloads");
        Set<Long> set = downloads;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).longValue()));
        }
        Set<String> set2 = CollectionsKt.toSet(arrayList);
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putStringSet(this.enqueuedDownloadsKey, set2);
        editorEdit.apply();
    }

    public final void clearEnqueuedDownloadsCache() {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.remove(this.enqueuedDownloadsKey);
        editorEdit.apply();
    }

    public final List<Asset> getCachedAssetList(String assetType) {
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Set<String> stringSet = this.prefs.getStringSet(assetType, SetsKt.emptySet());
        if (stringSet == null) {
            stringSet = SetsKt.emptySet();
        }
        Set<String> set = stringSet;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        for (String str : set) {
            Intrinsics.checkNotNull(str);
            arrayList.add(new Asset(str, assetType, null, 4, null));
        }
        return arrayList;
    }

    public final void setAssetList(String assetType, List<Asset> assetList) {
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetList, "assetList");
        List<Asset> list = assetList;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Asset) it.next()).getName());
        }
        Set<String> set = CollectionsKt.toSet(arrayList);
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putStringSet(assetType, set);
        editorEdit.apply();
    }
}
