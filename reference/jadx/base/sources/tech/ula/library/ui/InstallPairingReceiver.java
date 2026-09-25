package tech.ula.library.ui;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.i18n.MessageBundle;
import tech.ula.library.MainActivity;
import tech.ula.library.R;
import tech.userland.adbndk.AdbClient;

/* JADX INFO: compiled from: InstallPairingReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J0\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¨\u0006\u0012"}, d2 = {"Ltech/ula/library/ui/InstallPairingReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "postSimple", "nm", "Landroid/app/NotificationManager;", MessageBundle.TITLE_ENTRY, "", "body", "ongoing", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallPairingReceiver extends BroadcastReceiver {
    public static final String ACTION_PAIR = "tech.ula.library.INSTALL_PAIR";
    public static final String ACTION_PAIRED = "tech.ula.library.INSTALL_PAIRED";
    public static final String EXTRA_PORT = "install_pairing_port";
    public static final String KEY_CODE = "install_pairing_code";

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context ctx, Intent intent) {
        CharSequence charSequence;
        String string;
        final String string2;
        final String stringExtra;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(intent, "intent");
        Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
        if (resultsFromIntent == null || (charSequence = resultsFromIntent.getCharSequence(KEY_CODE)) == null || (string = charSequence.toString()) == null || (string2 = StringsKt.trim((CharSequence) string).toString()) == null || (stringExtra = intent.getStringExtra(EXTRA_PORT)) == null || stringExtra.length() == 0) {
            return;
        }
        final NotificationManager notificationManager = (NotificationManager) ctx.getSystemService(NotificationManager.class);
        Intrinsics.checkNotNull(notificationManager);
        String string3 = ctx.getString(R.string.install_notif_pairing_title);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        postSimple(ctx, notificationManager, string3, "Connecting to port " + stringExtra + "…", true);
        new Thread(new Runnable() { // from class: tech.ula.library.ui.InstallPairingReceiver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallPairingReceiver.onReceive$lambda$0(ctx, this, notificationManager, stringExtra, string2);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReceive$lambda$0(Context ctx, InstallPairingReceiver this$0, NotificationManager notificationManager, String port, String code) {
        String string;
        Intrinsics.checkNotNullParameter(ctx, "$ctx");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(port, "$port");
        Intrinsics.checkNotNullParameter(code, "$code");
        if (!InstallWizardFragment.INSTANCE.getSServerStarted()) {
            if (!AdbClient.init(ctx.getFilesDir().getAbsolutePath())) {
                Intrinsics.checkNotNull(notificationManager);
                String string2 = ctx.getString(R.string.install_notif_pair_failed_title);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                String string3 = ctx.getString(R.string.install_wizard_adb_init_failed);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                this$0.postSimple(ctx, notificationManager, string2, string3, false);
                return;
            }
            InstallWizardFragment.INSTANCE.setSServerStarted(true);
        }
        String strPair = AdbClient.pair("127.0.0.1:" + port, code);
        boolean z = false;
        if (strPair != null && StringsKt.contains$default((CharSequence) strPair, (CharSequence) "Successfully paired", false, 2, (Object) null)) {
            z = true;
        }
        if (strPair == null || (string = StringsKt.trim((CharSequence) strPair).toString()) == null) {
            string = "(no output)";
        }
        String str = string;
        if (z) {
            InstallWizardFragment.INSTANCE.setSPaired(true);
            Intent intentAddFlags = new Intent(ctx, (Class<?>) MainActivity.class).addFlags(805306368);
            Intrinsics.checkNotNullExpressionValue(intentAddFlags, "addFlags(...)");
            String str2 = str;
            Notification notificationBuild = new Notification.Builder(ctx, InstallWizardFragment.NOTIF_CHANNEL_ID).setSmallIcon(Icon.createWithResource(ctx, R.drawable.ic_app_icon_24dp)).setContentTitle(ctx.getString(R.string.install_notif_paired_title)).setContentText(str2).setStyle(new Notification.BigTextStyle().bigText(str2)).setContentIntent(PendingIntent.getActivity(ctx, 1, intentAddFlags, 201326592)).setAutoCancel(true).build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
            notificationManager.notify(1001, notificationBuild);
            LocalBroadcastManager.getInstance(ctx).sendBroadcast(new Intent(ACTION_PAIRED));
            return;
        }
        Intrinsics.checkNotNull(notificationManager);
        String string4 = ctx.getString(R.string.install_notif_pair_failed_title);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        this$0.postSimple(ctx, notificationManager, string4, str, false);
    }

    private final void postSimple(Context ctx, NotificationManager nm, String title, String body, boolean ongoing) {
        String str = body;
        Notification notificationBuild = new Notification.Builder(ctx, InstallWizardFragment.NOTIF_CHANNEL_ID).setSmallIcon(Icon.createWithResource(ctx, R.drawable.ic_app_icon_24dp)).setContentTitle(title).setContentText(str).setStyle(new Notification.BigTextStyle().bigText(str)).setOngoing(ongoing).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        nm.notify(1001, notificationBuild);
    }
}
