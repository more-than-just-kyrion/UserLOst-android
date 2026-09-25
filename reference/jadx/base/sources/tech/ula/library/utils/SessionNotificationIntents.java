package tech.ula.library.utils;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.MainActivity;
import tech.ula.library.ServerService;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionNotificationIntents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\n"}, d2 = {"Ltech/ula/library/utils/SessionNotificationIntents;", "", "()V", "settingsIntent", "Landroid/app/PendingIntent;", "context", "Landroid/content/Context;", "session", "Ltech/ula/library/model/entities/Session;", "stopIntent", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionNotificationIntents {
    public static final SessionNotificationIntents INSTANCE = new SessionNotificationIntents();

    private SessionNotificationIntents() {
    }

    public final PendingIntent stopIntent(Context context, Session session) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(session, "session");
        Intent intentPutExtra = new Intent(context, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "kill").putExtra("session", session);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        PendingIntent service = PendingIntent.getService(context, (int) session.getId(), intentPutExtra, 167772160);
        Intrinsics.checkNotNullExpressionValue(service, "getService(...)");
        return service;
    }

    public final PendingIntent settingsIntent(Context context, Session session) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(session, "session");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (sharedPreferences.getBoolean("pref_hide_settings", false)) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setType("settings");
        return PendingIntent.getActivity(context, (int) session.getId(), intent, 33554432);
    }
}
