package tech.ula.library.ui;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SessionListAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltech/ula/library/ui/SessionSeparatorItem;", "Ltech/ula/library/ui/SessionListItem;", "separatorText", "", "(Ljava/lang/String;)V", "getSeparatorText", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SessionSeparatorItem extends SessionListItem {
    private final String separatorText;

    public static /* synthetic */ SessionSeparatorItem copy$default(SessionSeparatorItem sessionSeparatorItem, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sessionSeparatorItem.separatorText;
        }
        return sessionSeparatorItem.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSeparatorText() {
        return this.separatorText;
    }

    public final SessionSeparatorItem copy(String separatorText) {
        Intrinsics.checkNotNullParameter(separatorText, "separatorText");
        return new SessionSeparatorItem(separatorText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SessionSeparatorItem) && Intrinsics.areEqual(this.separatorText, ((SessionSeparatorItem) other).separatorText);
    }

    public int hashCode() {
        return this.separatorText.hashCode();
    }

    public String toString() {
        return "SessionSeparatorItem(separatorText=" + this.separatorText + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionSeparatorItem(String separatorText) {
        super(null);
        Intrinsics.checkNotNullParameter(separatorText, "separatorText");
        this.separatorText = separatorText;
    }

    public final String getSeparatorText() {
        return this.separatorText;
    }
}
