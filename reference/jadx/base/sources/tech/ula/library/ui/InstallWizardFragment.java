package tech.ula.library.ui;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.drawable.Icon;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.navigation.fragment.FragmentKt;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import net.sqlcipher.database.SQLiteDatabase;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.commons.lang3.StringUtils;
import org.spongycastle.i18n.MessageBundle;
import tech.ula.library.R;
import tech.ula.library.databinding.FragInstallWizardBinding;
import tech.userland.adbndk.AdbClient;

/* JADX INFO: compiled from: InstallWizardFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d*\u0002!'\u0018\u0000 i2\u00020\u0001:\u0002ijB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\rH\u0002J$\u00102\u001a\u0004\u0018\u00010\r2\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\b\b\u0002\u00105\u001a\u000206H\u0002J\b\u00107\u001a\u00020/H\u0002J\u0010\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020:H\u0002J\u0012\u0010;\u001a\u0004\u0018\u00010<2\u0006\u00109\u001a\u00020:H\u0002J\b\u0010=\u001a\u00020/H\u0002J\u0012\u0010>\u001a\u00020\t2\b\u0010?\u001a\u0004\u0018\u00010\rH\u0002J\u0012\u0010@\u001a\u00020\t2\b\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\rH\u0002J\u0010\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\tH\u0002J$\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\b\u0010K\u001a\u0004\u0018\u00010L2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016J\b\u0010O\u001a\u00020/H\u0016J\b\u0010P\u001a\u00020/H\u0016J\b\u0010Q\u001a\u00020/H\u0016J\b\u0010R\u001a\u00020/H\u0002J\u001a\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020H2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0010\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020\rH\u0002J(\u0010W\u001a\u00020/2\u0006\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\rH\u0002J\u0018\u0010\\\u001a\u00020/2\u0006\u00101\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\rH\u0002J\b\u0010]\u001a\u00020/H\u0002J\u0018\u0010^\u001a\u00020/2\u0006\u0010_\u001a\u00020\r2\u0006\u0010`\u001a\u00020\tH\u0002J\b\u0010a\u001a\u00020/H\u0002J\u0010\u0010b\u001a\u00020/2\u0006\u00109\u001a\u00020:H\u0002J\u0010\u0010c\u001a\u00020/2\u0006\u0010d\u001a\u000206H\u0002J\b\u0010e\u001a\u00020/H\u0002J\b\u0010f\u001a\u00020/H\u0002J\b\u0010g\u001a\u00020/H\u0002J\u0010\u0010h\u001a\u00020/2\u0006\u00101\u001a\u00020\rH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\"R\u000e\u0010#\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0004\n\u0002\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006k"}, d2 = {"Ltech/ula/library/ui/InstallWizardFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/ula/library/databinding/FragInstallWizardBinding;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragInstallWizardBinding;", "connectDiscoveryActive", "", "connectListener", "Landroid/net/nsd/NsdManager$DiscoveryListener;", "connectionPort", "", "consentGiven", "devWasOn", "doInstallDispatched", "doneDispatched", "executor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "httpClient", "Lokhttp3/OkHttpClient;", "installDone", "lastAutoConnectPort", "lastConnectAddr", "mainHandler", "Landroid/os/Handler;", "nm", "Landroid/app/NotificationManager;", "nsdManager", "Landroid/net/nsd/NsdManager;", "pairedReceiver", "tech/ula/library/ui/InstallWizardFragment$pairedReceiver$1", "Ltech/ula/library/ui/InstallWizardFragment$pairedReceiver$1;", "pairingDiscoveryActive", "pairingListener", "pairingPort", "settingsObserver", "tech/ula/library/ui/InstallWizardFragment$settingsObserver$1", "Ltech/ula/library/ui/InstallWizardFragment$settingsObserver$1;", "showPairStepFallback", "Ljava/lang/Runnable;", InstallWizardFragment.ARG_TARGET, "Ltech/ula/library/ui/InstallTarget;", "wdWasOn", "checkDevSettings", "", "checkIfAlreadyPaired", "port", "connectWithRetry", "connectAddr", "tag", "maxAttempts", "", "createNotificationChannel", "doInstall", "ctx", "Landroid/content/Context;", "downloadApk", "Ljava/io/File;", "grantStorageAccessAndFinish", "isConnected", "result", "isLocalAddress", "host", "Ljava/net/InetAddress;", "isSignatureMismatch", "output", "makeNsdListener", "isPairing", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onPause", "onResume", "onSettingsChanged", "onViewCreated", "view", "permissionLabel", "permission", "postGuidanceNotification", MessageBundle.TITLE_ENTRY, "body", "settingsAction", "actionLabel", "postPairingNotification", "requestNotificationPermission", "setInstallStatus", NotificationCompat.CATEGORY_MESSAGE, "failed", "showDone", "showInstallSection", "showStep", "step", "startNsd", "stopKeepAliveService", "stopNsd", "updatePairingNotification", "Companion", "CompanionAppSetupListener", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallWizardFragment extends Fragment {
    public static final String ARG_TARGET = "target";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String NOTIF_CHANNEL_ID = "companion_app_install";
    public static final int NOTIF_ID = 1001;
    private static final String TAG = "InstallWizardFragment";
    private static volatile boolean sPaired;
    private static volatile boolean sServerStarted;
    private FragInstallWizardBinding _binding;
    private boolean connectDiscoveryActive;
    private NsdManager.DiscoveryListener connectListener;
    private boolean consentGiven;
    private boolean devWasOn;
    private boolean doInstallDispatched;
    private boolean doneDispatched;
    private boolean installDone;
    private String lastAutoConnectPort;
    private NotificationManager nm;
    private NsdManager nsdManager;
    private final InstallWizardFragment$pairedReceiver$1 pairedReceiver;
    private boolean pairingDiscoveryActive;
    private NsdManager.DiscoveryListener pairingListener;
    private final InstallWizardFragment$settingsObserver$1 settingsObserver;
    private final Runnable showPairStepFallback;
    private InstallTarget target;
    private boolean wdWasOn;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final OkHttpClient httpClient = new OkHttpClient.Builder().protocols(CollectionsKt.listOf(Protocol.HTTP_1_1)).connectTimeout(30, TimeUnit.SECONDS).readTimeout(30, TimeUnit.SECONDS).writeTimeout(30, TimeUnit.SECONDS).build();
    private volatile String pairingPort = "";
    private volatile String connectionPort = "";
    private volatile String lastConnectAddr = "";

    /* JADX INFO: compiled from: InstallWizardFragment.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Ltech/ula/library/ui/InstallWizardFragment$CompanionAppSetupListener;", "", "companionAppSetupComplete", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface CompanionAppSetupListener {
        void companionAppSetupComplete();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [tech.ula.library.ui.InstallWizardFragment$settingsObserver$1] */
    public InstallWizardFragment() {
        final Handler handler = new Handler(Looper.getMainLooper());
        this.settingsObserver = new ContentObserver(handler) { // from class: tech.ula.library.ui.InstallWizardFragment$settingsObserver$1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                if (this.this$0._binding != null) {
                    this.this$0.onSettingsChanged();
                }
            }
        };
        this.pairedReceiver = new InstallWizardFragment$pairedReceiver$1(this);
        this.showPairStepFallback = new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment.showPairStepFallback$lambda$7(this.f$0);
            }
        };
    }

    /* JADX INFO: compiled from: InstallWizardFragment.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Ltech/ula/library/ui/InstallWizardFragment$Companion;", "", "()V", "ARG_TARGET", "", "NOTIF_CHANNEL_ID", "NOTIF_ID", "", "TAG", "sPaired", "", "getSPaired", "()Z", "setSPaired", "(Z)V", "sServerStarted", "getSServerStarted", "setSServerStarted", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean getSServerStarted() {
            return InstallWizardFragment.sServerStarted;
        }

        public final void setSServerStarted(boolean z) {
            InstallWizardFragment.sServerStarted = z;
        }

        public final boolean getSPaired() {
            return InstallWizardFragment.sPaired;
        }

        public final void setSPaired(boolean z) {
            InstallWizardFragment.sPaired = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragInstallWizardBinding getBinding() {
        FragInstallWizardBinding fragInstallWizardBinding = this._binding;
        Intrinsics.checkNotNull(fragInstallWizardBinding);
        return fragInstallWizardBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragInstallWizardBinding.inflate(inflater, container, false);
        ScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        stopNsd();
        this.mainHandler.removeCallbacks(this.showPairStepFallback);
        requireContext().getContentResolver().unregisterContentObserver(this.settingsObserver);
        stopKeepAliveService();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.target = InstallTarget.INSTANCE.fromArg(requireArguments().getString(ARG_TARGET));
        TextView textView = getBinding().tvWizardTitle;
        int i = R.string.install_wizard_title;
        InstallTarget installTarget = this.target;
        InstallTarget installTarget2 = null;
        if (installTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget = null;
        }
        textView.setText(getString(i, installTarget.getDisplayName()));
        TextView textView2 = getBinding().tvWizardSubtitle;
        int i2 = R.string.install_wizard_subtitle;
        InstallTarget installTarget3 = this.target;
        if (installTarget3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget3 = null;
        }
        textView2.setText(getString(i2, installTarget3.getDisplayName()));
        TextView textView3 = getBinding().tvStep4Title;
        int i3 = R.string.install_wizard_step4_title;
        InstallTarget installTarget4 = this.target;
        if (installTarget4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget4 = null;
        }
        textView3.setText(getString(i3, installTarget4.getDisplayName()));
        TextView textView4 = getBinding().tvConsentTitle;
        int i4 = R.string.install_wizard_consent_title;
        InstallTarget installTarget5 = this.target;
        if (installTarget5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget5 = null;
        }
        textView4.setText(getString(i4, installTarget5.getDisplayName()));
        TextView textView5 = getBinding().tvConsentBody;
        int i5 = R.string.install_wizard_consent_body;
        InstallTarget installTarget6 = this.target;
        if (installTarget6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget6 = null;
        }
        String displayName = installTarget6.getDisplayName();
        InstallTarget installTarget7 = this.target;
        if (installTarget7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
        } else {
            installTarget2 = installTarget7;
        }
        List<String> permissionsToGrant = installTarget2.getPermissionsToGrant();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(permissionsToGrant, 10));
        Iterator<T> it = permissionsToGrant.iterator();
        while (it.hasNext()) {
            arrayList.add(permissionLabel((String) it.next()));
        }
        String string = getString(R.string.install_wizard_permission_storage);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        textView5.setText(getString(i5, displayName, CollectionsKt.joinToString$default(CollectionsKt.plus((Collection<? extends String>) arrayList, string), ", ", null, null, 0, null, null, 62, null)));
        getBinding().btnConsentContinue.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstallWizardFragment.onViewCreated$lambda$1(this.f$0, view2);
            }
        });
        getBinding().btnConsentCancel.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstallWizardFragment.onViewCreated$lambda$2(this.f$0, view2);
            }
        });
        Object systemService = requireContext().getSystemService((Class<Object>) NotificationManager.class);
        Intrinsics.checkNotNullExpressionValue(systemService, "getSystemService(...)");
        this.nm = (NotificationManager) systemService;
        createNotificationChannel();
        requestNotificationPermission();
        ContextCompat.startForegroundService(requireContext(), new Intent(requireContext(), (Class<?>) InstallWizardKeepAliveService.class));
        this.nsdManager = (NsdManager) requireContext().getSystemService(NsdManager.class);
        requireContext().getContentResolver().registerContentObserver(Settings.Global.getUriFor("development_settings_enabled"), false, this.settingsObserver);
        requireContext().getContentResolver().registerContentObserver(Settings.Global.getUriFor("adb_wifi_enabled"), false, this.settingsObserver);
        getBinding().btnAboutPhone.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstallWizardFragment.onViewCreated$lambda$3(this.f$0, view2);
            }
        });
        getBinding().btnOpenDevOptions.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstallWizardFragment.onViewCreated$lambda$4(this.f$0, view2);
            }
        });
        getBinding().btnOpenWd.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InstallWizardFragment.onViewCreated$lambda$6(this.f$0, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(InstallWizardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.consentGiven = true;
        this$0.getBinding().sectionConsent.setVisibility(8);
        this$0.checkDevSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(InstallWizardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).popBackStack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(InstallWizardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String string = this$0.getString(R.string.install_notif_step1_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this$0.getString(R.string.install_notif_step1_body);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = this$0.getString(R.string.install_notif_step1_action);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        this$0.postGuidanceNotification(string, string2, "android.settings.DEVICE_INFO_SETTINGS", string3);
        this$0.startActivity(new Intent("android.settings.DEVICE_INFO_SETTINGS").addFlags(SQLiteDatabase.CREATE_IF_NECESSARY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(InstallWizardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String string = this$0.getString(R.string.install_notif_step2_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this$0.getString(R.string.install_notif_step2_body);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = this$0.getString(R.string.install_notif_step2_action);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        this$0.postGuidanceNotification(string, string2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS", string3);
        this$0.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS").addFlags(SQLiteDatabase.CREATE_IF_NECESSARY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6(final InstallWizardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String string = this$0.getString(R.string.install_notif_pair_waiting_body);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this$0.postPairingNotification("", string);
        this$0.mainHandler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment.onViewCreated$lambda$6$lambda$5(this.f$0);
            }
        });
        this$0.startActivity(new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS").addFlags(SQLiteDatabase.CREATE_IF_NECESSARY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6$lambda$5(InstallWizardFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding == null) {
            return;
        }
        this$0.getBinding().tvPairStatus.setText(this$0.getString(R.string.install_wizard_waiting_pairing));
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(requireContext()).registerReceiver(this.pairedReceiver, new IntentFilter(InstallPairingReceiver.ACTION_PAIRED));
        if (this.installDone) {
            showDone();
            return;
        }
        if (sPaired) {
            Context applicationContext = requireContext().getApplicationContext();
            NotificationManager notificationManager = this.nm;
            if (notificationManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nm");
                notificationManager = null;
            }
            notificationManager.cancel(1001);
            Intrinsics.checkNotNull(applicationContext);
            showInstallSection(applicationContext);
            if (this.doInstallDispatched) {
                return;
            }
            if (this.connectionPort.length() > 0) {
                this.doInstallDispatched = true;
                doInstall(applicationContext);
                return;
            } else {
                startNsd();
                return;
            }
        }
        if (this.consentGiven) {
            checkDevSettings();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LocalBroadcastManager.getInstance(requireContext()).unregisterReceiver(this.pairedReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSettingsChanged() {
        ContentResolver contentResolver = requireContext().getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "development_settings_enabled", 0) == 1;
        boolean z2 = z && Settings.Global.getInt(contentResolver, "adb_wifi_enabled", 0) == 1;
        if (z2 && !this.wdWasOn) {
            this.wdWasOn = true;
            startNsd();
            String string = getString(R.string.install_notif_pair_waiting_body);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            postPairingNotification("", string);
        } else if (z && !this.devWasOn) {
            this.devWasOn = true;
            String string2 = getString(R.string.install_notif_step2_title);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = getString(R.string.install_notif_step2_body);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            String string4 = getString(R.string.install_notif_step2_action);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            postGuidanceNotification(string2, string3, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS", string4);
        }
        if (!z2 && this.wdWasOn) {
            this.wdWasOn = false;
            this.lastAutoConnectPort = null;
            stopNsd();
        }
        if (!z) {
            this.devWasOn = false;
        }
        checkDevSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPairStepFallback$lambda$7(InstallWizardFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding == null || sPaired) {
            return;
        }
        this$0.showStep(3);
    }

    private final void checkDevSettings() {
        if (sPaired) {
            return;
        }
        ContentResolver contentResolver = requireContext().getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "development_settings_enabled", 0) == 1;
        boolean z2 = z && Settings.Global.getInt(contentResolver, "adb_wifi_enabled", 0) == 1;
        this.devWasOn = z;
        this.wdWasOn = z2;
        if (!z) {
            this.mainHandler.removeCallbacks(this.showPairStepFallback);
            showStep(1);
            return;
        }
        if (!z2) {
            this.mainHandler.removeCallbacks(this.showPairStepFallback);
            showStep(2);
            return;
        }
        getBinding().sectionConsent.setVisibility(8);
        getBinding().sectionDevOptions.setVisibility(8);
        getBinding().sectionWirelessDebug.setVisibility(8);
        getBinding().sectionPair.setVisibility(8);
        getBinding().sectionInstall.setVisibility(0);
        getBinding().tvInstallStatus.setText(getString(R.string.install_wizard_checking_paired));
        startNsd();
        this.mainHandler.removeCallbacks(this.showPairStepFallback);
        this.mainHandler.postDelayed(this.showPairStepFallback, 4000L);
    }

    private final void showStep(int step) {
        getBinding().sectionConsent.setVisibility(8);
        getBinding().sectionDevOptions.setVisibility(step == 1 ? 0 : 8);
        getBinding().sectionWirelessDebug.setVisibility(step == 2 ? 0 : 8);
        getBinding().sectionPair.setVisibility(step != 3 ? 8 : 0);
        getBinding().sectionInstall.setVisibility(8);
        getBinding().sectionDone.setVisibility(8);
        if (step == 3) {
            startNsd();
        } else {
            stopNsd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLocalAddress(InetAddress host) {
        if (host == null) {
            return false;
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            Intrinsics.checkNotNullExpressionValue(networkInterfaces, "getNetworkInterfaces(...)");
            Iterator it = SequencesKt.asSequence(CollectionsKt.iterator(networkInterfaces)).iterator();
            while (it.hasNext()) {
                Enumeration<InetAddress> inetAddresses = ((NetworkInterface) it.next()).getInetAddresses();
                Intrinsics.checkNotNullExpressionValue(inetAddresses, "getInetAddresses(...)");
                Iterator it2 = SequencesKt.asSequence(CollectionsKt.iterator(inetAddresses)).iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(((InetAddress) it2.next()).getHostAddress(), host.getHostAddress())) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startNsd() {
        if (!this.pairingDiscoveryActive) {
            NsdManager.DiscoveryListener discoveryListenerMakeNsdListener = makeNsdListener(true);
            this.pairingListener = discoveryListenerMakeNsdListener;
            try {
                NsdManager nsdManager = this.nsdManager;
                if (nsdManager != null) {
                    nsdManager.discoverServices("_adb-tls-pairing._tcp", 1, discoveryListenerMakeNsdListener);
                }
                this.pairingDiscoveryActive = true;
            } catch (Exception unused) {
            }
        }
        if (this.connectDiscoveryActive) {
            return;
        }
        NsdManager.DiscoveryListener discoveryListenerMakeNsdListener2 = makeNsdListener(false);
        this.connectListener = discoveryListenerMakeNsdListener2;
        try {
            NsdManager nsdManager2 = this.nsdManager;
            if (nsdManager2 != null) {
                nsdManager2.discoverServices("_adb-tls-connect._tcp", 1, discoveryListenerMakeNsdListener2);
            }
            this.connectDiscoveryActive = true;
        } catch (Exception unused2) {
        }
    }

    private final void stopNsd() {
        NsdManager.DiscoveryListener discoveryListener;
        NsdManager.DiscoveryListener discoveryListener2;
        if (this.pairingDiscoveryActive && (discoveryListener2 = this.pairingListener) != null) {
            try {
                NsdManager nsdManager = this.nsdManager;
                if (nsdManager != null) {
                    nsdManager.stopServiceDiscovery(discoveryListener2);
                }
            } catch (Exception unused) {
            }
            this.pairingDiscoveryActive = false;
        }
        if (!this.connectDiscoveryActive || (discoveryListener = this.connectListener) == null) {
            return;
        }
        try {
            NsdManager nsdManager2 = this.nsdManager;
            if (nsdManager2 != null) {
                nsdManager2.stopServiceDiscovery(discoveryListener);
            }
        } catch (Exception unused2) {
        }
        this.connectDiscoveryActive = false;
    }

    private final NsdManager.DiscoveryListener makeNsdListener(final boolean isPairing) {
        return new NsdManager.DiscoveryListener() { // from class: tech.ula.library.ui.InstallWizardFragment.makeNsdListener.1
            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStarted(String t) {
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStopped(String t) {
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStartDiscoveryFailed(String t, int e) {
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStopDiscoveryFailed(String t, int e) {
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceLost(NsdServiceInfo info) {
                Intrinsics.checkNotNullParameter(info, "info");
                if (isPairing) {
                    this.pairingPort = "";
                } else {
                    this.connectionPort = "";
                }
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceFound(NsdServiceInfo info) {
                Intrinsics.checkNotNullParameter(info, "info");
                NsdManager nsdManager = this.nsdManager;
                if (nsdManager != null) {
                    nsdManager.resolveService(info, new InstallWizardFragment$makeNsdListener$1$onServiceFound$1(this, isPairing));
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkIfAlreadyPaired(final String port) {
        final Context applicationContext = requireContext().getApplicationContext();
        this.executor.submit(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment.checkIfAlreadyPaired$lambda$11(applicationContext, this, port);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkIfAlreadyPaired$lambda$11(final Context context, final InstallWizardFragment this$0, String port) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(port, "$port");
        if (!sServerStarted) {
            if (!AdbClient.init(context.getFilesDir().getAbsolutePath())) {
                return;
            } else {
                sServerStarted = true;
            }
        }
        if (this$0.isConnected(connectWithRetry$default(this$0, "127.0.0.1:" + port, "checkIfAlreadyPaired", 0, 4, null))) {
            this$0.mainHandler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    InstallWizardFragment.checkIfAlreadyPaired$lambda$11$lambda$10(this.f$0, context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkIfAlreadyPaired$lambda$11$lambda$10(InstallWizardFragment this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding == null) {
            return;
        }
        NotificationManager notificationManager = this$0.nm;
        if (notificationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
            notificationManager = null;
        }
        notificationManager.cancel(1001);
        Intrinsics.checkNotNull(context);
        this$0.showInstallSection(context);
        this$0.doInstall(context);
    }

    private final void createNotificationChannel() {
        int i = R.string.install_notif_channel_name;
        InstallTarget installTarget = this.target;
        NotificationManager notificationManager = null;
        if (installTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget = null;
        }
        NotificationChannel notificationChannel = new NotificationChannel(NOTIF_CHANNEL_ID, getString(i, installTarget.getDisplayName()), 4);
        NotificationManager notificationManager2 = this.nm;
        if (notificationManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
        } else {
            notificationManager = notificationManager2;
        }
        notificationManager.createNotificationChannel(notificationChannel);
    }

    private final void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT < 33 || ContextCompat.checkSelfPermission(requireContext(), "android.permission.POST_NOTIFICATIONS") == 0) {
            return;
        }
        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 100);
    }

    private final void postGuidanceNotification(String title, String body, String settingsAction, String actionLabel) {
        String str = body;
        Notification notificationBuild = new Notification.Builder(requireContext(), NOTIF_CHANNEL_ID).setSmallIcon(Icon.createWithResource(requireContext(), R.drawable.ic_app_icon_24dp)).setContentTitle(title).setContentText(str).setStyle(new Notification.BigTextStyle().bigText(str)).addAction(new Notification.Action.Builder(Icon.createWithResource(requireContext(), R.drawable.ic_app_icon_24dp), actionLabel, PendingIntent.getActivity(requireContext(), 2, new Intent(settingsAction).addFlags(SQLiteDatabase.CREATE_IF_NECESSARY), 201326592)).build()).setOngoing(true).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        NotificationManager notificationManager = this.nm;
        if (notificationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
            notificationManager = null;
        }
        notificationManager.notify(1001, notificationBuild);
    }

    private final void postPairingNotification(String port, String body) {
        String string;
        Intent intentPutExtra = new Intent(InstallPairingReceiver.ACTION_PAIR).setPackage(requireContext().getPackageName()).putExtra(InstallPairingReceiver.EXTRA_PORT, port);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        PendingIntent broadcast = PendingIntent.getBroadcast(requireContext(), 0, intentPutExtra, 167772160);
        RemoteInput remoteInputBuild = new RemoteInput.Builder(InstallPairingReceiver.KEY_CODE).setLabel(getString(R.string.install_notif_pair_action)).build();
        Intrinsics.checkNotNullExpressionValue(remoteInputBuild, "build(...)");
        NotificationManager notificationManager = null;
        if (port.length() == 0) {
            int i = R.string.install_notif_pair_waiting_title;
            InstallTarget installTarget = this.target;
            if (installTarget == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget = null;
            }
            string = getString(i, installTarget.getDisplayName());
        } else {
            int i2 = R.string.install_notif_pair_ready_title;
            InstallTarget installTarget2 = this.target;
            if (installTarget2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget2 = null;
            }
            string = getString(i2, installTarget2.getDisplayName(), port);
        }
        Intrinsics.checkNotNull(string);
        String str = body;
        Notification notificationBuild = new Notification.Builder(requireContext(), NOTIF_CHANNEL_ID).setSmallIcon(Icon.createWithResource(requireContext(), R.drawable.ic_app_icon_24dp)).setContentTitle(string).setContentText(str).setStyle(new Notification.BigTextStyle().bigText(str)).addAction(new Notification.Action.Builder(Icon.createWithResource(requireContext(), R.drawable.ic_app_icon_24dp), getString(R.string.install_notif_pair_action), broadcast).addRemoteInput(remoteInputBuild).build()).setOngoing(true).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        NotificationManager notificationManager2 = this.nm;
        if (notificationManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
        } else {
            notificationManager = notificationManager2;
        }
        notificationManager.notify(1001, notificationBuild);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePairingNotification(String port) {
        String string = getString(R.string.install_notif_pair_ready_body);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        postPairingNotification(port, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showInstallSection(Context ctx) {
        getBinding().sectionConsent.setVisibility(8);
        getBinding().sectionDevOptions.setVisibility(8);
        getBinding().sectionWirelessDebug.setVisibility(8);
        getBinding().sectionPair.setVisibility(8);
        getBinding().sectionInstall.setVisibility(0);
        getBinding().sectionDone.setVisibility(8);
        getBinding().tvInstallStatus.setText(ctx.getString(R.string.install_wizard_connecting));
    }

    /* JADX WARN: Code duplicated, block: B:129:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:96:0x01c0 A[LOOP:0: B:3:0x0009->B:96:0x01c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x01ca  */
    private final File downloadApk(Context ctx) throws InterruptedException {
        String str;
        InstallTarget installTarget;
        Throwable th;
        Throwable th2;
        int i;
        String str2 = TAG;
        int i2 = 1;
        while (true) {
            int i3 = R.string.install_wizard_downloading_pack;
            InstallTarget installTarget2 = this.target;
            if (installTarget2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget2 = null;
            }
            String string = ctx.getString(i3, installTarget2.getDisplayName());
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            setInstallStatus(string, false);
            File filesDir = ctx.getFilesDir();
            InstallTarget installTarget3 = this.target;
            if (installTarget3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget3 = null;
            }
            File file = new File(filesDir, installTarget3.getApkAssetName());
            Request.Builder builder = new Request.Builder();
            InstallTarget installTarget4 = this.target;
            if (installTarget4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget4 = null;
            }
            try {
                Response responseExecute = this.httpClient.newCall(builder.url(installTarget4.getDownloadUrl()).build()).execute();
                try {
                    Response response = responseExecute;
                    ResponseBody responseBodyBody = response.body();
                    if (!response.isSuccessful() || responseBodyBody == null) {
                        str = str2;
                        try {
                            int iCode = response.code();
                            InstallTarget installTarget5 = this.target;
                            if (installTarget5 == null) {
                                try {
                                    Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                                    installTarget5 = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    str2 = str;
                                    throw th;
                                }
                            }
                            String str3 = "downloadApk attempt " + i2 + "/3: HTTP " + iCode + " for " + installTarget5.getDownloadUrl();
                            str2 = str;
                            Log.w(str2, str3);
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(responseExecute, null);
                            file.delete();
                            if (i2 < 3) {
                                Thread.sleep(((long) i2) * 1000);
                            }
                            if (i2 != 3) {
                                int i4 = R.string.install_wizard_apk_missing;
                                installTarget = this.target;
                                if (installTarget == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                                    installTarget = null;
                                }
                                String string2 = ctx.getString(i4, installTarget.getDisplayName());
                                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                setInstallStatus(string2, true);
                                return null;
                            }
                            i2++;
                        } catch (Throwable th4) {
                            th = th4;
                            str2 = str;
                            th = th;
                            throw th;
                        }
                    } else {
                        try {
                            long contentLength = responseBodyBody.getContentLength();
                            InputStream inputStreamByteStream = responseBodyBody.byteStream();
                            try {
                                try {
                                    InputStream inputStream = inputStreamByteStream;
                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    try {
                                        FileOutputStream fileOutputStream2 = fileOutputStream;
                                        byte[] bArr = new byte[8192];
                                        int i5 = -1;
                                        str = str2;
                                        int i6 = -1;
                                        long j = 0;
                                        while (true) {
                                            try {
                                                int i7 = inputStream.read(bArr);
                                                if (i7 != i5) {
                                                    fileOutputStream2.write(bArr, 0, i7);
                                                    bArr = bArr;
                                                    j += (long) i7;
                                                    if (contentLength > 0) {
                                                        int i8 = (int) ((((long) 100) * j) / contentLength);
                                                        i = i6;
                                                        if (i8 != i) {
                                                            int i9 = R.string.install_wizard_downloading_pack_progress;
                                                            InstallTarget installTarget6 = this.target;
                                                            if (installTarget6 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                                                                installTarget6 = null;
                                                            }
                                                            InputStream inputStream2 = inputStream;
                                                            String string3 = ctx.getString(i9, installTarget6.getDisplayName(), Integer.valueOf(i8));
                                                            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                                                            setInstallStatus(string3, false);
                                                            inputStream = inputStream2;
                                                            i5 = -1;
                                                            i6 = i8;
                                                        }
                                                    } else {
                                                        i = i6;
                                                    }
                                                    inputStream = inputStream;
                                                    i6 = i;
                                                    i5 = -1;
                                                } else {
                                                    Unit unit2 = Unit.INSTANCE;
                                                    CloseableKt.closeFinally(fileOutputStream, null);
                                                    Unit unit3 = Unit.INSTANCE;
                                                    CloseableKt.closeFinally(inputStreamByteStream, null);
                                                    try {
                                                        CloseableKt.closeFinally(responseExecute, null);
                                                        return file;
                                                    } catch (IOException e) {
                                                        e = e;
                                                        str2 = str;
                                                    }
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                Throwable th6 = th;
                                                try {
                                                    throw th6;
                                                } catch (Throwable th7) {
                                                    CloseableKt.closeFinally(fileOutputStream, th6);
                                                    throw th7;
                                                }
                                            }
                                            InstallTarget installTarget7 = this.target;
                                            if (installTarget7 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                                                installTarget7 = null;
                                            }
                                            Log.w(str2, "downloadApk attempt " + i2 + "/3 failed for " + installTarget7.getDownloadUrl(), e);
                                            file.delete();
                                            if (i2 < 3) {
                                                Thread.sleep(((long) i2) * 1000);
                                            }
                                            if (i2 != 3) {
                                                int i10 = R.string.install_wizard_apk_missing;
                                                installTarget = this.target;
                                                if (installTarget == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                                                    installTarget = null;
                                                }
                                                String string4 = ctx.getString(i10, installTarget.getDisplayName());
                                                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                                                setInstallStatus(string4, true);
                                                return null;
                                            }
                                            i2++;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        str = str2;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    th2 = th;
                                    try {
                                        throw th2;
                                    } catch (Throwable th10) {
                                        CloseableKt.closeFinally(inputStreamByteStream, th2);
                                        throw th10;
                                    }
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                str = str2;
                                th2 = th;
                                throw th2;
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            str = str2;
                            th = th;
                            throw th;
                        }
                    }
                    th = th3;
                    str2 = str;
                } catch (Throwable th13) {
                    th = th13;
                }
                try {
                    throw th;
                } catch (Throwable th14) {
                    CloseableKt.closeFinally(responseExecute, th);
                    throw th14;
                }
            } catch (IOException e2) {
                e = e2;
            }
        }
    }

    private final boolean isSignatureMismatch(String output) {
        String str = output;
        return StringsKt.contains$default((CharSequence) str, (CharSequence) "INSTALL_FAILED_UPDATE_INCOMPATIBLE", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "signatures do not match", false, 2, (Object) null);
    }

    private final boolean isConnected(String result) {
        if (result == null) {
            return false;
        }
        String str = result;
        return StringsKt.contains$default((CharSequence) str, (CharSequence) "connected to", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) "already connected", false, 2, (Object) null);
    }

    static /* synthetic */ String connectWithRetry$default(InstallWizardFragment installWizardFragment, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 4;
        }
        return installWizardFragment.connectWithRetry(str, str2, i);
    }

    private final String connectWithRetry(String connectAddr, String tag, int maxAttempts) throws InterruptedException {
        int i = 1;
        if (1 > maxAttempts) {
            return null;
        }
        while (true) {
            String strConnect = AdbClient.connect(connectAddr);
            if (isConnected(strConnect)) {
                return strConnect;
            }
            Log.w(TAG, tag + " connect attempt " + i + "/" + maxAttempts + " to " + connectAddr + " failed: " + (strConnect != null ? StringsKt.trim((CharSequence) strConnect).toString() : null));
            if (i < maxAttempts) {
                Thread.sleep(((long) i) * 750);
            }
            if (i == maxAttempts) {
                return strConnect;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doInstall(final Context ctx) {
        this.mainHandler.removeCallbacks(this.showPairStepFallback);
        this.executor.submit(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                InstallWizardFragment.doInstall$lambda$18(ctx, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doInstall$lambda$18(Context ctx, InstallWizardFragment this$0) throws InterruptedException {
        String string;
        Intrinsics.checkNotNullParameter(ctx, "$ctx");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!sServerStarted) {
            if (!AdbClient.init(ctx.getFilesDir().getAbsolutePath())) {
                String string2 = ctx.getString(R.string.install_wizard_adb_init_failed);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                this$0.setInstallStatus(string2, true);
                return;
            }
            sServerStarted = true;
        }
        String str = this$0.connectionPort.length() > 0 ? "127.0.0.1:" + this$0.connectionPort : "127.0.0.1";
        String strConnectWithRetry$default = connectWithRetry$default(this$0, str, "doInstall", 0, 4, null);
        String str2 = "(no output)";
        if (!this$0.isConnected(strConnectWithRetry$default)) {
            int i = R.string.install_wizard_connect_failed;
            if (strConnectWithRetry$default != null && (string = StringsKt.trim((CharSequence) strConnectWithRetry$default).toString()) != null) {
                str2 = string;
            }
            String string3 = ctx.getString(i, str2);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            this$0.setInstallStatus(string3, true);
            return;
        }
        this$0.lastConnectAddr = str;
        AdbClient.runCommand("-s", str, "shell", "settings", "put", "global", "hidden_api_policy", "1");
        File fileDownloadApk = this$0.downloadApk(ctx);
        if (fileDownloadApk == null) {
            return;
        }
        int i2 = R.string.install_wizard_installing;
        InstallTarget installTarget = this$0.target;
        if (installTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget = null;
        }
        String string4 = ctx.getString(i2, installTarget.getDisplayName());
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        this$0.setInstallStatus(string4, false);
        AdbClient.CommandResult commandResultRunCommandChecked = AdbClient.runCommandChecked("-s", str, "install", "-r", fileDownloadApk.getAbsolutePath());
        if (!commandResultRunCommandChecked.isSuccess()) {
            String output = commandResultRunCommandChecked.output;
            Intrinsics.checkNotNullExpressionValue(output, "output");
            if (this$0.isSignatureMismatch(output)) {
                int i3 = R.string.install_wizard_reinstalling_incompatible;
                InstallTarget installTarget2 = this$0.target;
                if (installTarget2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                    installTarget2 = null;
                }
                String string5 = ctx.getString(i3, installTarget2.getDisplayName());
                Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                this$0.setInstallStatus(string5, false);
                String[] strArr = new String[4];
                strArr[0] = "-s";
                strArr[1] = str;
                strArr[2] = "uninstall";
                InstallTarget installTarget3 = this$0.target;
                if (installTarget3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                    installTarget3 = null;
                }
                strArr[3] = installTarget3.getPackageName();
                AdbClient.runCommand(strArr);
                commandResultRunCommandChecked = AdbClient.runCommandChecked("-s", str, "install", "-r", fileDownloadApk.getAbsolutePath());
            }
        }
        if (!commandResultRunCommandChecked.isSuccess()) {
            int i4 = R.string.install_wizard_install_failed;
            String output2 = commandResultRunCommandChecked.output;
            Intrinsics.checkNotNullExpressionValue(output2, "output");
            String string6 = StringsKt.trim((CharSequence) output2).toString();
            String string7 = ctx.getString(i4, string6.length() != 0 ? string6 : "(no output)");
            Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
            this$0.setInstallStatus(string7, true);
            return;
        }
        InstallTarget installTarget4 = this$0.target;
        if (installTarget4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget4 = null;
        }
        if (installTarget4.getPermissionsToGrant().isEmpty()) {
            this$0.grantStorageAccessAndFinish();
            return;
        }
        String string8 = ctx.getString(R.string.install_wizard_granting);
        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
        this$0.setInstallStatus(string8, false);
        InstallTarget installTarget5 = this$0.target;
        if (installTarget5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget5 = null;
        }
        List<String> permissionsToGrant = installTarget5.getPermissionsToGrant();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(permissionsToGrant, 10));
        for (String str3 : permissionsToGrant) {
            String[] strArr2 = new String[7];
            strArr2[0] = "-s";
            strArr2[1] = str;
            strArr2[2] = "shell";
            strArr2[3] = "pm";
            strArr2[4] = "grant";
            InstallTarget installTarget6 = this$0.target;
            if (installTarget6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
                installTarget6 = null;
            }
            strArr2[5] = installTarget6.getPackageName();
            strArr2[6] = str3;
            arrayList.add(TuplesKt.to(str3, AdbClient.runCommandChecked(strArr2)));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((AdbClient.CommandResult) ((Pair) obj).component2()).isSuccess()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            this$0.grantStorageAccessAndFinish();
            return;
        }
        String string9 = ctx.getString(R.string.install_wizard_grant_failed, CollectionsKt.joinToString$default(arrayList3, StringUtils.LF, null, null, 0, null, new Function1<Pair<? extends String, ? extends AdbClient.CommandResult>, CharSequence>() { // from class: tech.ula.library.ui.InstallWizardFragment$doInstall$1$msg$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final CharSequence invoke2(Pair<String, AdbClient.CommandResult> pair) {
                Intrinsics.checkNotNullParameter(pair, "<name for destructuring parameter 0>");
                String strComponent1 = pair.component1();
                String output3 = pair.component2().output;
                Intrinsics.checkNotNullExpressionValue(output3, "output");
                return strComponent1 + ": FAILED — " + StringsKt.trim((CharSequence) output3).toString();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Pair<? extends String, ? extends AdbClient.CommandResult> pair) {
                return invoke2((Pair<String, AdbClient.CommandResult>) pair);
            }
        }, 30, null));
        Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
        this$0.setInstallStatus(string9, true);
    }

    private final void grantStorageAccessAndFinish() {
        String str = this.lastConnectAddr;
        if (str.length() == 0) {
            str = "127.0.0.1";
        }
        String[] strArr = new String[8];
        strArr[0] = "-s";
        strArr[1] = str;
        strArr[2] = "shell";
        strArr[3] = "appops";
        strArr[4] = "set";
        InstallTarget installTarget = this.target;
        if (installTarget == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ARG_TARGET);
            installTarget = null;
        }
        strArr[5] = installTarget.getPackageName();
        strArr[6] = "MANAGE_EXTERNAL_STORAGE";
        strArr[7] = "allow";
        AdbClient.runCommand(strArr);
        this.mainHandler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment.grantStorageAccessAndFinish$lambda$20(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void grantStorageAccessAndFinish$lambda$20(InstallWizardFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0._binding != null) {
            this$0.showDone();
        }
    }

    private final void setInstallStatus(final String msg, final boolean failed) {
        this.mainHandler.post(new Runnable() { // from class: tech.ula.library.ui.InstallWizardFragment$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                InstallWizardFragment.setInstallStatus$lambda$21(this.f$0, msg, failed);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setInstallStatus$lambda$21(InstallWizardFragment this$0, String msg, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        if (this$0._binding == null) {
            return;
        }
        this$0.getBinding().tvInstallStatus.setText(msg);
        this$0.getBinding().progressInstall.setVisibility(z ? 8 : 0);
    }

    private final String permissionLabel(String permission) {
        int iHashCode = permission.hashCode();
        if (iHashCode == -1925850455) {
            if (!permission.equals("android.permission.POST_NOTIFICATIONS")) {
                return permission;
            }
            String string = getString(R.string.install_wizard_permission_notifications);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        if (iHashCode == -960106723) {
            if (!permission.equals("android.permission.USE_CUSTOM_VIRTUAL_MACHINE")) {
                return permission;
            }
            String string2 = getString(R.string.install_wizard_permission_custom_vm);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            return string2;
        }
        if (iHashCode != 885933881 || !permission.equals("android.permission.MANAGE_VIRTUAL_MACHINE")) {
            return permission;
        }
        String string3 = getString(R.string.install_wizard_permission_manage_vm);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        return string3;
    }

    private final void stopKeepAliveService() {
        requireContext().stopService(new Intent(requireContext(), (Class<?>) InstallWizardKeepAliveService.class));
    }

    private final void showDone() {
        NotificationManager notificationManager = this.nm;
        if (notificationManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nm");
            notificationManager = null;
        }
        notificationManager.cancel(1001);
        stopKeepAliveService();
        sPaired = false;
        this.doInstallDispatched = false;
        this.installDone = true;
        if (this.doneDispatched) {
            return;
        }
        this.doneDispatched = true;
        KeyEventDispatcher.Component componentRequireActivity = requireActivity();
        Intrinsics.checkNotNull(componentRequireActivity, "null cannot be cast to non-null type tech.ula.library.ui.InstallWizardFragment.CompanionAppSetupListener");
        ((CompanionAppSetupListener) componentRequireActivity).companionAppSetupComplete();
        FragmentKt.findNavController(this).popBackStack();
    }
}
