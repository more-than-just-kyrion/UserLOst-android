package tech.ula.library.utils;

import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.spongycastle.i18n.ErrorBundle;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Ltech/ula/library/utils/UlaBreadcrumb;", "", "originatingClass", "", PubkeyDatabase.FIELD_PUBKEY_TYPE, "Ltech/ula/library/utils/BreadcrumbType;", ErrorBundle.DETAIL_ENTRY, "(Ljava/lang/String;Ltech/ula/library/utils/BreadcrumbType;Ljava/lang/String;)V", "getDetails", "()Ljava/lang/String;", "getOriginatingClass", "getType", "()Ltech/ula/library/utils/BreadcrumbType;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class UlaBreadcrumb {
    private final String details;
    private final String originatingClass;
    private final BreadcrumbType type;

    public static /* synthetic */ UlaBreadcrumb copy$default(UlaBreadcrumb ulaBreadcrumb, String str, BreadcrumbType breadcrumbType, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ulaBreadcrumb.originatingClass;
        }
        if ((i & 2) != 0) {
            breadcrumbType = ulaBreadcrumb.type;
        }
        if ((i & 4) != 0) {
            str2 = ulaBreadcrumb.details;
        }
        return ulaBreadcrumb.copy(str, breadcrumbType, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOriginatingClass() {
        return this.originatingClass;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BreadcrumbType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDetails() {
        return this.details;
    }

    public final UlaBreadcrumb copy(String originatingClass, BreadcrumbType type, String details) {
        Intrinsics.checkNotNullParameter(originatingClass, "originatingClass");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(details, "details");
        return new UlaBreadcrumb(originatingClass, type, details);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UlaBreadcrumb)) {
            return false;
        }
        UlaBreadcrumb ulaBreadcrumb = (UlaBreadcrumb) other;
        return Intrinsics.areEqual(this.originatingClass, ulaBreadcrumb.originatingClass) && Intrinsics.areEqual(this.type, ulaBreadcrumb.type) && Intrinsics.areEqual(this.details, ulaBreadcrumb.details);
    }

    public int hashCode() {
        return (((this.originatingClass.hashCode() * 31) + this.type.hashCode()) * 31) + this.details.hashCode();
    }

    public String toString() {
        return "UlaBreadcrumb(originatingClass=" + this.originatingClass + ", type=" + this.type + ", details=" + this.details + ")";
    }

    public UlaBreadcrumb(String originatingClass, BreadcrumbType type, String details) {
        Intrinsics.checkNotNullParameter(originatingClass, "originatingClass");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(details, "details");
        this.originatingClass = originatingClass;
        this.type = type;
        this.details = details;
    }

    public final String getOriginatingClass() {
        return this.originatingClass;
    }

    public final BreadcrumbType getType() {
        return this.type;
    }

    public final String getDetails() {
        return this.details;
    }
}
