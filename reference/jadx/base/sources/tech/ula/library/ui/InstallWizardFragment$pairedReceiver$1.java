package tech.ula.library.ui;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstallWizardFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"tech/ula/library/ui/InstallWizardFragment$pairedReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallWizardFragment$pairedReceiver$1 extends BroadcastReceiver {
    final /* synthetic */ InstallWizardFragment this$0;

    InstallWizardFragment$pairedReceiver$1(InstallWizardFragment installWizardFragment) {
        this.this$0 = installWizardFragment;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context ctx, Intent intent) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(intent, "intent");
        final Context applicationContext = ctx.getApplicationContext();
        InstallWizardFragment.INSTANCE.setSPaired(true);
        NotificationManager notificationManager = this.this$0.nm;
        if (notificationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
            notificationManager = null;
        }
        notificationManager.cancel(1001);
        Handler handler = this.this$0.mainHandler;
        final InstallWizardFragment installWizardFragment = this.this$0;
        handler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$pairedReceiver$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment$pairedReceiver$1.onReceive$lambda$0(installWizardFragment, applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReceive$lambda$0(InstallWizardFragment this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding == null || this$0.doInstallDispatched) {
            return;
        }
        if (this$0.connectionPort.length() > 0) {
            this$0.doInstallDispatched = true;
            Intrinsics.checkNotNull(context);
            this$0.showInstallSection(context);
            this$0.doInstall(context);
            return;
        }
        this$0.startNsd();
    }
}
