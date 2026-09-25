package tech.ula.library;

import android.app.Service;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.view.PointerIconCompat;
import androidx.documentfile.provider.DocumentFile;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.google.mlkit.md.LiveBarcodeScanningActivity;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import com.termux.app.TermuxActivity;
import com.termux.app.TermuxService;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobKt__JobKt;
import net.sqlcipher.database.SQLiteDatabase;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.apache.http.HttpStatus;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.AvfSessionManager;
import tech.ula.library.utils.BusyboxExecutor;
import tech.ula.library.utils.ExecutionResult;
import tech.ula.library.utils.FilesystemManager;
import tech.ula.library.utils.LocalServerManager;
import tech.ula.library.utils.NotificationConstructor;
import tech.ula.library.utils.ProotDebugLogger;
import tech.ula.library.utils.QemuSessionManager;
import tech.ula.library.utils.SuccessfulExecution;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: ServerService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018\u0000 \u008a\u00012\u00020\u00012\u00020\u0002:\u0002\u008a\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u0006H\u0082@¢\u0006\u0002\u00109J\u000e\u0010:\u001a\u000207H\u0082@¢\u0006\u0002\u0010;J\u000e\u0010<\u001a\u000207H\u0082@¢\u0006\u0002\u0010;J\u0010\u0010=\u001a\u00020,2\u0006\u0010>\u001a\u00020?H\u0002J\u0019\u0010@\u001a\u0002002\u0006\u0010A\u001a\u00020'2\u0006\u0010B\u001a\u00020'H\u0086 J9\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020'2\u0006\u0010E\u001a\u00020'2\u0006\u0010F\u001a\u0002002\u0006\u0010G\u001a\u00020,2\u0006\u0010H\u001a\u00020,2\u0006\u0010I\u001a\u00020\u0006H\u0086 J\u0019\u0010J\u001a\u0002002\u0006\u0010K\u001a\u0002002\u0006\u0010F\u001a\u000200H\u0086 J\u0019\u0010L\u001a\u0002002\u0006\u0010A\u001a\u00020'2\u0006\u0010B\u001a\u00020'H\u0086 J\u0010\u0010M\u001a\u0002072\u0006\u0010N\u001a\u00020'H\u0002J\u000e\u0010O\u001a\u0002072\u0006\u0010P\u001a\u00020,J\b\u0010Q\u001a\u000207H\u0002J\u0016\u0010R\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010TJ\u0014\u0010U\u001a\u0004\u0018\u00010V2\b\u0010>\u001a\u0004\u0018\u00010?H\u0016J\b\u0010W\u001a\u000207H\u0016J\b\u0010X\u001a\u000207H\u0016J\"\u0010Y\u001a\u0002002\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010Z\u001a\u0002002\u0006\u0010[\u001a\u000200H\u0016J\u0012\u0010\\\u001a\u0002072\b\u0010]\u001a\u0004\u0018\u00010?H\u0016J.\u0010^\u001a\u0002072\u0006\u0010_\u001a\u0002002\u0006\u0010`\u001a\u0002002\u0006\u0010a\u001a\u00020'2\u0006\u0010Z\u001a\u0002002\u0006\u0010b\u001a\u000200J\u0016\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020eH\u0082@¢\u0006\u0002\u0010fJ\u000e\u0010g\u001a\u0002072\u0006\u0010>\u001a\u00020?J\u0010\u0010h\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0016\u0010i\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010TJ\u0016\u0010j\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010TJ\u000e\u0010k\u001a\u0002072\u0006\u0010a\u001a\u00020'J\u0010\u0010l\u001a\u0002072\u0006\u0010a\u001a\u00020'H\u0002J\b\u0010m\u001a\u000207H\u0002J\u001a\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020'2\b\b\u0002\u0010p\u001a\u00020,H\u0002J\u0018\u0010n\u001a\u0002072\u0006\u0010o\u001a\u00020'2\u0006\u0010q\u001a\u00020'H\u0002J\b\u0010r\u001a\u000207H\u0002J\b\u0010s\u001a\u000207H\u0002J\u0010\u0010t\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0016\u0010u\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010TJ\u0010\u0010v\u001a\u0002072\u0006\u0010S\u001a\u00020\u0007H\u0002J\u0018\u0010w\u001a\u0002072\u0006\u0010S\u001a\u00020\u00072\u0006\u0010N\u001a\u00020'H\u0002J\u0018\u0010x\u001a\u0002072\u0006\u0010S\u001a\u00020\u00072\u0006\u0010y\u001a\u000200H\u0002J\u0010\u0010z\u001a\u0002072\u0006\u0010N\u001a\u00020'H\u0002J\u000e\u0010{\u001a\u0002002\u0006\u0010|\u001a\u000200J\u0017\u0010}\u001a\u0002072\u0006\u0010~\u001a\u00020\u007fH\u0082@¢\u0006\u0003\u0010\u0080\u0001J\n\u0010\u0081\u0001\u001a\u00020'H\u0086 J\u0018\u0010\u0082\u0001\u001a\u0002072\u0006\u0010B\u001a\u00020'H\u0082@¢\u0006\u0003\u0010\u0083\u0001J)\u0010\u0084\u0001\u001a\u0002002\u000e\u0010\u0085\u0001\u001a\t\u0012\u0004\u0012\u00020'0\u0086\u00012\u0007\u0010\u0087\u0001\u001a\u00020'H\u0086 ¢\u0006\u0003\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0007H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0013\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0013\u001a\u0004\b#\u0010$R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00060.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u008b\u0001"}, d2 = {"Ltech/ula/library/ServerService;", "Landroid/app/Service;", "Lkotlinx/coroutines/CoroutineScope;", "()V", "activeSessions", "", "", "Ltech/ula/library/model/entities/Session;", "avfCleanupJob", "Lkotlinx/coroutines/Job;", "avfSessionManager", "Ltech/ula/library/utils/AvfSessionManager;", "broadcaster", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "busyboxExecutor", "Ltech/ula/library/utils/BusyboxExecutor;", "getBusyboxExecutor", "()Ltech/ula/library/utils/BusyboxExecutor;", "busyboxExecutor$delegate", "Lkotlin/Lazy;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "droidFileJob", "job", "Lkotlinx/coroutines/CompletableJob;", "lastSession", "localServerManager", "Ltech/ula/library/utils/LocalServerManager;", "getLocalServerManager", "()Ltech/ula/library/utils/LocalServerManager;", "localServerManager$delegate", "notificationManager", "Ltech/ula/library/utils/NotificationConstructor;", "getNotificationManager", "()Ltech/ula/library/utils/NotificationConstructor;", "notificationManager$delegate", "pendingFailureDialogType", "", "qemuCleanupJob", "qemuSessionManager", "Ltech/ula/library/utils/QemuSessionManager;", "sessionActivatedPending", "", "sessionsCurrentlyStarting", "", "uriFlags", "", "uriMode", "uriPath", "uriSock", "uriSysCall", "waitingForStart", "cleanUpFilesystem", "", "filesystemId", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanUpOrphanedAvfSessions", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanUpOrphanedQemuSessions", "clientIsPresent", "intent", "Landroid/content/Intent;", "droidFileClientRun", "sockPath", "filePath", "droidFileSendDent", "direntsFileName", "name", "fd", "isDir", "is64", "cnt", "droidFileSendFd", "client", "droidFileServerRun", "getClient", "packageName", "getUri", "getPerms", "intentRequest", "killSession", "session", "(Ltech/ula/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onBind", "Landroid/os/IBinder;", "onCreate", "onDestroy", "onStartCommand", "flags", "startId", "onTaskRemoved", "rootIntent", AbstractCircuitBreaker.PROPERTY_NAME, "sock", "sysCall", "path", "mode", "prepareSession", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processGetDirPermResult", "removeSession", "repairAvfSession", "repairQemuSession", "requestUriPerms", "runDroidFileClient", "runDroidFileServer", "sendDialogBroadcast", PubkeyDatabase.FIELD_PUBKEY_TYPE, "terminal", JsonMarshaller.MESSAGE, "sendSessionActivatedBroadcast", "sendSessionReadyBroadcast", "startClient", "startSession", "startSshClient", "startVncClient", "startVncClientOnPort", "port", "startXsdlClient", "staticMethod", "int", "stopApp", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stringFromJNI", "tailFile", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toyboxMain", "args", "", "logPath", "([Ljava/lang/String;Ljava/lang/String;)I", "updateSession", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ServerService extends Service implements CoroutineScope {
    public static final String SERVER_SERVICE_RESULT = "tech.ula.library.ServerService.RESULT";
    private Job avfCleanupJob;
    private AvfSessionManager avfSessionManager;
    private LocalBroadcastManager broadcaster;
    private Job droidFileJob;
    private Session lastSession;
    private String pendingFailureDialogType;
    private Job qemuCleanupJob;
    private QemuSessionManager qemuSessionManager;
    private boolean sessionActivatedPending;
    private int uriFlags;
    private int uriMode;
    private int uriSock;
    private int uriSysCall;
    private boolean waitingForStart;
    private final CompletableJob job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
    private String uriPath = "";
    private final Map<Long, Session> activeSessions = new LinkedHashMap();
    private final Set<Long> sessionsCurrentlyStarting = new LinkedHashSet();

    /* JADX INFO: renamed from: notificationManager$delegate, reason: from kotlin metadata */
    private final Lazy notificationManager = LazyKt.lazy(new Function0<NotificationConstructor>() { // from class: tech.ula.library.ServerService$notificationManager$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final NotificationConstructor invoke() {
            return new NotificationConstructor(this.this$0);
        }
    });

    /* JADX INFO: renamed from: busyboxExecutor$delegate, reason: from kotlin metadata */
    private final Lazy busyboxExecutor = LazyKt.lazy(new Function0<BusyboxExecutor>() { // from class: tech.ula.library.ServerService$busyboxExecutor$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final BusyboxExecutor invoke() {
            ServerService serverService = this.this$0;
            String nativeLibraryDir = serverService.getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            UlaFiles ulaFiles = new UlaFiles(serverService, nativeLibraryDir, null, 4, null);
            ServerService serverService2 = this.this$0;
            SharedPreferences sharedPreferences = serverService2.getSharedPreferences(serverService2.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return new BusyboxExecutor(ulaFiles, new ProotDebugLogger(sharedPreferences, ulaFiles), null, 4, null);
        }
    });

    /* JADX INFO: renamed from: localServerManager$delegate, reason: from kotlin metadata */
    private final Lazy localServerManager = LazyKt.lazy(new Function0<LocalServerManager>() { // from class: tech.ula.library.ServerService$localServerManager$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final LocalServerManager invoke() {
            String path = this.this$0.getFilesDir().getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            BusyboxExecutor busyboxExecutor = this.this$0.getBusyboxExecutor();
            ServerService serverService = this.this$0;
            SharedPreferences sharedPreferences = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return new LocalServerManager(path, busyboxExecutor, sharedPreferences, null, 8, null);
        }
    });

    /* JADX INFO: renamed from: tech.ula.library.ServerService$cleanUpFilesystem$1, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0}, l = {1159}, m = "cleanUpFilesystem", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.cleanUpFilesystem(0L, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$cleanUpOrphanedAvfSessions$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 1, 1}, l = {381, 388}, m = "cleanUpOrphanedAvfSessions", n = {"this", "avfSessions", "mgr"}, s = {"L$0", "L$0", "L$1"})
    static final class C02141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02141(Continuation<? super C02141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.cleanUpOrphanedAvfSessions(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$cleanUpOrphanedQemuSessions$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 1, 1, 2}, l = {HttpStatus.SC_PRECONDITION_FAILED, HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE, 425}, m = "cleanUpOrphanedQemuSessions", n = {"this", "qemuSessions", "mgr", "mgr"}, s = {"L$0", "L$0", "L$1", "L$0"})
    static final class C02151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02151(Continuation<? super C02151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.cleanUpOrphanedQemuSessions(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$killSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2}, l = {585, 607, 618}, m = "killSession", n = {"this", "session", "mgr", "this", "session", "mgr", "this", "session", "mgr"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C02171 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02171(Continuation<? super C02171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.killSession(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$prepareSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 0, 0, 0, 1}, l = {800, 805}, m = "prepareSession", n = {"this", "filesystem", "filesystemManager", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "toyboxResult", "this"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "L$0"})
    static final class C02241 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02241(Continuation<? super C02241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.prepareSession(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$repairAvfSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2}, l = {1004, PointerIconCompat.TYPE_TEXT, PointerIconCompat.TYPE_NO_DROP, PointerIconCompat.TYPE_ZOOM_OUT}, m = "repairAvfSession", n = {"this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session", "avfMgr"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C02251 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02251(Continuation<? super C02251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.repairAvfSession(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$repairQemuSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2}, l = {1036, 1040, 1044, 1051}, m = "repairQemuSession", n = {"this", "session", "qemuMgr", "this", "session", "qemuMgr", "this", "session", "qemuMgr"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C02271 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02271(Continuation<? super C02271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.repairQemuSession(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 12, 13, 13}, l = {844, 863, 868, 872, 876, 889, 905, 912, 917, 924, 928, 943, 956, 978}, m = "startSession", n = {"this", "session", "this", "session", "qemuMgr", "this", "session", "qemuMgr", "this", "session", "qemuMgr", "this", "session", "qemuMgr", "this", "session", "qemuMgr", "this", "session", "this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session", "avfMgr", "this", "session"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C02291 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02291(Continuation<? super C02291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.startSession(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$stopApp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0}, l = {1059}, m = "stopApp", n = {"this"}, s = {"L$0"})
    static final class C02351 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02351(Continuation<? super C02351> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.stopApp(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$tailFile$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService", f = "ServerService.kt", i = {0, 0, 1, 1, 1, 1}, l = {666, 694}, m = "tailFile", n = {"this", "file", "this", "file", "raf", "lastKnownLength"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "J$0"})
    static final class C02361 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02361(Continuation<? super C02361> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ServerService.this.tailFile(null, this);
        }
    }

    public final native int droidFileClientRun(String sockPath, String filePath);

    public final native int droidFileSendDent(String direntsFileName, String name, int fd, boolean isDir, boolean is64, long cnt);

    public final native int droidFileSendFd(int client, int fd);

    public final native int droidFileServerRun(String sockPath, String filePath);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public final int staticMethod(int i) {
        return i;
    }

    public final native String stringFromJNI();

    public final native int toyboxMain(String[] args, String logPath);

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getDefault().plus(this.job);
    }

    static {
        System.loadLibrary("toybox");
        System.loadLibrary("droid_files");
    }

    public final void getUri(boolean getPerms) {
        Uri uri;
        int i;
        int i2;
        try {
            Log.d("droid_files", "uriSysCall = " + this.uriSysCall);
            String strReplace$default = StringsKt.replace$default(this.uriPath, "//", "/", false, 4, (Object) null);
            this.uriPath = strReplace$default;
            String strRemoveSuffix = StringsKt.removeSuffix(strReplace$default, (CharSequence) "/");
            this.uriPath = strRemoveSuffix;
            int i3 = 0;
            List listSplit$default = StringsKt.split$default((CharSequence) strRemoveSuffix, new String[]{"/"}, false, 0, 6, (Object) null);
            String str = "/" + listSplit$default.get(1);
            if (listSplit$default.size() >= 3) {
                str = str + "/" + listSplit$default.get(2);
                listSplit$default = CollectionsKt.drop(listSplit$default, 1);
            }
            List listDrop = CollectionsKt.drop(listSplit$default, 2);
            if (Intrinsics.areEqual(str, "/sdcard/Download") && listDrop.size() > 0) {
                str = str + "/" + listDrop.get(0);
                listDrop = CollectionsKt.drop(listDrop, 1);
            }
            String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            if (!new File(new UlaFiles(this, nativeLibraryDir, null, 4, null).getSdcardDir(), StringsKt.removePrefix(str, (CharSequence) "/sdcard/")).exists()) {
                droidFileSendFd(this.uriSock, -1);
                return;
            }
            if (Intrinsics.areEqual(str, "/sdcard")) {
                uri = Uri.parse("content://com.android.externalstorage.documents/tree/primary");
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            } else {
                ServerService serverService = this;
                SharedPreferences sharedPreferences = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
                String string = sharedPreferences.getString("uriStore", "");
                HashMap map = new HashMap();
                Intrinsics.checkNotNull(string);
                if (!Intrinsics.areEqual(string, "")) {
                    Object objFromJson = new Gson().fromJson(string, new TypeToken<HashMap<String, String>>() { // from class: tech.ula.library.ServerService$getUri$hashType$1
                    }.getType());
                    Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
                    map = (HashMap) objFromJson;
                }
                if (!map.containsKey(str)) {
                    if (getPerms) {
                        requestUriPerms(str);
                        return;
                    } else {
                        Log.d("droid_files", "no perms and not getting them");
                        droidFileSendFd(this.uriSock, -1);
                        return;
                    }
                }
                uri = Uri.parse((String) map.get(str));
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            }
            DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(this, uri);
            if (documentFileFromTreeUri == null) {
                Log.d("droid_files", "filetree == null");
                droidFileSendFd(this.uriSock, -1);
                return;
            }
            DocumentFile documentFileCreateFile = documentFileFromTreeUri;
            for (IndexedValue indexedValue : CollectionsKt.withIndex(listDrop)) {
                int index = indexedValue.getIndex();
                String str2 = (String) indexedValue.component2();
                DocumentFile documentFileFindFile = documentFileCreateFile.findFile(str2);
                if (documentFileFindFile != null && index == CollectionsKt.getLastIndex(listDrop) && ((i2 = this.uriSysCall) == 5 || i2 == 6)) {
                    documentFileFindFile.delete();
                    droidFileSendFd(this.uriSock, 0);
                    return;
                }
                if (documentFileFindFile == null && index == CollectionsKt.getLastIndex(listDrop) && ((i = this.uriSysCall) == 3 || i == 4)) {
                    documentFileCreateFile.createDirectory(str2);
                    droidFileSendFd(this.uriSock, 0);
                    return;
                } else {
                    documentFileCreateFile = (documentFileFindFile == null && index == CollectionsKt.getLastIndex(listDrop) && (this.uriFlags & 64) == 64) ? documentFileCreateFile.createFile("application/userland", str2) : documentFileFindFile;
                    if (documentFileCreateFile == null) {
                        Log.d("droid_files", "newFileTree == null");
                        droidFileSendFd(this.uriSock, -1);
                        return;
                    }
                }
            }
            int i4 = this.uriSysCall;
            String str3 = "r";
            int i5 = 8;
            if (i4 != 7 && i4 != 8) {
                int i6 = this.uriFlags;
                if ((i6 & 7) == 2) {
                    str3 = "rw";
                } else if ((i6 & 7) == 1) {
                    str3 = "w";
                }
                if ((i6 & 512) == 512) {
                    str3 = str3 + "t";
                }
                if ((this.uriFlags & 1024) == 1024) {
                    str3 = str3 + "a";
                }
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = getContentResolver().openFileDescriptor(documentFileCreateFile.getUri(), str3);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    Log.d("droid_files", "open FD = -1");
                    droidFileSendFd(this.uriSock, -1);
                    return;
                } else {
                    Log.d("droid_files", "open FD = " + parcelFileDescriptorOpenFileDescriptor.getFd());
                    droidFileSendFd(this.uriSock, parcelFileDescriptorOpenFileDescriptor.getFd());
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return;
                }
            }
            Log.d("droid_files", "getdents uriSysCall = " + i4);
            if (!documentFileCreateFile.isDirectory()) {
                Log.d("droid_files", "dirents but not a directory");
                droidFileSendFd(this.uriSock, -1);
                return;
            }
            DocumentFile[] documentFileArrListFiles = documentFileCreateFile.listFiles();
            Intrinsics.checkNotNullExpressionValue(documentFileArrListFiles, "listFiles(...)");
            if (this.uriFlags >= documentFileArrListFiles.length) {
                Log.d("droid_files", "Should be last dirents call");
                droidFileSendFd(this.uriSock, 1);
                return;
            }
            int i7 = 1;
            for (IndexedValue indexedValue2 : ArraysKt.withIndex(documentFileArrListFiles)) {
                int index2 = indexedValue2.getIndex();
                DocumentFile documentFile = (DocumentFile) indexedValue2.component2();
                if (index2 == this.uriFlags) {
                    String name = documentFile.getName();
                    Intrinsics.checkNotNull(name);
                    DocumentFile documentFileFindFile2 = documentFileCreateFile.findFile(name);
                    ContentResolver contentResolver = getContentResolver();
                    Intrinsics.checkNotNull(documentFileFindFile2);
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor2 = contentResolver.openFileDescriptor(documentFileFindFile2.getUri(), "r");
                    String nativeLibraryDir2 = getApplicationInfo().nativeLibraryDir;
                    Intrinsics.checkNotNullExpressionValue(nativeLibraryDir2, "nativeLibraryDir");
                    String str4 = new UlaFiles(this, nativeLibraryDir2, null, 4, null).getSupportDir().getAbsolutePath() + "/droid_files_getdents";
                    String name2 = documentFile.getName();
                    Intrinsics.checkNotNull(name2);
                    Intrinsics.checkNotNull(parcelFileDescriptorOpenFileDescriptor2);
                    droidFileSendDent(str4, name2, parcelFileDescriptorOpenFileDescriptor2.getFd(), documentFile.isDirectory(), this.uriSysCall == i5 ? i7 : i3, index2);
                    parcelFileDescriptorOpenFileDescriptor2.close();
                }
                i3 = i3;
                i7 = i7;
                i5 = 8;
            }
            droidFileSendFd(this.uriSock, i3);
        } catch (Exception unused) {
            Log.d("droid_files", "open FD = -1");
            droidFileSendFd(this.uriSock, -1);
        }
    }

    public final void requestUriPerms(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intent intent = new Intent(this, (Class<?>) RequestDirPermissionsActivity.class);
        intent.setType("get_dir");
        intent.putExtra("path", path);
        intent.addFlags(335544320);
        startActivity(intent);
    }

    public final void processGetDirPermResult(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent.getIntExtra("resultCode", 0) != -1) {
            droidFileSendFd(this.uriSock, -1);
            return;
        }
        ServerService serverService = this;
        SharedPreferences sharedPreferences = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        String string = sharedPreferences.getString("uriStore", "");
        Object map = new HashMap();
        Intrinsics.checkNotNull(string);
        if (!Intrinsics.areEqual(string, "")) {
            map = new Gson().fromJson(string, new TypeToken<HashMap<String, String>>() { // from class: tech.ula.library.ServerService$processGetDirPermResult$hashType$1
            }.getType());
            Intrinsics.checkNotNullExpressionValue(map, "fromJson(...)");
        }
        String stringExtra = intent.getStringExtra("path");
        Intrinsics.checkNotNull(stringExtra);
        String stringExtra2 = intent.getStringExtra("uri");
        Intrinsics.checkNotNull(stringExtra2);
        ((HashMap) map).put(stringExtra, stringExtra2);
        SharedPreferences sharedPreferences2 = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
        editorEdit.putString("uriStore", new Gson().toJson(map, new TypeToken<HashMap<String, String>>() { // from class: tech.ula.library.ServerService$processGetDirPermResult$1$hashType$1
        }.getType()));
        editorEdit.apply();
        getUri(false);
    }

    public final void open(int sock, int sysCall, String path, int flags, int mode) {
        Intrinsics.checkNotNullParameter(path, "path");
        Log.d("droid_files", AbstractCircuitBreaker.PROPERTY_NAME);
        this.uriSock = sock;
        this.uriSysCall = sysCall;
        this.uriPath = path;
        this.uriFlags = flags;
        this.uriMode = mode;
        getUri(true);
    }

    private final NotificationConstructor getNotificationManager() {
        return (NotificationConstructor) this.notificationManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runDroidFileServer() {
        String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        UlaFiles ulaFiles = new UlaFiles(this, nativeLibraryDir, null, 4, null);
        droidFileServerRun(ulaFiles.getSupportDir().getAbsolutePath() + "/droid_files_socket", ulaFiles.getSupportDir().getAbsolutePath() + "/test.txt");
    }

    private final void runDroidFileClient(String path) {
        String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        droidFileClientRun(new UlaFiles(this, nativeLibraryDir, null, 4, null).getSupportDir().getAbsolutePath() + "/droid_files_socket", path);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BusyboxExecutor getBusyboxExecutor() {
        return (BusyboxExecutor) this.busyboxExecutor.getValue();
    }

    private final LocalServerManager getLocalServerManager() {
        return (LocalServerManager) this.localServerManager.getValue();
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onCreate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onCreate$1", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02191(Continuation<? super C02191> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02191(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ServerService.this.runDroidFileServer();
            return Unit.INSTANCE;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this);
        Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(...)");
        this.broadcaster = localBroadcastManager;
        ServerService serverService = this;
        this.droidFileJob = BuildersKt__Builders_commonKt.launch$default(serverService, null, null, new C02191(null), 3, null);
        Log.d("nativeTest", stringFromJNI());
        this.avfCleanupJob = BuildersKt__Builders_commonKt.launch$default(serverService, null, null, new C02202(null), 3, null);
        this.qemuCleanupJob = BuildersKt__Builders_commonKt.launch$default(serverService, null, null, new C02213(null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onCreate$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onCreate$2", f = "ServerService.kt", i = {}, l = {358}, m = "invokeSuspend", n = {}, s = {})
    static final class C02202 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02202(Continuation<? super C02202> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02202(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02202) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.cleanUpOrphanedAvfSessions(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onCreate$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onCreate$3", f = "ServerService.kt", i = {}, l = {359}, m = "invokeSuspend", n = {}, s = {})
    static final class C02213 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02213(Continuation<? super C02213> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02213(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02213) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.cleanUpOrphanedQemuSessions(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d8 A[Catch: all -> 0x010a, TRY_LEAVE, TryCatch #0 {all -> 0x010a, blocks: (B:42:0x00ce, B:43:0x00d2, B:45:0x00d8), top: B:52:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object cleanUpOrphanedAvfSessions(Continuation<? super Unit> continuation) throws Throwable {
        C02141 c02141;
        ServerService serverService;
        AvfSessionManager avfSessionManager;
        List<Session> list;
        if (continuation instanceof C02141) {
            c02141 = (C02141) continuation;
            if ((c02141.label & Integer.MIN_VALUE) != 0) {
                c02141.label -= Integer.MIN_VALUE;
            } else {
                c02141 = new C02141(continuation);
            }
        } else {
            c02141 = new C02141(continuation);
        }
        Object objWithContext = c02141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02141.label;
        if (i != 0) {
            if (i == 1) {
                serverService = (ServerService) c02141.L$0;
                ResultKt.throwOnFailure(objWithContext);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                avfSessionManager = (AvfSessionManager) c02141.L$1;
                list = (List) c02141.L$0;
                ResultKt.throwOnFailure(objWithContext);
            }
            if (!((Boolean) objWithContext).booleanValue()) {
                return Unit.INSTANCE;
            }
            try {
                for (Session session : list) {
                    Log.i("ServerService", "Stopping any orphaned AVF session for " + session.getName() + " left over from a previous process");
                    avfSessionManager.stopSession(session);
                }
                avfSessionManager.unbind();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                avfSessionManager.unbind();
                throw th;
            }
        }
        ResultKt.throwOnFailure(objWithContext);
        CoroutineDispatcher io2 = Dispatchers.getIO();
        ServerService$cleanUpOrphanedAvfSessions$avfSessions$1 serverService$cleanUpOrphanedAvfSessions$avfSessions$1 = new ServerService$cleanUpOrphanedAvfSessions$avfSessions$1(this, null);
        c02141.L$0 = this;
        c02141.label = 1;
        objWithContext = BuildersKt.withContext(io2, serverService$cleanUpOrphanedAvfSessions$avfSessions$1, c02141);
        if (objWithContext == coroutine_suspended) {
            return coroutine_suspended;
        }
        serverService = this;
        ArrayList arrayList = new ArrayList();
        for (Object obj : (Iterable) objWithContext) {
            if (((Session) obj).getExecutionType() == ExecutionType.AVF) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return Unit.INSTANCE;
        }
        AvfSessionManager avfSessionManager2 = new AvfSessionManager(serverService);
        if (!avfSessionManager2.isAvfRunnerInstalled()) {
            return Unit.INSTANCE;
        }
        CoroutineDispatcher io3 = Dispatchers.getIO();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(avfSessionManager2, null);
        c02141.L$0 = arrayList2;
        c02141.L$1 = avfSessionManager2;
        c02141.label = 2;
        Object objWithContext2 = BuildersKt.withContext(io3, anonymousClass2, c02141);
        if (objWithContext2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        avfSessionManager = avfSessionManager2;
        list = arrayList2;
        objWithContext = objWithContext2;
        if (!((Boolean) objWithContext).booleanValue()) {
            return Unit.INSTANCE;
        }
        while (r11.hasNext()) {
            Log.i("ServerService", "Stopping any orphaned AVF session for " + session.getName() + " left over from a previous process");
            avfSessionManager.stopSession(session);
        }
        avfSessionManager.unbind();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$cleanUpOrphanedAvfSessions$2, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$cleanUpOrphanedAvfSessions$2", f = "ServerService.kt", i = {}, l = {388}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ AvfSessionManager $mgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AvfSessionManager avfSessionManager, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mgr = avfSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$mgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$mgr.isAvfRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ec A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #1 {all -> 0x003a, blocks: (B:14:0x0035, B:50:0x00e6, B:52:0x00ec), top: B:63:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[LOOP:0: B:50:0x00e6->B:68:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object cleanUpOrphanedQemuSessions(Continuation<? super Unit> continuation) throws Throwable {
        C02151 c02151;
        ServerService serverService;
        List list;
        QemuSessionManager qemuSessionManager;
        QemuSessionManager qemuSessionManager2;
        Iterator it;
        Session session;
        if (continuation instanceof C02151) {
            c02151 = (C02151) continuation;
            if ((c02151.label & Integer.MIN_VALUE) != 0) {
                c02151.label -= Integer.MIN_VALUE;
            } else {
                c02151 = new C02151(continuation);
            }
        } else {
            c02151 = new C02151(continuation);
        }
        Object objWithContext = c02151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02151.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            ServerService$cleanUpOrphanedQemuSessions$qemuSessions$1 serverService$cleanUpOrphanedQemuSessions$qemuSessions$1 = new ServerService$cleanUpOrphanedQemuSessions$qemuSessions$1(this, null);
            c02151.L$0 = this;
            c02151.label = 1;
            objWithContext = BuildersKt.withContext(io2, serverService$cleanUpOrphanedQemuSessions$qemuSessions$1, c02151);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            serverService = this;
        } else {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) c02151.L$1;
                    qemuSessionManager2 = (QemuSessionManager) c02151.L$0;
                    try {
                        ResultKt.throwOnFailure(objWithContext);
                        while (it.hasNext()) {
                            session = (Session) it.next();
                            Log.i("ServerService", "Stopping any orphaned QEMU session for " + session.getName() + " left over from a previous process");
                            c02151.L$0 = qemuSessionManager2;
                            c02151.L$1 = it;
                            c02151.label = 3;
                            if (qemuSessionManager2.stopSession(session, c02151) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        qemuSessionManager2.unbind();
                        return Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        qemuSessionManager2.unbind();
                        throw th;
                    }
                }
                qemuSessionManager = (QemuSessionManager) c02151.L$1;
                list = (List) c02151.L$0;
                ResultKt.throwOnFailure(objWithContext);
                if (!((Boolean) objWithContext).booleanValue()) {
                    return Unit.INSTANCE;
                }
                try {
                    Iterator it2 = list.iterator();
                    qemuSessionManager2 = qemuSessionManager;
                    it = it2;
                    while (it.hasNext()) {
                        session = (Session) it.next();
                        Log.i("ServerService", "Stopping any orphaned QEMU session for " + session.getName() + " left over from a previous process");
                        c02151.L$0 = qemuSessionManager2;
                        c02151.L$1 = it;
                        c02151.label = 3;
                        if (qemuSessionManager2.stopSession(session, c02151) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    qemuSessionManager2.unbind();
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    qemuSessionManager2 = qemuSessionManager;
                    qemuSessionManager2.unbind();
                    throw th;
                }
            }
            serverService = (ServerService) c02151.L$0;
            ResultKt.throwOnFailure(objWithContext);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : (Iterable) objWithContext) {
            if (((Session) obj).getExecutionType() == ExecutionType.QEMU) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return Unit.INSTANCE;
        }
        QemuSessionManager qemuSessionManager3 = new QemuSessionManager(serverService);
        if (!qemuSessionManager3.isQemuRunnerInstalled()) {
            return Unit.INSTANCE;
        }
        CoroutineDispatcher io3 = Dispatchers.getIO();
        C02162 c02162 = new C02162(qemuSessionManager3, null);
        c02151.L$0 = arrayList2;
        c02151.L$1 = qemuSessionManager3;
        c02151.label = 2;
        Object objWithContext2 = BuildersKt.withContext(io3, c02162, c02151);
        if (objWithContext2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        list = arrayList2;
        objWithContext = objWithContext2;
        qemuSessionManager = qemuSessionManager3;
        if (!((Boolean) objWithContext).booleanValue()) {
            return Unit.INSTANCE;
        }
        Iterator it3 = list.iterator();
        qemuSessionManager2 = qemuSessionManager;
        it = it3;
        while (it.hasNext()) {
            session = (Session) it.next();
            Log.i("ServerService", "Stopping any orphaned QEMU session for " + session.getName() + " left over from a previous process");
            c02151.L$0 = qemuSessionManager2;
            c02151.L$1 = it;
            c02151.label = 3;
            if (qemuSessionManager2.stopSession(session, c02151) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        qemuSessionManager2.unbind();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$cleanUpOrphanedQemuSessions$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$cleanUpOrphanedQemuSessions$2", f = "ServerService.kt", i = {}, l = {HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE}, m = "invokeSuspend", n = {}, s = {})
    static final class C02162 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ QemuSessionManager $mgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02162(QemuSessionManager qemuSessionManager, Continuation<? super C02162> continuation) {
            super(2, continuation);
            this.$mgr = qemuSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02162(this.$mgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02162) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$mgr.isQemuRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        String stringExtra = intent != null ? intent.getStringExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE) : null;
        if (stringExtra == null) {
            return 1;
        }
        switch (stringExtra.hashCode()) {
            case -1884364225:
                if (stringExtra.equals("stopAll")) {
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass9(null), 3, null);
                    break;
                }
                break;
            case -1884364097:
                if (stringExtra.equals("stopApp")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("app");
                    Intrinsics.checkNotNull(parcelableExtra);
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass6((App) parcelableExtra, null), 3, null);
                    break;
                }
                break;
            case -1470868433:
                if (stringExtra.equals("filesystemIsBeingDeleted")) {
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass8(intent.getLongExtra("filesystemId", -1L), null), 3, null);
                    break;
                }
                break;
            case -892481550:
                if (stringExtra.equals(NotificationCompat.CATEGORY_STATUS)) {
                    if (this.waitingForStart) {
                        sendSessionReadyBroadcast();
                    }
                    if (this.sessionActivatedPending) {
                        sendSessionActivatedBroadcast();
                    }
                    String str = this.pendingFailureDialogType;
                    if (str != null) {
                        sendDialogBroadcast$default(this, str, false, 2, null);
                    }
                    break;
                }
                break;
            case -762536956:
                if (stringExtra.equals("repairAvf")) {
                    Parcelable parcelableExtra2 = intent.getParcelableExtra("session");
                    Intrinsics.checkNotNull(parcelableExtra2);
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass4((Session) parcelableExtra2, null), 3, null);
                    break;
                }
                break;
            case -385992791:
                if (stringExtra.equals("getDirPermsResult")) {
                    Log.d("droid_files", "getDirPerms");
                    processGetDirPermResult(intent);
                    break;
                }
                break;
            case -318370553:
                if (stringExtra.equals("prepare")) {
                    Parcelable parcelableExtra3 = intent.getParcelableExtra("filesystem");
                    Intrinsics.checkNotNull(parcelableExtra3);
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new C02222((Filesystem) parcelableExtra3, null), 3, null);
                    break;
                }
                break;
            case 3291998:
                if (stringExtra.equals("kill")) {
                    Parcelable parcelableExtra4 = intent.getParcelableExtra("session");
                    Intrinsics.checkNotNull(parcelableExtra4);
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass7((Session) parcelableExtra4, null), 3, null);
                    break;
                }
                break;
            case 109757538:
                if (stringExtra.equals("start")) {
                    Parcelable parcelableExtra5 = intent.getParcelableExtra("session");
                    Intrinsics.checkNotNull(parcelableExtra5);
                    Session session = (Session) parcelableExtra5;
                    if (this.sessionsCurrentlyStarting.add(Long.valueOf(session.getId()))) {
                        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C02233(session, null), 3, null);
                    }
                    break;
                }
                break;
            case 1602814918:
                if (stringExtra.equals("restartRunningSession")) {
                    Parcelable parcelableExtra6 = intent.getParcelableExtra("session");
                    Intrinsics.checkNotNull(parcelableExtra6);
                    startClient((Session) parcelableExtra6);
                    break;
                }
                break;
            case 2131618793:
                if (stringExtra.equals("repairQemu")) {
                    Parcelable parcelableExtra7 = intent.getParcelableExtra("session");
                    Intrinsics.checkNotNull(parcelableExtra7);
                    BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass5((Session) parcelableExtra7, null), 3, null);
                    break;
                }
                break;
        }
        return 1;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$2", f = "ServerService.kt", i = {}, l = {453}, m = "invokeSuspend", n = {}, s = {})
    static final class C02222 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02222(Filesystem filesystem, Continuation<? super C02222> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02222(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02222) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.prepareSession(this.$filesystem, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$3", f = "ServerService.kt", i = {}, l = {463}, m = "invokeSuspend", n = {}, s = {})
    static final class C02233 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02233(Session session, Continuation<? super C02233> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02233(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02233) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (ServerService.this.startSession(this.$session, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ServerService.this.sessionsCurrentlyStarting.remove(Boxing.boxLong(this.$session.getId()));
                return Unit.INSTANCE;
            } catch (Throwable th) {
                ServerService.this.sessionsCurrentlyStarting.remove(Boxing.boxLong(this.$session.getId()));
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$4, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$4", f = "ServerService.kt", i = {}, l = {472}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Session session, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass4(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.repairAvfSession(this.$session, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$5, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$5", f = "ServerService.kt", i = {}, l = {TarConstants.XSTAR_ATIME_OFFSET}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Session session, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass5(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.repairQemuSession(this.$session, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$6, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$6", f = "ServerService.kt", i = {}, l = {480}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ App $app;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(App app, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$app = app;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass6(this.$app, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.stopApp(this.$app, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$7, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$7", f = "ServerService.kt", i = {}, l = {TarConstants.XSTAR_CTIME_OFFSET}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(Session session, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass7(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.killSession(this.$session, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$8, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$8", f = "ServerService.kt", i = {}, l = {492}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass8 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $filesystemId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(long j, Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
            this.$filesystemId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass8(this.$filesystemId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass8) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ServerService.this.cleanUpFilesystem(this.$filesystemId, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$onStartCommand$9, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$onStartCommand$9", f = "ServerService.kt", i = {}, l = {497}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass9 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        AnonymousClass9(Continuation<? super AnonymousClass9> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new AnonymousClass9(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ServerService serverService;
            Iterator it;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Map map = ServerService.this.activeSessions;
                serverService = ServerService.this;
                it = map.entrySet().iterator();
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$1;
                serverService = (ServerService) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (it.hasNext()) {
                Session session = (Session) ((Map.Entry) it.next()).getValue();
                this.L$0 = serverService;
                this.L$1 = it;
                this.label = 1;
                if (serverService.killSession(session, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        super.onTaskRemoved(rootIntent);
        JobKt__JobKt.cancel$default(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        stopForeground(true);
        stopSelf();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Job job = this.droidFileJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        Collection<Session> collectionValues = this.activeSessions.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            Session session = (Session) obj;
            if (session.getExecutionType() == ExecutionType.AVF || session.getExecutionType() == ExecutionType.QEMU) {
                arrayList.add(obj);
            }
        }
        final ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            new Thread(new Runnable() { // from class: tech.ula.library.ServerService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    ServerService.onDestroy$lambda$7(arrayList2, this);
                }
            }, "serverservice-shutdown-cleanup").start();
        }
        AvfSessionManager avfSessionManager = this.avfSessionManager;
        if (avfSessionManager != null) {
            avfSessionManager.unbind();
        }
        this.avfSessionManager = null;
        QemuSessionManager qemuSessionManager = this.qemuSessionManager;
        if (qemuSessionManager != null) {
            qemuSessionManager.unbind();
        }
        this.qemuSessionManager = null;
        JobKt__JobKt.cancel$default(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDestroy$lambda$7(List sessionsToStop, ServerService this$0) throws InterruptedException {
        Intrinsics.checkNotNullParameter(sessionsToStop, "$sessionsToStop");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BuildersKt__BuildersKt.runBlocking$default(null, new ServerService$onDestroy$1$1(sessionsToStop, this$0, null), 1, null);
    }

    private final void removeSession(Session session) {
        this.activeSessions.remove(Long.valueOf(session.getPid()));
        if (this.activeSessions.isEmpty()) {
            stopForeground(true);
            stopSelf();
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$updateSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$updateSession$1", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02371 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02371(Session session, Continuation<? super C02371> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ServerService.this.new C02371(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02371) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            UlaDatabase.INSTANCE.getInstance(ServerService.this).sessionDao().updateSession(this.$session);
            return Unit.INSTANCE;
        }
    }

    private final Job updateSession(Session session) {
        return BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C02371(session, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x010f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x0110  */
    /* JADX WARN: Code duplicated, block: B:49:0x011a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0137  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object killSession(Session session, Continuation<? super Unit> continuation) throws Throwable {
        C02171 c02171;
        ServerService serverService;
        ServerService serverService2;
        Session session2;
        QemuSessionManager qemuSessionManager;
        Session session3;
        AvfSessionManager avfSessionManager;
        if (continuation instanceof C02171) {
            c02171 = (C02171) continuation;
            if ((c02171.label & Integer.MIN_VALUE) != 0) {
                c02171.label -= Integer.MIN_VALUE;
            } else {
                c02171 = new C02171(continuation);
            }
        } else {
            c02171 = new C02171(continuation);
        }
        Object objWithContext = c02171.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02171.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            if (session.getExecutionType() == ExecutionType.AVF) {
                AvfSessionManager avfSessionManager2 = this.avfSessionManager;
                if (avfSessionManager2 == null) {
                    avfSessionManager2 = new AvfSessionManager(this);
                    this.avfSessionManager = avfSessionManager2;
                }
                CoroutineDispatcher io2 = Dispatchers.getIO();
                C02182 c02182 = new C02182(avfSessionManager2, null);
                c02171.L$0 = this;
                c02171.L$1 = session;
                c02171.L$2 = avfSessionManager2;
                c02171.label = 1;
                Object objWithContext2 = BuildersKt.withContext(io2, c02182, c02171);
                if (objWithContext2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session;
                avfSessionManager = avfSessionManager2;
                objWithContext = objWithContext2;
                serverService = this;
                if (((Boolean) objWithContext).booleanValue()) {
                    avfSessionManager.stopSession(session3);
                }
                avfSessionManager.unbind();
                serverService.avfSessionManager = null;
                session = session3;
            } else if (session.getExecutionType() == ExecutionType.QEMU) {
                QemuSessionManager qemuSessionManager2 = this.qemuSessionManager;
                if (qemuSessionManager2 == null) {
                    qemuSessionManager2 = new QemuSessionManager(this);
                    this.qemuSessionManager = qemuSessionManager2;
                }
                CoroutineDispatcher io3 = Dispatchers.getIO();
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(qemuSessionManager2, null);
                c02171.L$0 = this;
                c02171.L$1 = session;
                c02171.L$2 = qemuSessionManager2;
                c02171.label = 2;
                Object objWithContext3 = BuildersKt.withContext(io3, anonymousClass3, c02171);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                serverService2 = this;
                session2 = session;
                qemuSessionManager = qemuSessionManager2;
                objWithContext = objWithContext3;
                if (((Boolean) objWithContext).booleanValue()) {
                    CoroutineDispatcher io4 = Dispatchers.getIO();
                    ServerService$killSession$stopped$1 serverService$killSession$stopped$1 = new ServerService$killSession$stopped$1(qemuSessionManager, session2, null);
                    c02171.L$0 = serverService2;
                    c02171.L$1 = session2;
                    c02171.L$2 = qemuSessionManager;
                    c02171.label = 3;
                    objWithContext = BuildersKt.withContext(io4, serverService$killSession$stopped$1, c02171);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    session3 = session2;
                    serverService = serverService2;
                    if (!((Boolean) objWithContext).booleanValue()) {
                        Log.w("ServerService", "QEMU session for " + session3.getName() + " may not have fully stopped; the next start attempt could fail");
                    }
                } else {
                    session3 = session2;
                    serverService = serverService2;
                }
                qemuSessionManager.unbind();
                serverService.qemuSessionManager = null;
                session = session3;
            } else {
                getLocalServerManager().stopService(session);
                serverService = this;
            }
        } else if (i == 1) {
            avfSessionManager = (AvfSessionManager) c02171.L$2;
            session3 = (Session) c02171.L$1;
            serverService = (ServerService) c02171.L$0;
            ResultKt.throwOnFailure(objWithContext);
            if (((Boolean) objWithContext).booleanValue()) {
                avfSessionManager.stopSession(session3);
            }
            avfSessionManager.unbind();
            serverService.avfSessionManager = null;
            session = session3;
        } else {
            if (i == 2) {
                qemuSessionManager = (QemuSessionManager) c02171.L$2;
                session2 = (Session) c02171.L$1;
                serverService2 = (ServerService) c02171.L$0;
                ResultKt.throwOnFailure(objWithContext);
                if (((Boolean) objWithContext).booleanValue()) {
                    CoroutineDispatcher io5 = Dispatchers.getIO();
                    ServerService$killSession$stopped$1 serverService$killSession$stopped$2 = new ServerService$killSession$stopped$1(qemuSessionManager, session2, null);
                    c02171.L$0 = serverService2;
                    c02171.L$1 = session2;
                    c02171.L$2 = qemuSessionManager;
                    c02171.label = 3;
                    objWithContext = BuildersKt.withContext(io5, serverService$killSession$stopped$2, c02171);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    session3 = session2;
                    serverService = serverService2;
                } else {
                    session3 = session2;
                    serverService = serverService2;
                }
                qemuSessionManager.unbind();
                serverService.qemuSessionManager = null;
                session = session3;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                qemuSessionManager = (QemuSessionManager) c02171.L$2;
                session3 = (Session) c02171.L$1;
                serverService = (ServerService) c02171.L$0;
                ResultKt.throwOnFailure(objWithContext);
            }
            if (!((Boolean) objWithContext).booleanValue()) {
                Log.w("ServerService", "QEMU session for " + session3.getName() + " may not have fully stopped; the next start attempt could fail");
            }
            qemuSessionManager.unbind();
            serverService.qemuSessionManager = null;
            session = session3;
        }
        serverService.removeSession(session);
        session.setActive(false);
        serverService.updateSession(session);
        if (Intrinsics.areEqual(session.getServiceType(), ServiceType.Ssh.INSTANCE)) {
            serverService.sendBroadcast(new Intent("tech.ula.CLOSE_TERMINAL"));
            try {
                serverService.startService(new Intent(serverService, (Class<?>) TermuxService.class).setAction("com.termux.service_stop"));
            } catch (IllegalStateException e) {
                Log.w("ServerService", "failed to stop TermuxService", e);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$killSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$killSession$2", f = "ServerService.kt", i = {}, l = {585}, m = "invokeSuspend", n = {}, s = {})
    static final class C02182 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ AvfSessionManager $mgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02182(AvfSessionManager avfSessionManager, Continuation<? super C02182> continuation) {
            super(2, continuation);
            this.$mgr = avfSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02182(this.$mgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02182) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$mgr.isAvfRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$killSession$3, reason: invalid class name */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$killSession$3", f = "ServerService.kt", i = {}, l = {607}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ QemuSessionManager $mgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(QemuSessionManager qemuSessionManager, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$mgr = qemuSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$mgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$mgr.isQemuRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x0087 A[Catch: all -> 0x003d, Exception -> 0x00c6, TRY_LEAVE, TryCatch #2 {Exception -> 0x00c6, all -> 0x003d, blocks: (B:13:0x0039, B:27:0x007f, B:29:0x0087, B:31:0x0092, B:33:0x009a, B:34:0x00a2, B:36:0x00a8, B:38:0x00b1), top: B:45:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x009a A[Catch: all -> 0x003d, Exception -> 0x00c6, LOOP:1: B:31:0x0092->B:33:0x009a, LOOP_END, TryCatch #2 {Exception -> 0x00c6, all -> 0x003d, blocks: (B:13:0x0039, B:27:0x007f, B:29:0x0087, B:31:0x0092, B:33:0x009a, B:34:0x00a2, B:36:0x00a8, B:38:0x00b1), top: B:45:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a8 A[Catch: all -> 0x003d, Exception -> 0x00c6, TryCatch #2 {Exception -> 0x00c6, all -> 0x003d, blocks: (B:13:0x0039, B:27:0x007f, B:29:0x0087, B:31:0x0092, B:33:0x009a, B:34:0x00a2, B:36:0x00a8, B:38:0x00b1), top: B:45:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a2 A[EDGE_INSN: B:50:0x00a2->B:34:0x00a2 BREAK  A[LOOP:1: B:31:0x0092->B:33:0x009a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [T, java.lang.String] */
    public final Object tailFile(String str, Continuation<? super Unit> continuation) throws Throwable {
        C02361 c02361;
        ServerService serverService;
        File file;
        long length;
        ServerService serverService2;
        File file2;
        RandomAccessFile randomAccessFile;
        long length2;
        Ref.ObjectRef objectRef;
        String str2;
        ?? line;
        if (continuation instanceof C02361) {
            c02361 = (C02361) continuation;
            if ((c02361.label & Integer.MIN_VALUE) != 0) {
                c02361.label -= Integer.MIN_VALUE;
            } else {
                c02361 = new C02361(continuation);
            }
        } else {
            c02361 = new C02361(continuation);
        }
        Object obj = c02361.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02361.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            serverService = this;
            file = new File(str);
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                length = c02361.J$0;
                randomAccessFile = (RandomAccessFile) c02361.L$2;
                file2 = (File) c02361.L$1;
                serverService2 = (ServerService) c02361.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    do {
                        length2 = file2.length();
                        if (length2 > length) {
                            randomAccessFile.seek(length);
                            objectRef = new Ref.ObjectRef();
                            str2 = "";
                            while (true) {
                                line = randomAccessFile.readLine();
                                objectRef.element = line;
                                if (line != 0) {
                                    break;
                                }
                                T t = objectRef.element;
                                Intrinsics.checkNotNull(t);
                                str2 = (String) t;
                            }
                            if (!Intrinsics.areEqual(str2, "")) {
                                Intrinsics.checkNotNull(str2);
                                serverService2.sendDialogBroadcast("extractionStatus", str2);
                            }
                            length = length2;
                        }
                        c02361.L$0 = serverService2;
                        c02361.L$1 = file2;
                        c02361.L$2 = randomAccessFile;
                        c02361.J$0 = length;
                        c02361.label = 2;
                    } while (DelayKt.delay(100L, c02361) != coroutine_suspended);
                    return coroutine_suspended;
                } catch (Exception unused) {
                    randomAccessFile.close();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    randomAccessFile.close();
                    throw th;
                }
            }
            file = (File) c02361.L$1;
            serverService = (ServerService) c02361.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (!file.exists()) {
            c02361.L$0 = serverService;
            c02361.L$1 = file;
            c02361.label = 1;
            if (DelayKt.delay(100L, c02361) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
        length = file.length();
        serverService2 = serverService;
        file2 = file;
        randomAccessFile = randomAccessFile2;
        do {
            length2 = file2.length();
            if (length2 > length) {
                randomAccessFile.seek(length);
                objectRef = new Ref.ObjectRef();
                str2 = "";
                while (true) {
                    line = randomAccessFile.readLine();
                    objectRef.element = line;
                    if (line != 0) {
                        break;
                        break;
                    }
                    T t2 = objectRef.element;
                    Intrinsics.checkNotNull(t2);
                    str2 = (String) t2;
                }
                if (!Intrinsics.areEqual(str2, "")) {
                    Intrinsics.checkNotNull(str2);
                    serverService2.sendDialogBroadcast("extractionStatus", str2);
                }
                length = length2;
            }
            c02361.L$0 = serverService2;
            c02361.L$1 = file2;
            c02361.L$2 = randomAccessFile;
            c02361.J$0 = length;
            c02361.label = 2;
        } while (DelayKt.delay(100L, c02361) != coroutine_suspended);
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:31:0x0205  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object prepareSession(Filesystem filesystem, Continuation<? super Unit> continuation) throws Throwable {
        C02241 c02241;
        FilesystemManager filesystemManager;
        Filesystem filesystem2;
        ServerService serverService;
        Function1<String, Unit> function1;
        int i;
        ServerService serverService2;
        if (continuation instanceof C02241) {
            c02241 = (C02241) continuation;
            if ((c02241.label & Integer.MIN_VALUE) != 0) {
                c02241.label -= Integer.MIN_VALUE;
            } else {
                c02241 = new C02241(continuation);
            }
        } else {
            c02241 = new C02241(continuation);
        }
        Object objExtractFilesystem = c02241.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02241.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objExtractFilesystem);
            startForeground(1000, getNotificationManager().buildPersistentServiceNotification());
            ServerService serverService3 = this;
            UlaDatabase.INSTANCE.getInstance(serverService3).filesystemDao();
            String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            UlaFiles ulaFiles = new UlaFiles(serverService3, nativeLibraryDir, null, 4, null);
            filesystemManager = new FilesystemManager(ulaFiles, getBusyboxExecutor(), 0 == true ? 1 : 0, 4, null);
            Function1<String, Unit> function2 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$prepareSession$listener$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ServerService.sendDialogBroadcast$default(this.this$0, it, false, 2, null);
                }
            };
            if (!filesystemManager.hasFilesystemBeenSuccessfullyExtracted(String.valueOf(filesystem.getId()))) {
                sendDialogBroadcast$default(this, "extractionStarted", false, 2, null);
                String[] strArr = {"toybox", ArchiveStreamFactory.TAR, "-xzvf", ulaFiles.getFilesDir().getAbsolutePath() + "/" + filesystem.getId() + "/support/rootfs.tar.gz", "--exclude", NotificationCompat.CATEGORY_SYSTEM, "--exclude", "dev", "--exclude", "proc", "--exclude", "data", "--exclude", "mnt", "--exclude", "host-rootfs", "--exclude", "support", "--exclude", "sdcard", "--exclude", "etc/mtab", "--exclude", "usr/local/bin/sudo", "--exclude", "etc/profile.d/userland_profile.sh", "--exclude", "etc/ld.so.preload", "-C", ulaFiles.getFilesDir().getAbsolutePath() + "/" + filesystem.getId() + "/"};
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this, null, null, new ServerService$prepareSession$tailProcess$1(this, ulaFiles, null), 3, null);
                int i3 = toyboxMain(strArr, ulaFiles.getFilesDir().getAbsolutePath() + "/support/toyboxout");
                c02241.L$0 = this;
                filesystem2 = filesystem;
                c02241.L$1 = filesystem2;
                c02241.L$2 = filesystemManager;
                c02241.L$3 = function2;
                c02241.I$0 = i3;
                c02241.label = 1;
                if (JobKt.cancelAndJoin(jobLaunch$default, c02241) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                serverService = this;
                function1 = function2;
                i = i3;
            } else {
                sendSessionReadyBroadcast();
            }
            return Unit.INSTANCE;
        }
        if (i2 == 1) {
            i = c02241.I$0;
            function1 = (Function1) c02241.L$3;
            filesystemManager = (FilesystemManager) c02241.L$2;
            filesystem2 = (Filesystem) c02241.L$1;
            serverService = (ServerService) c02241.L$0;
            ResultKt.throwOnFailure(objExtractFilesystem);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            serverService2 = (ServerService) c02241.L$0;
            ResultKt.throwOnFailure(objExtractFilesystem);
        }
        if (!Intrinsics.areEqual((ExecutionResult) objExtractFilesystem, SuccessfulExecution.INSTANCE)) {
            sendDialogBroadcast$default(serverService2, "extractionCompleteFailure", false, 2, null);
            return Unit.INSTANCE;
        }
        sendDialogBroadcast$default(serverService2, "extractionCompleteSuccess", false, 2, null);
        serverService2.sendSessionReadyBroadcast();
        return Unit.INSTANCE;
        if (i == 0) {
            c02241.L$0 = serverService;
            c02241.L$1 = null;
            c02241.L$2 = null;
            c02241.L$3 = null;
            c02241.label = 2;
            objExtractFilesystem = filesystemManager.extractFilesystem(filesystem2, function1, c02241);
            if (objExtractFilesystem == coroutine_suspended) {
                return coroutine_suspended;
            }
            serverService2 = serverService;
            if (!Intrinsics.areEqual((ExecutionResult) objExtractFilesystem, SuccessfulExecution.INSTANCE)) {
                sendDialogBroadcast$default(serverService2, "extractionCompleteFailure", false, 2, null);
                return Unit.INSTANCE;
            }
            sendDialogBroadcast$default(serverService2, "extractionCompleteSuccess", false, 2, null);
            serverService2.sendSessionReadyBroadcast();
            return Unit.INSTANCE;
        }
        sendDialogBroadcast$default(serverService, "extractionCompleteFailure", false, 2, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:100:0x029a  */
    /* JADX WARN: Code duplicated, block: B:102:0x02b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:103:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:106:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:108:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ef A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:113:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:115:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:117:0x030a  */
    /* JADX WARN: Code duplicated, block: B:121:0x032f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:124:0x0349 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:127:0x0352  */
    /* JADX WARN: Code duplicated, block: B:130:0x035d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0386 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:138:0x038f  */
    /* JADX WARN: Code duplicated, block: B:147:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:150:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:153:0x0400  */
    /* JADX WARN: Code duplicated, block: B:157:0x041f  */
    /* JADX WARN: Code duplicated, block: B:164:0x042f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:? A[LOOP:0: B:155:0x0415->B:166:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x015d  */
    /* JADX WARN: Code duplicated, block: B:41:0x016d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0175  */
    /* JADX WARN: Code duplicated, block: B:45:0x0190 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x0191  */
    /* JADX WARN: Code duplicated, block: B:49:0x019f  */
    /* JADX WARN: Code duplicated, block: B:51:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:53:0x01c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:58:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:60:0x01f1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:63:0x020a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x0213  */
    /* JADX WARN: Code duplicated, block: B:69:0x021a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0226  */
    /* JADX WARN: Code duplicated, block: B:74:0x023c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:75:0x023d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0247  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x024e  */
    /* JADX WARN: Code duplicated, block: B:84:0x025a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0282  */
    /* JADX WARN: Code duplicated, block: B:98:0x0292  */
    public final Object startSession(Session session, Continuation<? super Unit> continuation) throws Throwable {
        C02291 c02291;
        ServerService serverService;
        ServerService serverService2;
        final ServerService serverService3;
        ServerService serverService4;
        QemuSessionManager qemuSessionManager;
        Object objWithContext;
        Session session2;
        QemuSessionManager qemuSessionManager2;
        Session session3;
        ServerService serverService5;
        int iIntValue;
        AvfSessionManager avfSessionManager;
        Object objWithContext2;
        Session session4;
        AvfSessionManager avfSessionManager2;
        final ServerService serverService6;
        String status;
        int iIntValue2;
        Session session5 = session;
        if (continuation instanceof C02291) {
            c02291 = (C02291) continuation;
            if ((c02291.label & Integer.MIN_VALUE) != 0) {
                c02291.label -= Integer.MIN_VALUE;
            } else {
                c02291 = new C02291(continuation);
            }
        } else {
            c02291 = new C02291(continuation);
        }
        Object objWithContext3 = c02291.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02291.label) {
            case 0:
                ResultKt.throwOnFailure(objWithContext3);
                this.waitingForStart = false;
                this.sessionActivatedPending = false;
                this.pendingFailureDialogType = null;
                sendDialogBroadcast$default(this, "serverStarting", false, 2, null);
                startForeground(1000, getNotificationManager().buildPersistentServiceNotification());
                if (session.getExecutionType() == ExecutionType.QEMU) {
                    Job job = this.qemuCleanupJob;
                    if (job != null) {
                        c02291.L$0 = this;
                        c02291.L$1 = session5;
                        c02291.label = 1;
                        if (job.join(c02291) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        serverService4 = this;
                        serverService3 = serverService4;
                    } else {
                        serverService3 = this;
                    }
                    qemuSessionManager = serverService3.qemuSessionManager;
                    if (qemuSessionManager == null) {
                        qemuSessionManager = new QemuSessionManager(serverService3);
                        serverService3.qemuSessionManager = qemuSessionManager;
                    }
                    if (!qemuSessionManager.isQemuRunnerInstalled()) {
                        serverService3.sendDialogBroadcast("qemuRunnerNotInstalled", true);
                        return Unit.INSTANCE;
                    }
                    CoroutineDispatcher io2 = Dispatchers.getIO();
                    C02302 c02302 = new C02302(qemuSessionManager, null);
                    c02291.L$0 = serverService3;
                    c02291.L$1 = session5;
                    c02291.L$2 = qemuSessionManager;
                    c02291.label = 2;
                    objWithContext = BuildersKt.withContext(io2, c02302, c02291);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    session2 = session5;
                    qemuSessionManager2 = qemuSessionManager;
                    objWithContext3 = objWithContext;
                    if (((Boolean) objWithContext3).booleanValue()) {
                        serverService3.sendDialogBroadcast("qemuUpdateAvailable", true);
                        return Unit.INSTANCE;
                    }
                    qemuSessionManager2.bind();
                    CoroutineDispatcher io3 = Dispatchers.getIO();
                    C02313 c02313 = new C02313(qemuSessionManager2, null);
                    c02291.L$0 = serverService3;
                    c02291.L$1 = session2;
                    c02291.L$2 = qemuSessionManager2;
                    c02291.label = 3;
                    objWithContext3 = BuildersKt.withContext(io3, c02313, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                        return Unit.INSTANCE;
                    }
                    CoroutineDispatcher io4 = Dispatchers.getIO();
                    ServerService$startSession$filesystem$1 serverService$startSession$filesystem$1 = new ServerService$startSession$filesystem$1(serverService3, session2, null);
                    c02291.L$0 = serverService3;
                    c02291.L$1 = session2;
                    c02291.L$2 = qemuSessionManager2;
                    c02291.label = 4;
                    objWithContext3 = BuildersKt.withContext(io4, serverService$startSession$filesystem$1, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String msg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            this.this$0.sendDialogBroadcast("extractionStatus", msg);
                        }
                    };
                    c02291.L$0 = serverService3;
                    c02291.L$1 = session2;
                    c02291.L$2 = qemuSessionManager2;
                    c02291.label = 5;
                    objWithContext3 = qemuSessionManager2.setup((Filesystem) objWithContext3, function1, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                        qemuSessionManager2.unbind();
                        serverService3.qemuSessionManager = null;
                        return Unit.INSTANCE;
                    }
                    Function1<String, Unit> function2 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String msg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            this.this$0.sendDialogBroadcast("extractionStatus", msg);
                        }
                    };
                    c02291.L$0 = serverService3;
                    c02291.L$1 = session2;
                    c02291.L$2 = qemuSessionManager2;
                    c02291.label = 6;
                    objWithContext3 = qemuSessionManager2.startSession(session2, function2, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    session3 = session2;
                    serverService5 = serverService3;
                    iIntValue = ((Number) objWithContext3).intValue();
                    if (iIntValue < 0) {
                        serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                        qemuSessionManager2.unbind();
                        serverService5.qemuSessionManager = null;
                        return Unit.INSTANCE;
                    }
                    session3.setPort(iIntValue);
                    session3.setActive(true);
                    serverService5.updateSession(session3);
                    sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                    serverService5.startClient(session3);
                    serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                    serverService5.lastSession = session3;
                    return Unit.INSTANCE;
                }
                if (session.getExecutionType() == ExecutionType.AVF) {
                    Job job2 = this.avfCleanupJob;
                    if (job2 != null) {
                        c02291.L$0 = this;
                        c02291.L$1 = session5;
                        c02291.label = 7;
                        if (job2.join(c02291) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    serverService2 = this;
                    avfSessionManager = serverService2.avfSessionManager;
                    if (avfSessionManager == null) {
                        avfSessionManager = new AvfSessionManager(serverService2);
                        serverService2.avfSessionManager = avfSessionManager;
                    }
                    if (!avfSessionManager.isAvfRunnerInstalled()) {
                        serverService2.sendDialogBroadcast("avfRunnerNotInstalled", true);
                        return Unit.INSTANCE;
                    }
                    CoroutineDispatcher io5 = Dispatchers.getIO();
                    C02324 c02324 = new C02324(avfSessionManager, null);
                    c02291.L$0 = serverService2;
                    c02291.L$1 = session5;
                    c02291.L$2 = avfSessionManager;
                    c02291.label = 8;
                    objWithContext2 = BuildersKt.withContext(io5, c02324, c02291);
                    if (objWithContext2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ServerService serverService7 = serverService2;
                    session4 = session5;
                    avfSessionManager2 = avfSessionManager;
                    objWithContext3 = objWithContext2;
                    serverService6 = serverService7;
                    if (((Boolean) objWithContext3).booleanValue()) {
                        serverService6.sendDialogBroadcast("avfUpdateAvailable", true);
                        return Unit.INSTANCE;
                    }
                    avfSessionManager2.bind();
                    CoroutineDispatcher io6 = Dispatchers.getIO();
                    C02335 c02335 = new C02335(avfSessionManager2, null);
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 9;
                    objWithContext3 = BuildersKt.withContext(io6, c02335, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService6.sendDialogBroadcast("avfSessionStartFailed", true);
                        return Unit.INSTANCE;
                    }
                    status = avfSessionManager2.getStatus(session4);
                    if (!Intrinsics.areEqual(status, "ready") && !Intrinsics.areEqual(status, "running")) {
                        CoroutineDispatcher io7 = Dispatchers.getIO();
                        ServerService$startSession$filesystem$2 serverService$startSession$filesystem$2 = new ServerService$startSession$filesystem$2(serverService6, session4, null);
                        c02291.L$0 = serverService6;
                        c02291.L$1 = session4;
                        c02291.L$2 = avfSessionManager2;
                        c02291.label = 10;
                        objWithContext3 = BuildersKt.withContext(io7, serverService$startSession$filesystem$2, c02291);
                        if (objWithContext3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Function1<String, Unit> function3 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$2
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String msg) {
                                Intrinsics.checkNotNullParameter(msg, "msg");
                                this.this$0.sendDialogBroadcast("extractionStatus", msg);
                            }
                        };
                        c02291.L$0 = serverService6;
                        c02291.L$1 = session4;
                        c02291.L$2 = avfSessionManager2;
                        c02291.label = 11;
                        objWithContext3 = avfSessionManager2.setup((Filesystem) objWithContext3, function3, c02291);
                        if (objWithContext3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        if (!((Boolean) objWithContext3).booleanValue()) {
                            serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                            avfSessionManager2.unbind();
                            serverService6.avfSessionManager = null;
                            return Unit.INSTANCE;
                        }
                    }
                    CoroutineDispatcher io8 = Dispatchers.getIO();
                    ServerService$startSession$port$2 serverService$startSession$port$2 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 12;
                    objWithContext3 = BuildersKt.withContext(io8, serverService$startSession$port$2, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    iIntValue2 = ((Number) objWithContext3).intValue();
                    if (iIntValue2 < 0 || !Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "wedged")) {
                        session3 = session4;
                        serverService5 = serverService6;
                    } else {
                        Log.w("ServerService", "AVF session for fsId=" + session4.getFilesystemId() + " hit a wedged shell; retrying once");
                        sendDialogBroadcast$default(serverService6, "serverStarting", false, 2, null);
                        CoroutineDispatcher io9 = Dispatchers.getIO();
                        C02346 c02346 = new C02346(avfSessionManager2, session4, null);
                        c02291.L$0 = serverService6;
                        c02291.L$1 = session4;
                        c02291.L$2 = avfSessionManager2;
                        c02291.label = 13;
                        objWithContext3 = BuildersKt.withContext(io9, c02346, c02291);
                        if (objWithContext3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        session3 = session4;
                        serverService5 = serverService6;
                        iIntValue2 = ((Number) objWithContext3).intValue();
                    }
                    if (iIntValue2 < 0) {
                        serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                        avfSessionManager2.unbind();
                        serverService5.avfSessionManager = null;
                        return Unit.INSTANCE;
                    }
                    session3.setPort(iIntValue2);
                    session3.setActive(true);
                    serverService5.updateSession(session3);
                    sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                    serverService5.startClient(session3);
                    serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                    serverService5.lastSession = session3;
                    return Unit.INSTANCE;
                }
                session5.setPid(getLocalServerManager().startServer(session5));
                serverService = this;
                while (!serverService.getLocalServerManager().isServerRunning(session5)) {
                    c02291.L$0 = serverService;
                    c02291.L$1 = session5;
                    c02291.label = 14;
                    if (DelayKt.delay(500L, c02291) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                session5.setActive(true);
                session3 = session5;
                serverService5 = serverService;
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 1:
                session5 = (Session) c02291.L$1;
                serverService4 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                serverService3 = serverService4;
                qemuSessionManager = serverService3.qemuSessionManager;
                if (qemuSessionManager == null) {
                    qemuSessionManager = new QemuSessionManager(serverService3);
                    serverService3.qemuSessionManager = qemuSessionManager;
                }
                if (!qemuSessionManager.isQemuRunnerInstalled()) {
                    serverService3.sendDialogBroadcast("qemuRunnerNotInstalled", true);
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io10 = Dispatchers.getIO();
                C02302 c02303 = new C02302(qemuSessionManager, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session5;
                c02291.L$2 = qemuSessionManager;
                c02291.label = 2;
                objWithContext = BuildersKt.withContext(io10, c02303, c02291);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session2 = session5;
                qemuSessionManager2 = qemuSessionManager;
                objWithContext3 = objWithContext;
                if (((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuUpdateAvailable", true);
                    return Unit.INSTANCE;
                }
                qemuSessionManager2.bind();
                CoroutineDispatcher io11 = Dispatchers.getIO();
                C02313 c02314 = new C02313(qemuSessionManager2, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 3;
                objWithContext3 = BuildersKt.withContext(io11, c02314, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io12 = Dispatchers.getIO();
                ServerService$startSession$filesystem$1 serverService$startSession$filesystem$3 = new ServerService$startSession$filesystem$1(serverService3, session2, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 4;
                objWithContext3 = BuildersKt.withContext(io12, serverService$startSession$filesystem$3, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Function1<String, Unit> function4 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 5;
                objWithContext3 = qemuSessionManager2.setup((Filesystem) objWithContext3, function4, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                Function1<String, Unit> function5 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 6;
                objWithContext3 = qemuSessionManager2.startSession(session2, function5, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session2;
                serverService5 = serverService3;
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 2:
                qemuSessionManager2 = (QemuSessionManager) c02291.L$2;
                session2 = (Session) c02291.L$1;
                serverService3 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuUpdateAvailable", true);
                    return Unit.INSTANCE;
                }
                qemuSessionManager2.bind();
                CoroutineDispatcher io13 = Dispatchers.getIO();
                C02313 c02315 = new C02313(qemuSessionManager2, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 3;
                objWithContext3 = BuildersKt.withContext(io13, c02315, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io14 = Dispatchers.getIO();
                ServerService$startSession$filesystem$1 serverService$startSession$filesystem$4 = new ServerService$startSession$filesystem$1(serverService3, session2, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 4;
                objWithContext3 = BuildersKt.withContext(io14, serverService$startSession$filesystem$4, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Function1<String, Unit> function6 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 5;
                objWithContext3 = qemuSessionManager2.setup((Filesystem) objWithContext3, function6, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                Function1<String, Unit> function7 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 6;
                objWithContext3 = qemuSessionManager2.startSession(session2, function7, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session2;
                serverService5 = serverService3;
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 3:
                qemuSessionManager2 = (QemuSessionManager) c02291.L$2;
                session2 = (Session) c02291.L$1;
                serverService3 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io15 = Dispatchers.getIO();
                ServerService$startSession$filesystem$1 serverService$startSession$filesystem$5 = new ServerService$startSession$filesystem$1(serverService3, session2, null);
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 4;
                objWithContext3 = BuildersKt.withContext(io15, serverService$startSession$filesystem$5, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Function1<String, Unit> function8 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 5;
                objWithContext3 = qemuSessionManager2.setup((Filesystem) objWithContext3, function8, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                Function1<String, Unit> function9 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 6;
                objWithContext3 = qemuSessionManager2.startSession(session2, function9, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session2;
                serverService5 = serverService3;
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 4:
                qemuSessionManager2 = (QemuSessionManager) c02291.L$2;
                session2 = (Session) c02291.L$1;
                serverService3 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                Function1<String, Unit> function10 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 5;
                objWithContext3 = qemuSessionManager2.setup((Filesystem) objWithContext3, function10, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                Function1<String, Unit> function11 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 6;
                objWithContext3 = qemuSessionManager2.startSession(session2, function11, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session2;
                serverService5 = serverService3;
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 5:
                qemuSessionManager2 = (QemuSessionManager) c02291.L$2;
                session2 = (Session) c02291.L$1;
                serverService3 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService3.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session2) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                Function1<String, Unit> function12 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$port$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService3;
                c02291.L$1 = session2;
                c02291.L$2 = qemuSessionManager2;
                c02291.label = 6;
                objWithContext3 = qemuSessionManager2.startSession(session2, function12, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                session3 = session2;
                serverService5 = serverService3;
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 6:
                qemuSessionManager2 = (QemuSessionManager) c02291.L$2;
                session3 = (Session) c02291.L$1;
                serverService5 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                iIntValue = ((Number) objWithContext3).intValue();
                if (iIntValue < 0) {
                    serverService5.sendDialogBroadcast(qemuSessionManager2.isCorrupted(session3) ? "qemuDiskCorrupted" : "qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService5.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 7:
                session5 = (Session) c02291.L$1;
                serverService2 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                avfSessionManager = serverService2.avfSessionManager;
                if (avfSessionManager == null) {
                    avfSessionManager = new AvfSessionManager(serverService2);
                    serverService2.avfSessionManager = avfSessionManager;
                }
                if (!avfSessionManager.isAvfRunnerInstalled()) {
                    serverService2.sendDialogBroadcast("avfRunnerNotInstalled", true);
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io16 = Dispatchers.getIO();
                C02324 c02325 = new C02324(avfSessionManager, null);
                c02291.L$0 = serverService2;
                c02291.L$1 = session5;
                c02291.L$2 = avfSessionManager;
                c02291.label = 8;
                objWithContext2 = BuildersKt.withContext(io16, c02325, c02291);
                if (objWithContext2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ServerService serverService8 = serverService2;
                session4 = session5;
                avfSessionManager2 = avfSessionManager;
                objWithContext3 = objWithContext2;
                serverService6 = serverService8;
                if (((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast("avfUpdateAvailable", true);
                    return Unit.INSTANCE;
                }
                avfSessionManager2.bind();
                CoroutineDispatcher io17 = Dispatchers.getIO();
                C02335 c02336 = new C02335(avfSessionManager2, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 9;
                objWithContext3 = BuildersKt.withContext(io17, c02336, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast("avfSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                status = avfSessionManager2.getStatus(session4);
                if (!Intrinsics.areEqual(status, "ready")) {
                    CoroutineDispatcher io18 = Dispatchers.getIO();
                    ServerService$startSession$filesystem$2 serverService$startSession$filesystem$6 = new ServerService$startSession$filesystem$2(serverService6, session4, null);
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 10;
                    objWithContext3 = BuildersKt.withContext(io18, serverService$startSession$filesystem$6, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Function1<String, Unit> function13 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String msg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            this.this$0.sendDialogBroadcast("extractionStatus", msg);
                        }
                    };
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 11;
                    objWithContext3 = avfSessionManager2.setup((Filesystem) objWithContext3, function13, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                        avfSessionManager2.unbind();
                        serverService6.avfSessionManager = null;
                        return Unit.INSTANCE;
                    }
                }
                CoroutineDispatcher io19 = Dispatchers.getIO();
                ServerService$startSession$port$2 serverService$startSession$port$3 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 12;
                objWithContext3 = BuildersKt.withContext(io19, serverService$startSession$port$3, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 8:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session4 = (Session) c02291.L$1;
                serverService6 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast("avfUpdateAvailable", true);
                    return Unit.INSTANCE;
                }
                avfSessionManager2.bind();
                CoroutineDispatcher io110 = Dispatchers.getIO();
                C02335 c02337 = new C02335(avfSessionManager2, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 9;
                objWithContext3 = BuildersKt.withContext(io110, c02337, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast("avfSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                status = avfSessionManager2.getStatus(session4);
                if (!Intrinsics.areEqual(status, "ready")) {
                    CoroutineDispatcher io111 = Dispatchers.getIO();
                    ServerService$startSession$filesystem$2 serverService$startSession$filesystem$7 = new ServerService$startSession$filesystem$2(serverService6, session4, null);
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 10;
                    objWithContext3 = BuildersKt.withContext(io111, serverService$startSession$filesystem$7, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Function1<String, Unit> function14 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String msg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            this.this$0.sendDialogBroadcast("extractionStatus", msg);
                        }
                    };
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 11;
                    objWithContext3 = avfSessionManager2.setup((Filesystem) objWithContext3, function14, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                        avfSessionManager2.unbind();
                        serverService6.avfSessionManager = null;
                        return Unit.INSTANCE;
                    }
                }
                CoroutineDispatcher io112 = Dispatchers.getIO();
                ServerService$startSession$port$2 serverService$startSession$port$4 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 12;
                objWithContext3 = BuildersKt.withContext(io112, serverService$startSession$port$4, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 9:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session4 = (Session) c02291.L$1;
                serverService6 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast("avfSessionStartFailed", true);
                    return Unit.INSTANCE;
                }
                status = avfSessionManager2.getStatus(session4);
                if (!Intrinsics.areEqual(status, "ready")) {
                    CoroutineDispatcher io113 = Dispatchers.getIO();
                    ServerService$startSession$filesystem$2 serverService$startSession$filesystem$8 = new ServerService$startSession$filesystem$2(serverService6, session4, null);
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 10;
                    objWithContext3 = BuildersKt.withContext(io113, serverService$startSession$filesystem$8, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Function1<String, Unit> function15 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(String str) {
                            invoke2(str);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(String msg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            this.this$0.sendDialogBroadcast("extractionStatus", msg);
                        }
                    };
                    c02291.L$0 = serverService6;
                    c02291.L$1 = session4;
                    c02291.L$2 = avfSessionManager2;
                    c02291.label = 11;
                    objWithContext3 = avfSessionManager2.setup((Filesystem) objWithContext3, function15, c02291);
                    if (objWithContext3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    if (!((Boolean) objWithContext3).booleanValue()) {
                        serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                        avfSessionManager2.unbind();
                        serverService6.avfSessionManager = null;
                        return Unit.INSTANCE;
                    }
                }
                CoroutineDispatcher io114 = Dispatchers.getIO();
                ServerService$startSession$port$2 serverService$startSession$port$5 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 12;
                objWithContext3 = BuildersKt.withContext(io114, serverService$startSession$port$5, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 10:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session4 = (Session) c02291.L$1;
                serverService6 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                Function1<String, Unit> function16 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$startSession$setupOk$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 11;
                objWithContext3 = avfSessionManager2.setup((Filesystem) objWithContext3, function16, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService6.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io115 = Dispatchers.getIO();
                ServerService$startSession$port$2 serverService$startSession$port$6 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 12;
                objWithContext3 = BuildersKt.withContext(io115, serverService$startSession$port$6, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 11:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session4 = (Session) c02291.L$1;
                serverService6 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                if (!((Boolean) objWithContext3).booleanValue()) {
                    serverService6.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session4), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService6.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                CoroutineDispatcher io116 = Dispatchers.getIO();
                ServerService$startSession$port$2 serverService$startSession$port$7 = new ServerService$startSession$port$2(avfSessionManager2, session4, null);
                c02291.L$0 = serverService6;
                c02291.L$1 = session4;
                c02291.L$2 = avfSessionManager2;
                c02291.label = 12;
                objWithContext3 = BuildersKt.withContext(io116, serverService$startSession$port$7, c02291);
                if (objWithContext3 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 12:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session4 = (Session) c02291.L$1;
                serverService6 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    break;
                }
                session3 = session4;
                serverService5 = serverService6;
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 13:
                avfSessionManager2 = (AvfSessionManager) c02291.L$2;
                session3 = (Session) c02291.L$1;
                serverService5 = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                iIntValue2 = ((Number) objWithContext3).intValue();
                if (iIntValue2 < 0) {
                    serverService5.sendDialogBroadcast(Intrinsics.areEqual(avfSessionManager2.getStatus(session3), "corrupt") ? "avfDiskCorrupted" : "avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService5.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                session3.setPort(iIntValue2);
                session3.setActive(true);
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            case 14:
                session5 = (Session) c02291.L$1;
                serverService = (ServerService) c02291.L$0;
                ResultKt.throwOnFailure(objWithContext3);
                while (!serverService.getLocalServerManager().isServerRunning(session5)) {
                    c02291.L$0 = serverService;
                    c02291.L$1 = session5;
                    c02291.label = 14;
                    if (DelayKt.delay(500L, c02291) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                session5.setActive(true);
                session3 = session5;
                serverService5 = serverService;
                serverService5.updateSession(session3);
                sendDialogBroadcast$default(serverService5, "clientStarting", false, 2, null);
                serverService5.startClient(session3);
                serverService5.activeSessions.put(Boxing.boxLong(session3.getPid()), session3);
                serverService5.lastSession = session3;
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$startSession$2", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02302 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ QemuSessionManager $qemuMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02302(QemuSessionManager qemuSessionManager, Continuation<? super C02302> continuation) {
            super(2, continuation);
            this.$qemuMgr = qemuSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02302(this.$qemuMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02302) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.$qemuMgr.isUpdateRequired());
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$startSession$3", f = "ServerService.kt", i = {}, l = {868}, m = "invokeSuspend", n = {}, s = {})
    static final class C02313 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ QemuSessionManager $qemuMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02313(QemuSessionManager qemuSessionManager, Continuation<? super C02313> continuation) {
            super(2, continuation);
            this.$qemuMgr = qemuSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02313(this.$qemuMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02313) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$qemuMgr.isQemuRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$4, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$startSession$4", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02324 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ AvfSessionManager $avfMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02324(AvfSessionManager avfSessionManager, Continuation<? super C02324> continuation) {
            super(2, continuation);
            this.$avfMgr = avfSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02324(this.$avfMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02324) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.$avfMgr.isUpdateRequired());
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$5, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$startSession$5", f = "ServerService.kt", i = {}, l = {917}, m = "invokeSuspend", n = {}, s = {})
    static final class C02335 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ AvfSessionManager $avfMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02335(AvfSessionManager avfSessionManager, Continuation<? super C02335> continuation) {
            super(2, continuation);
            this.$avfMgr = avfSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02335(this.$avfMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02335) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$avfMgr.isAvfRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$startSession$6, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$startSession$6", f = "ServerService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02346 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Integer>, Object> {
        final /* synthetic */ AvfSessionManager $avfMgr;
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02346(AvfSessionManager avfSessionManager, Session session, Continuation<? super C02346> continuation) {
            super(2, continuation);
            this.$avfMgr = avfSessionManager;
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02346(this.$avfMgr, this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Integer> continuation) {
            return ((C02346) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxInt(this.$avfMgr.startSession(this.$session));
        }
    }

    private static final void startSession$lambda$13(ServerService this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.intentRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x0100 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0101  */
    /* JADX WARN: Code duplicated, block: B:45:0x010a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0115  */
    /* JADX WARN: Code duplicated, block: B:49:0x0123 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object repairAvfSession(Session session, Continuation<? super Unit> continuation) throws Throwable {
        C02251 c02251;
        AvfSessionManager avfSessionManager;
        Object objWithContext;
        ServerService serverService;
        final ServerService serverService2;
        Session session2;
        AvfSessionManager avfSessionManager2;
        ServerService serverService3;
        if (continuation instanceof C02251) {
            c02251 = (C02251) continuation;
            if ((c02251.label & Integer.MIN_VALUE) != 0) {
                c02251.label -= Integer.MIN_VALUE;
            } else {
                c02251 = new C02251(continuation);
            }
        } else {
            c02251 = new C02251(continuation);
        }
        Object objRepair = c02251.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02251.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objRepair);
            sendDialogBroadcast$default(this, "serverStarting", false, 2, null);
            avfSessionManager = this.avfSessionManager;
            if (avfSessionManager == null) {
                avfSessionManager = new AvfSessionManager(this);
                this.avfSessionManager = avfSessionManager;
            }
            if (!avfSessionManager.isAvfRunnerInstalled()) {
                sendDialogBroadcast("avfRunnerNotInstalled", true);
                return Unit.INSTANCE;
            }
            avfSessionManager.bind();
            CoroutineDispatcher io2 = Dispatchers.getIO();
            C02262 c02262 = new C02262(avfSessionManager, null);
            c02251.L$0 = this;
            c02251.L$1 = session;
            c02251.L$2 = avfSessionManager;
            c02251.label = 1;
            objWithContext = BuildersKt.withContext(io2, c02262, c02251);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            serverService = this;
        } else {
            if (i == 1) {
                AvfSessionManager avfSessionManager3 = (AvfSessionManager) c02251.L$2;
                Session session3 = (Session) c02251.L$1;
                serverService = (ServerService) c02251.L$0;
                ResultKt.throwOnFailure(objRepair);
                avfSessionManager = avfSessionManager3;
                session = session3;
                objWithContext = objRepair;
            } else if (i == 2) {
                avfSessionManager2 = (AvfSessionManager) c02251.L$2;
                session2 = (Session) c02251.L$1;
                serverService2 = (ServerService) c02251.L$0;
                ResultKt.throwOnFailure(objRepair);
                Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$repairAvfSession$repairOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02251.L$0 = serverService2;
                c02251.L$1 = session2;
                c02251.L$2 = avfSessionManager2;
                c02251.label = 3;
                objRepair = avfSessionManager2.repair((Filesystem) objRepair, function1, c02251);
                if (objRepair == coroutine_suspended) {
                    return coroutine_suspended;
                }
                serverService3 = serverService2;
                if (!((Boolean) objRepair).booleanValue()) {
                    serverService3.sendDialogBroadcast("avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService3.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                c02251.L$0 = null;
                c02251.L$1 = null;
                c02251.L$2 = null;
                c02251.label = 4;
                if (serverService3.startSession(session2, c02251) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i == 3) {
                avfSessionManager2 = (AvfSessionManager) c02251.L$2;
                session2 = (Session) c02251.L$1;
                serverService3 = (ServerService) c02251.L$0;
                ResultKt.throwOnFailure(objRepair);
                if (!((Boolean) objRepair).booleanValue()) {
                    serverService3.sendDialogBroadcast("avfSessionStartFailed", true);
                    avfSessionManager2.unbind();
                    serverService3.avfSessionManager = null;
                    return Unit.INSTANCE;
                }
                c02251.L$0 = null;
                c02251.L$1 = null;
                c02251.L$2 = null;
                c02251.label = 4;
                if (serverService3.startSession(session2, c02251) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objRepair);
            }
            return Unit.INSTANCE;
        }
        if (!((Boolean) objWithContext).booleanValue()) {
            serverService.sendDialogBroadcast("avfSessionStartFailed", true);
            return Unit.INSTANCE;
        }
        CoroutineDispatcher io3 = Dispatchers.getIO();
        ServerService$repairAvfSession$filesystem$1 serverService$repairAvfSession$filesystem$1 = new ServerService$repairAvfSession$filesystem$1(serverService, session, null);
        c02251.L$0 = serverService;
        c02251.L$1 = session;
        c02251.L$2 = avfSessionManager;
        c02251.label = 2;
        Object objWithContext2 = BuildersKt.withContext(io3, serverService$repairAvfSession$filesystem$1, c02251);
        if (objWithContext2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        serverService2 = serverService;
        session2 = session;
        avfSessionManager2 = avfSessionManager;
        objRepair = objWithContext2;
        Function1<String, Unit> function2 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$repairAvfSession$repairOk$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                this.this$0.sendDialogBroadcast("extractionStatus", msg);
            }
        };
        c02251.L$0 = serverService2;
        c02251.L$1 = session2;
        c02251.L$2 = avfSessionManager2;
        c02251.label = 3;
        objRepair = avfSessionManager2.repair((Filesystem) objRepair, function2, c02251);
        if (objRepair == coroutine_suspended) {
            return coroutine_suspended;
        }
        serverService3 = serverService2;
        if (!((Boolean) objRepair).booleanValue()) {
            serverService3.sendDialogBroadcast("avfSessionStartFailed", true);
            avfSessionManager2.unbind();
            serverService3.avfSessionManager = null;
            return Unit.INSTANCE;
        }
        c02251.L$0 = null;
        c02251.L$1 = null;
        c02251.L$2 = null;
        c02251.label = 4;
        if (serverService3.startSession(session2, c02251) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$repairAvfSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$repairAvfSession$2", f = "ServerService.kt", i = {}, l = {1004}, m = "invokeSuspend", n = {}, s = {})
    static final class C02262 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ AvfSessionManager $avfMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02262(AvfSessionManager avfSessionManager, Continuation<? super C02262> continuation) {
            super(2, continuation);
            this.$avfMgr = avfSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02262(this.$avfMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02262) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$avfMgr.isAvfRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x0100 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0101  */
    /* JADX WARN: Code duplicated, block: B:45:0x010a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0115  */
    /* JADX WARN: Code duplicated, block: B:49:0x0123 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object repairQemuSession(Session session, Continuation<? super Unit> continuation) throws Throwable {
        C02271 c02271;
        QemuSessionManager qemuSessionManager;
        Object objWithContext;
        ServerService serverService;
        final ServerService serverService2;
        Session session2;
        QemuSessionManager qemuSessionManager2;
        ServerService serverService3;
        if (continuation instanceof C02271) {
            c02271 = (C02271) continuation;
            if ((c02271.label & Integer.MIN_VALUE) != 0) {
                c02271.label -= Integer.MIN_VALUE;
            } else {
                c02271 = new C02271(continuation);
            }
        } else {
            c02271 = new C02271(continuation);
        }
        Object objRepair = c02271.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02271.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objRepair);
            sendDialogBroadcast$default(this, "serverStarting", false, 2, null);
            qemuSessionManager = this.qemuSessionManager;
            if (qemuSessionManager == null) {
                qemuSessionManager = new QemuSessionManager(this);
                this.qemuSessionManager = qemuSessionManager;
            }
            if (!qemuSessionManager.isQemuRunnerInstalled()) {
                sendDialogBroadcast("qemuRunnerNotInstalled", true);
                return Unit.INSTANCE;
            }
            qemuSessionManager.bind();
            CoroutineDispatcher io2 = Dispatchers.getIO();
            C02282 c02282 = new C02282(qemuSessionManager, null);
            c02271.L$0 = this;
            c02271.L$1 = session;
            c02271.L$2 = qemuSessionManager;
            c02271.label = 1;
            objWithContext = BuildersKt.withContext(io2, c02282, c02271);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            serverService = this;
        } else {
            if (i == 1) {
                QemuSessionManager qemuSessionManager3 = (QemuSessionManager) c02271.L$2;
                Session session3 = (Session) c02271.L$1;
                serverService = (ServerService) c02271.L$0;
                ResultKt.throwOnFailure(objRepair);
                qemuSessionManager = qemuSessionManager3;
                session = session3;
                objWithContext = objRepair;
            } else if (i == 2) {
                qemuSessionManager2 = (QemuSessionManager) c02271.L$2;
                session2 = (Session) c02271.L$1;
                serverService2 = (ServerService) c02271.L$0;
                ResultKt.throwOnFailure(objRepair);
                Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$repairQemuSession$repairOk$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String msg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        this.this$0.sendDialogBroadcast("extractionStatus", msg);
                    }
                };
                c02271.L$0 = serverService2;
                c02271.L$1 = session2;
                c02271.L$2 = qemuSessionManager2;
                c02271.label = 3;
                objRepair = qemuSessionManager2.repair((Filesystem) objRepair, function1, c02271);
                if (objRepair == coroutine_suspended) {
                    return coroutine_suspended;
                }
                serverService3 = serverService2;
                if (!((Boolean) objRepair).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                c02271.L$0 = null;
                c02271.L$1 = null;
                c02271.L$2 = null;
                c02271.label = 4;
                if (serverService3.startSession(session2, c02271) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i == 3) {
                qemuSessionManager2 = (QemuSessionManager) c02271.L$2;
                session2 = (Session) c02271.L$1;
                serverService3 = (ServerService) c02271.L$0;
                ResultKt.throwOnFailure(objRepair);
                if (!((Boolean) objRepair).booleanValue()) {
                    serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
                    qemuSessionManager2.unbind();
                    serverService3.qemuSessionManager = null;
                    return Unit.INSTANCE;
                }
                c02271.L$0 = null;
                c02271.L$1 = null;
                c02271.L$2 = null;
                c02271.label = 4;
                if (serverService3.startSession(session2, c02271) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objRepair);
            }
            return Unit.INSTANCE;
        }
        if (!((Boolean) objWithContext).booleanValue()) {
            serverService.sendDialogBroadcast("qemuSessionStartFailed", true);
            return Unit.INSTANCE;
        }
        CoroutineDispatcher io3 = Dispatchers.getIO();
        ServerService$repairQemuSession$filesystem$1 serverService$repairQemuSession$filesystem$1 = new ServerService$repairQemuSession$filesystem$1(serverService, session, null);
        c02271.L$0 = serverService;
        c02271.L$1 = session;
        c02271.L$2 = qemuSessionManager;
        c02271.label = 2;
        Object objWithContext2 = BuildersKt.withContext(io3, serverService$repairQemuSession$filesystem$1, c02271);
        if (objWithContext2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        serverService2 = serverService;
        session2 = session;
        qemuSessionManager2 = qemuSessionManager;
        objRepair = objWithContext2;
        Function1<String, Unit> function2 = new Function1<String, Unit>() { // from class: tech.ula.library.ServerService$repairQemuSession$repairOk$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                this.this$0.sendDialogBroadcast("extractionStatus", msg);
            }
        };
        c02271.L$0 = serverService2;
        c02271.L$1 = session2;
        c02271.L$2 = qemuSessionManager2;
        c02271.label = 3;
        objRepair = qemuSessionManager2.repair((Filesystem) objRepair, function2, c02271);
        if (objRepair == coroutine_suspended) {
            return coroutine_suspended;
        }
        serverService3 = serverService2;
        if (!((Boolean) objRepair).booleanValue()) {
            serverService3.sendDialogBroadcast("qemuSessionStartFailed", true);
            qemuSessionManager2.unbind();
            serverService3.qemuSessionManager = null;
            return Unit.INSTANCE;
        }
        c02271.L$0 = null;
        c02271.L$1 = null;
        c02271.L$2 = null;
        c02271.label = 4;
        if (serverService3.startSession(session2, c02271) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.ServerService$repairQemuSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServerService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.ServerService$repairQemuSession$2", f = "ServerService.kt", i = {}, l = {1036}, m = "invokeSuspend", n = {}, s = {})
    static final class C02282 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ QemuSessionManager $qemuMgr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02282(QemuSessionManager qemuSessionManager, Continuation<? super C02282> continuation) {
            super(2, continuation);
            this.$qemuMgr = qemuSessionManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02282(this.$qemuMgr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02282) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$qemuMgr.isQemuRunnerBindable(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object stopApp(App app, Continuation<? super Unit> continuation) throws Throwable {
        C02351 c02351;
        Iterator it;
        ServerService serverService;
        if (continuation instanceof C02351) {
            c02351 = (C02351) continuation;
            if ((c02351.label & Integer.MIN_VALUE) != 0) {
                c02351.label -= Integer.MIN_VALUE;
            } else {
                c02351 = new C02351(continuation);
            }
        } else {
            c02351 = new C02351(continuation);
        }
        Object obj = c02351.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02351.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Map<Long, Session> map = this.activeSessions;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<Long, Session> entry : map.entrySet()) {
                if (Intrinsics.areEqual(entry.getValue().getName(), app.getName())) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            it = linkedHashMap.entrySet().iterator();
            serverService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) c02351.L$1;
            serverService = (ServerService) c02351.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            Session session = (Session) ((Map.Entry) it.next()).getValue();
            c02351.L$0 = serverService;
            c02351.L$1 = it;
            c02351.label = 1;
            if (serverService.killSession(session, c02351) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    private final void startClient(Session session) {
        ServiceType serviceType = session.getServiceType();
        if (Intrinsics.areEqual(serviceType, ServiceType.Ssh.INSTANCE)) {
            startSshClient(session);
        } else if (Intrinsics.areEqual(serviceType, ServiceType.Vnc.INSTANCE)) {
            if (session.getExecutionType() == ExecutionType.AVF || session.getExecutionType() == ExecutionType.QEMU) {
                startVncClientOnPort(session, (int) session.getPort());
            } else {
                startVncClient(session, "com.iiordanov.freebVNC");
            }
        } else if (Intrinsics.areEqual(serviceType, ServiceType.Xsdl.INSTANCE)) {
            startXsdlClient("x.org.server");
        } else {
            sendDialogBroadcast$default(this, "unhandledSessionServiceType", false, 2, null);
        }
        sendSessionActivatedBroadcast();
    }

    private final void startVncClientOnPort(Session session, int port) {
        ServerService serverService = this;
        Intent intent = new Intent(serverService, (Class<?>) RemoteCanvasActivity.class);
        intent.setData(Uri.parse("vnc://127.0.0.1:" + port + "/?VncUsername=" + session.getUsername() + "&VncPassword=" + session.getVncPassword()));
        intent.addFlags(335544320);
        String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        intent.putExtra("command_dir", new UlaFiles(serverService, nativeLibraryDir, null, 4, null).getIntentsDir().getAbsolutePath());
        SharedPreferences sharedPreferences = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        intent.putExtra("hide_toolbar", sharedPreferences.getBoolean("pref_hide_vnc_toolbar", false));
        SharedPreferences sharedPreferences2 = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        intent.putExtra("hide_extra_keys", sharedPreferences2.getBoolean("pref_hide_vnc_extra_keys", false));
        intent.putExtra("display_locked", session.getDisplayLocked());
        intent.putExtra("display_orientation", session.getDisplayOrientation());
        SharedPreferences sharedPreferences3 = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences3, "getSharedPreferences(...)");
        intent.putExtra("input_mode", sharedPreferences3.getString("pref_vnc_input_mode", tech.ula.customlibrary.BuildConfig.DEFAULT_VNC_INPUT_MODE));
        if (clientIsPresent(intent)) {
            startActivity(intent);
        }
    }

    private final void startSshClient(Session session) {
        Intent intent = new Intent(this, (Class<?>) TermuxActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("ssh://" + session.getUsername() + "@localhost:2022/#userland/" + session.getPassword()));
        intent.setFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
        startActivity(intent);
    }

    private final void startVncClient(Session session, String packageName) {
        int i;
        ServerService serverService = this;
        Intent intent = new Intent(serverService, (Class<?>) RemoteCanvasActivity.class);
        intent.setData(Uri.parse("vnc://127.0.0.1:5951/?VncUsername=" + session.getUsername() + "&VncPassword=" + session.getVncPassword()));
        intent.addFlags(335544320);
        String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        intent.putExtra("command_dir", new UlaFiles(serverService, nativeLibraryDir, null, 4, null).getIntentsDir().getAbsolutePath());
        SharedPreferences sharedPreferences = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        intent.putExtra("hide_toolbar", sharedPreferences.getBoolean("pref_hide_vnc_toolbar", false));
        SharedPreferences sharedPreferences2 = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
        intent.putExtra("hide_extra_keys", sharedPreferences2.getBoolean("pref_hide_vnc_extra_keys", false));
        intent.putExtra("display_locked", session.getDisplayLocked());
        intent.putExtra("display_orientation", session.getDisplayOrientation());
        SharedPreferences sharedPreferences3 = serverService.getSharedPreferences(serverService.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences3, "getSharedPreferences(...)");
        String string = sharedPreferences3.getString("pref_default_vnc_input_mode", tech.ula.customlibrary.BuildConfig.DEFAULT_VNC_INPUT_MODE);
        if (Intrinsics.areEqual(string, getString(com.undatech.remoteClientUi.R.string.input_method_direct_swipe_pan))) {
            i = com.undatech.remoteClientUi.R.id.itemInputTouchPanZoomMouse;
        } else if (Intrinsics.areEqual(string, getString(com.undatech.remoteClientUi.R.string.input_method_direct_drag_pan))) {
            i = com.undatech.remoteClientUi.R.id.itemInputDragPanZoomMouse;
        } else if (Intrinsics.areEqual(string, getString(com.undatech.remoteClientUi.R.string.input_method_touchpad))) {
            i = com.undatech.remoteClientUi.R.id.itemInputTouchpad;
        } else {
            i = Intrinsics.areEqual(string, getString(com.undatech.remoteClientUi.R.string.input_method_single_handed)) ? com.undatech.remoteClientUi.R.id.itemInputSingleHanded : com.undatech.remoteClientUi.R.id.itemInputTouchPanZoomMouse;
        }
        intent.putExtra("input_mode", i);
        if (clientIsPresent(intent)) {
            startActivity(intent);
        } else {
            getClient(packageName);
        }
    }

    private final void startXsdlClient(String packageName) {
        Intent intent = new Intent();
        intent.setFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
        intent.setData(Uri.parse("x11://give.me.display:4721"));
        if (clientIsPresent(intent)) {
            startActivity(intent);
        } else {
            getClient(packageName);
        }
    }

    private final boolean clientIsPresent(Intent intent) {
        List<ResolveInfo> listQueryIntentActivities = getPackageManager().queryIntentActivities(intent, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        return listQueryIntentActivities.size() > 0;
    }

    private final void getClient(String packageName) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
        intent.setFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            sendDialogBroadcast$default(this, "playStoreMissingForClient", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object cleanUpFilesystem(long j, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Iterator it;
        ServerService serverService;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Collection<Session> collectionValues = this.activeSessions.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : collectionValues) {
                if (((Session) obj2).getFilesystemId() == j) {
                    arrayList.add(obj2);
                }
            }
            it = arrayList.iterator();
            serverService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) anonymousClass1.L$1;
            serverService = (ServerService) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            Session session = (Session) it.next();
            anonymousClass1.L$0 = serverService;
            anonymousClass1.L$1 = it;
            anonymousClass1.label = 1;
            if (serverService.killSession(session, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    private final void sendSessionReadyBroadcast() {
        this.waitingForStart = true;
        Intent intentPutExtra = new Intent(SERVER_SERVICE_RESULT).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "sessionReady");
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        LocalBroadcastManager localBroadcastManager = this.broadcaster;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("broadcaster");
            localBroadcastManager = null;
        }
        localBroadcastManager.sendBroadcast(intentPutExtra);
    }

    private final void sendSessionActivatedBroadcast() {
        this.sessionActivatedPending = true;
        Intent intentPutExtra = new Intent(SERVER_SERVICE_RESULT).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "sessionActivated");
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        LocalBroadcastManager localBroadcastManager = this.broadcaster;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("broadcaster");
            localBroadcastManager = null;
        }
        localBroadcastManager.sendBroadcast(intentPutExtra);
    }

    static /* synthetic */ void sendDialogBroadcast$default(ServerService serverService, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        serverService.sendDialogBroadcast(str, z);
    }

    private final void sendDialogBroadcast(String type, boolean terminal) {
        if (terminal) {
            this.pendingFailureDialogType = type;
        }
        Intent intentPutExtra = new Intent(SERVER_SERVICE_RESULT).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "dialog").putExtra("dialogType", type);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        LocalBroadcastManager localBroadcastManager = this.broadcaster;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("broadcaster");
            localBroadcastManager = null;
        }
        localBroadcastManager.sendBroadcast(intentPutExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendDialogBroadcast(String type, String message) {
        Intent intentPutExtra = new Intent(SERVER_SERVICE_RESULT).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "dialog").putExtra("dialogType", type).putExtra(JsonMarshaller.MESSAGE, message);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        LocalBroadcastManager localBroadcastManager = this.broadcaster;
        if (localBroadcastManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("broadcaster");
            localBroadcastManager = null;
        }
        localBroadcastManager.sendBroadcast(intentPutExtra);
    }

    private final void intentRequest() {
        ServerService serverService = this;
        String nativeLibraryDir = getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        UlaFiles ulaFiles = new UlaFiles(serverService, nativeLibraryDir, null, 4, null);
        File file = new File(ulaFiles.getIntentsDir(), "cameraRequest.txt");
        if (file.exists()) {
            String string = StringsKt.trim((CharSequence) FilesKt.readText(file, Charsets.UTF_8)).toString();
            file.delete();
            if (StringsKt.endsWith$default(string, "barcode.txt", false, 2, (Object) null)) {
                Intent intent = new Intent(serverService, (Class<?>) LiveBarcodeScanningActivity.class);
                intent.addFlags(335544320);
                startActivity(intent);
                return;
            }
            if (StringsKt.endsWith$default(string, "tone.txt", false, 2, (Object) null)) {
                File file2 = new File(ulaFiles.getIntentsDir(), "tone.txt");
                String string2 = StringsKt.trim((CharSequence) FilesKt.readText(file2, Charsets.UTF_8)).toString();
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                String lowerCase = string2.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                List listSplit$default = StringsKt.split$default((CharSequence) lowerCase, new String[]{","}, false, 0, 6, (Object) null);
                String str = (String) listSplit$default.get(0);
                String str2 = (String) listSplit$default.get(1);
                String str3 = (String) listSplit$default.get(2);
                file2.delete();
                new ToneGenerator(3, Integer.parseInt(str2)).startTone(Integer.parseInt(str), Integer.parseInt(str3));
                return;
            }
            if (StringsKt.endsWith$default(string, "record_speech.txt", false, 2, (Object) null)) {
                Intent intent2 = new Intent(serverService, (Class<?>) RecordSpeechActivity.class);
                intent2.setType("record_speech");
                intent2.addFlags(335544320);
                startActivity(intent2);
                return;
            }
            Intent intent3 = new Intent(serverService, (Class<?>) CameraActivity.class);
            intent3.setType("take_picture");
            intent3.putExtra("cameraRequest", string);
            intent3.addFlags(335544320);
            startActivity(intent3);
        }
    }
}
