package tech.ula.library.utils;

import android.content.Context;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Localization.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Ltech/ula/library/utils/LocalizationData;", "Ltech/ula/library/utils/Localization;", "resId", "", "formatStrings", "", "", "(ILjava/util/List;)V", "getFormatStrings", "()Ljava/util/List;", "getResId", "()I", "component1", "component2", "copy", "equals", "", "other", "", "getString", "context", "Landroid/content/Context;", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class LocalizationData implements Localization {
    private final List<String> formatStrings;
    private final int resId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LocalizationData copy$default(LocalizationData localizationData, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = localizationData.resId;
        }
        if ((i2 & 2) != 0) {
            list = localizationData.formatStrings;
        }
        return localizationData.copy(i, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResId() {
        return this.resId;
    }

    public final List<String> component2() {
        return this.formatStrings;
    }

    public final LocalizationData copy(int resId, List<String> formatStrings) {
        Intrinsics.checkNotNullParameter(formatStrings, "formatStrings");
        return new LocalizationData(resId, formatStrings);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalizationData)) {
            return false;
        }
        LocalizationData localizationData = (LocalizationData) other;
        return this.resId == localizationData.resId && Intrinsics.areEqual(this.formatStrings, localizationData.formatStrings);
    }

    public int hashCode() {
        return (Integer.hashCode(this.resId) * 31) + this.formatStrings.hashCode();
    }

    public String toString() {
        return "LocalizationData(resId=" + this.resId + ", formatStrings=" + this.formatStrings + ")";
    }

    public LocalizationData(int i, List<String> formatStrings) {
        Intrinsics.checkNotNullParameter(formatStrings, "formatStrings");
        this.resId = i;
        this.formatStrings = formatStrings;
    }

    public /* synthetic */ LocalizationData(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<String> getFormatStrings() {
        return this.formatStrings;
    }

    public final int getResId() {
        return this.resId;
    }

    @Override // tech.ula.library.utils.Localization
    public String getString(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(this.resId, this.formatStrings);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }
}
