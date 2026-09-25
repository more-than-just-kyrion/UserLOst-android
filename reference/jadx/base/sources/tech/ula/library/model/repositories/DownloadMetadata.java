package tech.ula.library.model.repositories;

import com.google.android.gms.common.internal.ImagesContract;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AssetRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J;\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001b"}, d2 = {"Ltech/ula/library/model/repositories/DownloadMetadata;", "", "filename", "", "assetType", "versionCode", ImagesContract.URL, "downloadTitle", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAssetType", "()Ljava/lang/String;", "getDownloadTitle", "getFilename", "getUrl", "getVersionCode", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DownloadMetadata {
    private final String assetType;
    private final String downloadTitle;
    private final String filename;
    private final String url;
    private final String versionCode;

    public static /* synthetic */ DownloadMetadata copy$default(DownloadMetadata downloadMetadata, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = downloadMetadata.filename;
        }
        if ((i & 2) != 0) {
            str2 = downloadMetadata.assetType;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = downloadMetadata.versionCode;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = downloadMetadata.url;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = downloadMetadata.downloadTitle;
        }
        return downloadMetadata.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFilename() {
        return this.filename;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAssetType() {
        return this.assetType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDownloadTitle() {
        return this.downloadTitle;
    }

    public final DownloadMetadata copy(String filename, String assetType, String versionCode, String url, String downloadTitle) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(versionCode, "versionCode");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(downloadTitle, "downloadTitle");
        return new DownloadMetadata(filename, assetType, versionCode, url, downloadTitle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadMetadata)) {
            return false;
        }
        DownloadMetadata downloadMetadata = (DownloadMetadata) other;
        return Intrinsics.areEqual(this.filename, downloadMetadata.filename) && Intrinsics.areEqual(this.assetType, downloadMetadata.assetType) && Intrinsics.areEqual(this.versionCode, downloadMetadata.versionCode) && Intrinsics.areEqual(this.url, downloadMetadata.url) && Intrinsics.areEqual(this.downloadTitle, downloadMetadata.downloadTitle);
    }

    public int hashCode() {
        return (((((((this.filename.hashCode() * 31) + this.assetType.hashCode()) * 31) + this.versionCode.hashCode()) * 31) + this.url.hashCode()) * 31) + this.downloadTitle.hashCode();
    }

    public String toString() {
        return "DownloadMetadata(filename=" + this.filename + ", assetType=" + this.assetType + ", versionCode=" + this.versionCode + ", url=" + this.url + ", downloadTitle=" + this.downloadTitle + ")";
    }

    public DownloadMetadata(String filename, String assetType, String versionCode, String url, String downloadTitle) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(versionCode, "versionCode");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(downloadTitle, "downloadTitle");
        this.filename = filename;
        this.assetType = assetType;
        this.versionCode = versionCode;
        this.url = url;
        this.downloadTitle = downloadTitle;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final String getAssetType() {
        return this.assetType;
    }

    public final String getVersionCode() {
        return this.versionCode;
    }

    public final String getUrl() {
        return this.url;
    }

    public /* synthetic */ DownloadMetadata(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i & 16) != 0 ? str2 + "-" + str + "-" + str3 : str5);
    }

    public final String getDownloadTitle() {
        return this.downloadTitle;
    }
}
