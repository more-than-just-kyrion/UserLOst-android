package tech.ula.library.ui;

import android.app.NotificationManager;
import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Handler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: InstallWizardFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016¨\u0006\n"}, d2 = {"tech/ula/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1", "Landroid/net/nsd/NsdManager$ResolveListener;", "onResolveFailed", "", "i", "Landroid/net/nsd/NsdServiceInfo;", "e", "", "onServiceResolved", "resolved", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallWizardFragment$makeNsdListener$1$onServiceFound$1 implements NsdManager.ResolveListener {
    final /* synthetic */ boolean $isPairing;
    final /* synthetic */ InstallWizardFragment this$0;

    @Override // android.net.nsd.NsdManager.ResolveListener
    public void onResolveFailed(NsdServiceInfo i, int e) {
        Intrinsics.checkNotNullParameter(i, "i");
    }

    InstallWizardFragment$makeNsdListener$1$onServiceFound$1(InstallWizardFragment installWizardFragment, boolean z) {
        this.this$0 = installWizardFragment;
        this.$isPairing = z;
    }

    @Override // android.net.nsd.NsdManager.ResolveListener
    public void onServiceResolved(NsdServiceInfo resolved) {
        Intrinsics.checkNotNullParameter(resolved, "resolved");
        if (this.this$0.isLocalAddress(resolved.getHost())) {
            String strValueOf = String.valueOf(resolved.getPort());
            if (this.$isPairing) {
                this.this$0.pairingPort = strValueOf;
                this.this$0.updatePairingNotification(strValueOf);
                Handler handler = this.this$0.mainHandler;
                final InstallWizardFragment installWizardFragment = this.this$0;
                handler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstallWizardFragment$makeNsdListener$1$onServiceFound$1.onServiceResolved$lambda$0(installWizardFragment);
                    }
                });
                return;
            }
            this.this$0.connectionPort = strValueOf;
            if (InstallWizardFragment.INSTANCE.getSPaired() && !this.this$0.doInstallDispatched) {
                this.this$0.doInstallDispatched = true;
                Context context = this.this$0.getContext();
                final Context applicationContext = context != null ? context.getApplicationContext() : null;
                if (applicationContext == null) {
                    return;
                }
                Handler handler2 = this.this$0.mainHandler;
                final InstallWizardFragment installWizardFragment2 = this.this$0;
                handler2.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        InstallWizardFragment$makeNsdListener$1$onServiceFound$1.onServiceResolved$lambda$1(installWizardFragment2, applicationContext);
                    }
                });
                return;
            }
            if (InstallWizardFragment.INSTANCE.getSPaired() || Intrinsics.areEqual(strValueOf, this.this$0.lastAutoConnectPort)) {
                return;
            }
            this.this$0.lastAutoConnectPort = strValueOf;
            this.this$0.checkIfAlreadyPaired(strValueOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onServiceResolved$lambda$0(InstallWizardFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding == null) {
            return;
        }
        this$0.getBinding().tvPairStatus.setText(this$0.getString(R.string.install_wizard_pairing_detected));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onServiceResolved$lambda$1(InstallWizardFragment this$0, Context appCtx) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(appCtx, "$appCtx");
        if (this$0._binding == null) {
            return;
        }
        NotificationManager notificationManager = this$0.nm;
        if (notificationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
            notificationManager = null;
        }
        notificationManager.cancel(1001);
        this$0.showInstallSection(appCtx);
        this$0.doInstall(appCtx);
    }
}
