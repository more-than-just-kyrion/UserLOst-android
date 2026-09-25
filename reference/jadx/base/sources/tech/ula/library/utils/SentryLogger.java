package tech.ula.library.utils;

import android.content.Context;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import io.sentry.Sentry;
import io.sentry.android.AndroidSentryClientFactory;
import io.sentry.event.BreadcrumbBuilder;
import io.sentry.event.Event;
import io.sentry.event.EventBuilder;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.viewmodel.IllegalState;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u00020\u00042\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0016¨\u0006\u0014"}, d2 = {"Ltech/ula/library/utils/SentryLogger;", "Ltech/ula/library/utils/Logger;", "()V", "addBreadcrumb", "", "breadcrumb", "Ltech/ula/library/utils/UlaBreadcrumb;", "addExceptionBreadcrumb", NotificationCompat.CATEGORY_ERROR, "Ljava/lang/Exception;", "Lkotlin/Exception;", "initialize", "context", "Landroid/content/Context;", "sendEvent", JsonMarshaller.MESSAGE, "", "sendIllegalStateLog", "state", "Ltech/ula/library/viewmodel/IllegalState;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SentryLogger implements Logger {
    @Override // tech.ula.library.utils.Logger
    public void initialize(Context context) {
        Intrinsics.checkNotNull(context);
        Sentry.init(new AndroidSentryClientFactory(context));
    }

    @Override // tech.ula.library.utils.Logger
    public void addBreadcrumb(UlaBreadcrumb breadcrumb) {
        Intrinsics.checkNotNullParameter(breadcrumb, "breadcrumb");
        String strValueOf = String.valueOf(breadcrumb.getType());
        String str = breadcrumb.getOriginatingClass() + ": " + breadcrumb.getDetails();
        Sentry.getContext().recordBreadcrumb(new BreadcrumbBuilder().setCategory(strValueOf).setMessage(str).build());
        Log.i("Breadcrumb", strValueOf + " " + str);
    }

    @Override // tech.ula.library.utils.Logger
    public void addExceptionBreadcrumb(Exception err) {
        Intrinsics.checkNotNullParameter(err, "err");
        StackTraceElement[] stackTrace = err.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.first(stackTrace);
        Sentry.getContext().recordBreadcrumb(new BreadcrumbBuilder().setCategory("Exception").setData(MapsKt.mapOf(TuplesKt.to(PubkeyDatabase.FIELD_PUBKEY_TYPE, err.getClass().getSimpleName()), TuplesKt.to("file", stackTraceElement.getFileName()), TuplesKt.to("lineNumber", String.valueOf(stackTraceElement.getLineNumber())))).build());
    }

    @Override // tech.ula.library.utils.Logger
    public void sendIllegalStateLog(IllegalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        String simpleName = state.getClass().getSimpleName();
        Sentry.capture(new EventBuilder().withMessage(simpleName).withLevel(Event.Level.ERROR));
        Log.e("ILLEGAL_STATE", simpleName);
    }

    @Override // tech.ula.library.utils.Logger
    public void sendEvent(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Sentry.capture(new EventBuilder().withMessage(message).withLevel(Event.Level.ERROR));
        Log.e("EVENT", message);
    }
}
