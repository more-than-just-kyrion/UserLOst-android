package tech.ula.library;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.utils.BreadcrumbType;
import tech.ula.library.utils.UlaBreadcrumb;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"tech/ula/library/MainActivity$serverServiceBroadcastReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainActivity$serverServiceBroadcastReceiver$1 extends BroadcastReceiver {
    final /* synthetic */ MainActivity this$0;

    MainActivity$serverServiceBroadcastReceiver$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String stringExtra = intent.getStringExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE);
        if (stringExtra != null) {
            final MainActivity mainActivity = this.this$0;
            mainActivity.logger.addBreadcrumb(new UlaBreadcrumb(mainActivity.getClassName(), BreadcrumbType.ReceivedIntent.INSTANCE, stringExtra));
            int iHashCode = stringExtra.hashCode();
            if (iHashCode == -1781862437) {
                if (stringExtra.equals("sessionActivated")) {
                    mainActivity.handleSessionHasBeenActivated();
                    return;
                }
                return;
            }
            if (iHashCode != -1332085432) {
                if (iHashCode == -698706771 && stringExtra.equals("sessionReady")) {
                    mainActivity.handleSessionIsReady();
                    return;
                }
                return;
            }
            if (stringExtra.equals("dialog")) {
                final String stringExtra2 = intent.getStringExtra("dialogType");
                if (stringExtra2 == null) {
                    stringExtra2 = "";
                }
                Intrinsics.checkNotNull(stringExtra2);
                String stringExtra3 = intent.getStringExtra(JsonMarshaller.MESSAGE);
                final String str = stringExtra3 != null ? stringExtra3 : "";
                Intrinsics.checkNotNull(str);
                mainActivity.runOnUiThread(new Runnable() { // from class: tech.ula.library.MainActivity$serverServiceBroadcastReceiver$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity$serverServiceBroadcastReceiver$1.onReceive$lambda$1$lambda$0(mainActivity, stringExtra2, str);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReceive$lambda$1$lambda$0(MainActivity this$0, String type, String message) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        Intrinsics.checkNotNullParameter(message, "$message");
        if (this$0.isFinishing() || this$0.isDestroyed()) {
            return;
        }
        this$0.showDialog(type, message);
    }
}
