package tech.ula.library.model.repositories;

import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Ltech/ula/library/model/repositories/AppRefreshStatus;", "", "refreshStatus", "Ltech/ula/library/model/repositories/RefreshStatus;", JsonMarshaller.MESSAGE, "", "(Ltech/ula/library/model/repositories/RefreshStatus;Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "getRefreshStatus", "()Ltech/ula/library/model/repositories/RefreshStatus;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppRefreshStatus {
    private final String message;
    private final RefreshStatus refreshStatus;

    public AppRefreshStatus(RefreshStatus refreshStatus, String message) {
        Intrinsics.checkNotNullParameter(refreshStatus, "refreshStatus");
        Intrinsics.checkNotNullParameter(message, "message");
        this.refreshStatus = refreshStatus;
        this.message = message;
    }

    public final String getMessage() {
        return this.message;
    }

    public final RefreshStatus getRefreshStatus() {
        return this.refreshStatus;
    }
}
