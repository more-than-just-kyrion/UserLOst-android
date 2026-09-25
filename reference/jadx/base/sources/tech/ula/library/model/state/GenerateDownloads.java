package tech.ula.library.model.state;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Asset;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Ltech/ula/library/model/state/GenerateDownloads;", "Ltech/ula/library/model/state/SessionStartupEvent;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "assetList", "", "Ltech/ula/library/model/entities/Asset;", "(Ltech/ula/library/model/entities/Filesystem;Ljava/util/List;)V", "getAssetList", "()Ljava/util/List;", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class GenerateDownloads extends SessionStartupEvent {
    private final List<Asset> assetList;
    private final Filesystem filesystem;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GenerateDownloads copy$default(GenerateDownloads generateDownloads, Filesystem filesystem, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            filesystem = generateDownloads.filesystem;
        }
        if ((i & 2) != 0) {
            list = generateDownloads.assetList;
        }
        return generateDownloads.copy(filesystem, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final List<Asset> component2() {
        return this.assetList;
    }

    public final GenerateDownloads copy(Filesystem filesystem, List<Asset> assetList) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(assetList, "assetList");
        return new GenerateDownloads(filesystem, assetList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GenerateDownloads)) {
            return false;
        }
        GenerateDownloads generateDownloads = (GenerateDownloads) other;
        return Intrinsics.areEqual(this.filesystem, generateDownloads.filesystem) && Intrinsics.areEqual(this.assetList, generateDownloads.assetList);
    }

    public int hashCode() {
        return (this.filesystem.hashCode() * 31) + this.assetList.hashCode();
    }

    public String toString() {
        return "GenerateDownloads(filesystem=" + this.filesystem + ", assetList=" + this.assetList + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenerateDownloads(Filesystem filesystem, List<Asset> assetList) {
        super(null);
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(assetList, "assetList");
        this.filesystem = filesystem;
        this.assetList = assetList;
    }

    public final List<Asset> getAssetList() {
        return this.assetList;
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }
}
