package tech.ula.library.model.state;

import kotlin.Metadata;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Ltech/ula/library/model/state/CopyDownloadsToLocalStorage;", "Ltech/ula/library/model/state/SessionStartupEvent;", "()V", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CopyDownloadsToLocalStorage extends SessionStartupEvent {
    public static final CopyDownloadsToLocalStorage INSTANCE = new CopyDownloadsToLocalStorage();

    private CopyDownloadsToLocalStorage() {
        super(null);
    }
}
