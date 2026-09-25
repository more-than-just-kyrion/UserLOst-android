package tech.ula.library.utils;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import tech.ula.library.viewmodel.IllegalState;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\bj\u0002`\tH&J\u0014\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&¨\u0006\u0013"}, d2 = {"Ltech/ula/library/utils/Logger;", "", "addBreadcrumb", "", "breadcrumb", "Ltech/ula/library/utils/UlaBreadcrumb;", "addExceptionBreadcrumb", NotificationCompat.CATEGORY_ERROR, "Ljava/lang/Exception;", "Lkotlin/Exception;", "initialize", "context", "Landroid/content/Context;", "sendEvent", JsonMarshaller.MESSAGE, "", "sendIllegalStateLog", "state", "Ltech/ula/library/viewmodel/IllegalState;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Logger {
    void addBreadcrumb(UlaBreadcrumb breadcrumb);

    void addExceptionBreadcrumb(Exception err);

    void initialize(Context context);

    void sendEvent(String message);

    void sendIllegalStateLog(IllegalState state);

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ void initialize$default(Logger logger, Context context, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initialize");
            }
            if ((i & 1) != 0) {
                context = null;
            }
            logger.initialize(context);
        }
    }
}
