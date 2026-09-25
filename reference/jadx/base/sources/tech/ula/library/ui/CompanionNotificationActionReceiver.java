package tech.ula.library.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.sqlcipher.database.SQLiteDatabase;
import tech.ula.library.MainActivity;
import tech.ula.library.ServerService;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;

/* JADX INFO: compiled from: CompanionNotificationActionReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Ltech/ula/library/ui/CompanionNotificationActionReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompanionNotificationActionReceiver extends BroadcastReceiver {
    public static final String ACTION_OPEN_SETTINGS = "tech.ula.OPEN_SETTINGS";
    public static final String ACTION_STOP_SESSION = "tech.ula.STOP_SESSION";
    public static final String EXTRA_SESSION_ID = "sessionId";

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context ctx, Intent intent) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode != -1425949099) {
                if (iHashCode == 614755036 && action.equals(ACTION_OPEN_SETTINGS)) {
                    Intent intent2 = new Intent(ctx, (Class<?>) MainActivity.class);
                    intent2.setType("settings");
                    intent2.addFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
                    ctx.startActivity(intent2);
                    return;
                }
                return;
            }
            if (action.equals(ACTION_STOP_SESSION)) {
                final long longExtra = intent.getLongExtra(EXTRA_SESSION_ID, -1L);
                if (longExtra < 0) {
                    return;
                }
                final BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
                new Thread(new Runnable() { // from class: tech.ula.library.ui.CompanionNotificationActionReceiver$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CompanionNotificationActionReceiver.onReceive$lambda$0(ctx, longExtra, pendingResultGoAsync);
                    }
                }).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReceive$lambda$0(Context ctx, long j, BroadcastReceiver.PendingResult pendingResult) {
        Intrinsics.checkNotNullParameter(ctx, "$ctx");
        try {
            Session sessionById = UlaDatabase.INSTANCE.getInstance(ctx).sessionDao().getSessionById(j);
            if (sessionById != null) {
                ctx.startService(new Intent(ctx, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "kill").putExtra("session", sessionById));
            }
        } finally {
            pendingResult.finish();
        }
    }
}
