package tech.ula.library.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.json.JSONException;
import org.json.JSONObject;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: QemuSessionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0015\u001a\u00020\u0014H\u0086@¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J2\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u001dH\u0082@¢\u0006\u0002\u0010\u001eJ.\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001dH\u0086@¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\u0014H\u0002J.\u0010\"\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001dH\u0086@¢\u0006\u0002\u0010 J\u0012\u0010#\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J.\u0010%\u001a\u00020&2\u0006\u0010\t\u001a\u00020\n2\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001dH\u0086@¢\u0006\u0002\u0010'J\u0016\u0010(\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0086@¢\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Ltech/ula/library/utils/QemuSessionManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "socket", "Ltech/ula/library/utils/CompanionControlSocketClient;", "appScriptContent", "", "session", "Ltech/ula/library/model/entities/Session;", "bind", "", "getLastErrorRaw", "fsId", "getStatusRaw", "imageRefFor", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "isCorrupted", "", "isQemuRunnerBindable", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isQemuRunnerInstalled", "isUpdateRequired", "pollProgressWhileActive", "job", "Lkotlinx/coroutines/Job;", "onProgress", "Lkotlin/Function1;", "(Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "repair", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "settingsEnabled", "setup", "sharedStoragePath", "soundSupportScript", "startSession", "", "(Ltech/ula/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopSession", "(Ltech/ula/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unbind", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QemuSessionManager {
    private static final int CONTROL_PORT = 17602;
    private static final String QEMU_CONTROL_SERVICE = "tech.ula.qemu.QemuControlService";
    private static final String QEMU_RUNNER_PACKAGE = "tech.ula.qemu";
    private static final String QEMU_VERSION_MANIFEST_URL = "";
    public static final int SSH_PORT = 2022;
    private static final String TAG = "QemuSessionManager";
    public static final int VNC_PORT = 5901;
    private final Context context;
    private final CompanionControlSocketClient socket;

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$isQemuRunnerBindable$1, reason: invalid class name */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager", f = "QemuSessionManager.kt", i = {0}, l = {100}, m = "isQemuRunnerBindable", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return QemuSessionManager.this.isQemuRunnerBindable(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$pollProgressWhileActive$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager", f = "QemuSessionManager.kt", i = {0, 0, 0, 0}, l = {CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA}, m = "pollProgressWhileActive", n = {"this", "job", "fsId", "onProgress"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C02821 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02821(Continuation<? super C02821> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return QemuSessionManager.this.pollProgressWhileActive(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$repair$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager", f = "QemuSessionManager.kt", i = {0, 0}, l = {216}, m = "repair", n = {"this", "fsId"}, s = {"L$0", "L$1"})
    static final class C02831 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02831(Continuation<? super C02831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return QemuSessionManager.this.repair(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$setup$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager", f = "QemuSessionManager.kt", i = {0, 0}, l = {118}, m = "setup", n = {"this", "fsId"}, s = {"L$0", "L$1"})
    static final class C02841 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02841(Continuation<? super C02841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return QemuSessionManager.this.setup(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$startSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager", f = "QemuSessionManager.kt", i = {0, 0, 0, 0}, l = {CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384}, m = "startSession", n = {"this", "fsId", "serviceType", "started"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C02861 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02861(Continuation<? super C02861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return QemuSessionManager.this.startSession(null, null, this);
        }
    }

    public final void unbind() {
    }

    public QemuSessionManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.socket = new CompanionControlSocketClient(CONTROL_PORT);
    }

    public final void bind() {
        try {
            ContextCompat.startForegroundService(this.context, new Intent().setComponent(new ComponentName(QEMU_RUNNER_PACKAGE, QEMU_CONTROL_SERVICE)));
        } catch (IllegalStateException e) {
            Log.w(TAG, "startForegroundService failed", e);
        } catch (SecurityException e2) {
            Log.w(TAG, "startForegroundService denied", e2);
        }
    }

    public final boolean isQemuRunnerInstalled() {
        try {
            this.context.getPackageManager().getPackageInfo(QEMU_RUNNER_PACKAGE, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean isUpdateRequired() {
        return CompanionAppUpdateChecker.INSTANCE.isUpdateRequired(this.context, QEMU_RUNNER_PACKAGE, QEMU_VERSION_MANIFEST_URL);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    /* JADX WARN: Code duplicated, block: B:26:0x0069  */
    /* JADX WARN: Code duplicated, block: B:28:0x006e  */
    /* JADX WARN: Code duplicated, block: B:30:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x0081  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:31:0x007f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object isQemuRunnerBindable(kotlin.coroutines.Continuation<? super java.lang.Boolean> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof tech.ula.library.utils.QemuSessionManager.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            tech.ula.library.utils.QemuSessionManager$isQemuRunnerBindable$1 r0 = (tech.ula.library.utils.QemuSessionManager.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            tech.ula.library.utils.QemuSessionManager$isQemuRunnerBindable$1 r0 = new tech.ula.library.utils.QemuSessionManager$isQemuRunnerBindable$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3c
            if (r2 != r5) goto L34
            int r2 = r0.I$1
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$0
            tech.ula.library.utils.QemuSessionManager r7 = (tech.ula.library.utils.QemuSessionManager) r7
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r10.isQemuRunnerInstalled()
            if (r11 != 0) goto L4a
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r11
        L4a:
            tech.ula.library.utils.CompanionControlSocketClient r11 = r10.socket
            boolean r11 = tech.ula.library.utils.CompanionControlSocketClient.isReachable$default(r11, r4, r5, r3)
            if (r11 == 0) goto L57
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r11
        L57:
            r10.bind()
            r11 = 10
            r7 = r10
            r6 = r11
            r2 = r4
        L5f:
            if (r2 >= r6) goto L81
            tech.ula.library.utils.CompanionControlSocketClient r11 = r7.socket
            boolean r11 = tech.ula.library.utils.CompanionControlSocketClient.isReachable$default(r11, r4, r5, r3)
            if (r11 == 0) goto L6e
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r11
        L6e:
            r0.L$0 = r7
            r0.I$0 = r6
            r0.I$1 = r2
            r0.label = r5
            r8 = 200(0xc8, double:9.9E-322)
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r8, r0)
            if (r11 != r1) goto L7f
            return r1
        L7f:
            int r2 = r2 + r5
            goto L5f
        L81:
            java.lang.Boolean r11 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.QemuSessionManager.isQemuRunnerBindable(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object setup$default(QemuSessionManager qemuSessionManager, Filesystem filesystem, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return qemuSessionManager.setup(filesystem, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object setup(Filesystem filesystem, Function1<? super String, Unit> function1, Continuation<? super Boolean> continuation) {
        C02841 c02841;
        QemuSessionManager qemuSessionManager;
        String str;
        if (continuation instanceof C02841) {
            c02841 = (C02841) continuation;
            if ((c02841.label & Integer.MIN_VALUE) != 0) {
                c02841.label -= Integer.MIN_VALUE;
            } else {
                c02841 = new C02841(continuation);
            }
        } else {
            c02841 = new C02841(continuation);
        }
        C02841 c02842 = c02841;
        Object obj = c02842.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02842.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(filesystem.getId());
            String strImageRefFor = imageRefFor(filesystem);
            String statusRaw = getStatusRaw(strValueOf);
            if (Intrinsics.areEqual(statusRaw, "ready") || Intrinsics.areEqual(statusRaw, "running")) {
                return Boxing.boxBoolean(true);
            }
            C02852 c02852 = new C02852(function1, this, strValueOf, strImageRefFor, null);
            c02842.L$0 = this;
            c02842.L$1 = strValueOf;
            c02842.label = 1;
            if (CoroutineScopeKt.coroutineScope(c02852, c02842) == coroutine_suspended) {
                return coroutine_suspended;
            }
            qemuSessionManager = this;
            str = strValueOf;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02842.L$1;
            qemuSessionManager = (QemuSessionManager) c02842.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(Intrinsics.areEqual(qemuSessionManager.getStatusRaw(str), "ready"));
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$setup$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$setup$2", f = "QemuSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02852 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $fsId;
        final /* synthetic */ String $imageRef;
        final /* synthetic */ Function1<String, Unit> $onProgress;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ QemuSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02852(Function1<? super String, Unit> function1, QemuSessionManager qemuSessionManager, String str, String str2, Continuation<? super C02852> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
            this.this$0 = qemuSessionManager;
            this.$fsId = str;
            this.$imageRef = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02852 c02852 = new C02852(this.$onProgress, this.this$0, this.$fsId, this.$imageRef, continuation);
            c02852.L$0 = obj;
            return c02852;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02852) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getIO(), null, new QemuSessionManager$setup$2$setupJob$1(this.this$0, this.$fsId, this.$imageRef, null), 2, null);
                if (this.$onProgress != null) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, jobLaunch$default, this.$fsId, this.$onProgress, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$setup$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: QemuSessionManager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$setup$2$1", f = "QemuSessionManager.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $fsId;
            final /* synthetic */ Function1<String, Unit> $onProgress;
            final /* synthetic */ Job $setupJob;
            int label;
            final /* synthetic */ QemuSessionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(QemuSessionManager qemuSessionManager, Job job, String str, Function1<? super String, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = qemuSessionManager;
                this.$setupJob = job;
                this.$fsId = str;
                this.$onProgress = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$setupJob, this.$fsId, this.$onProgress, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.pollProgressWhileActive(this.$setupJob, this.$fsId, this.$onProgress, this) == coroutine_suspended) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x004f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0063  */
    /* JADX WARN: Code duplicated, block: B:20:0x0066  */
    /* JADX WARN: Code duplicated, block: B:23:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0095  */
    /* JADX WARN: Code duplicated, block: B:27:0x009c  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0076 -> B:24:0x0079). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:17:0x004f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object pollProgressWhileActive(kotlinx.coroutines.Job r8, java.lang.String r9, kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof tech.ula.library.utils.QemuSessionManager.C02821
            if (r0 == 0) goto L14
            r0 = r11
            tech.ula.library.utils.QemuSessionManager$pollProgressWhileActive$1 r0 = (tech.ula.library.utils.QemuSessionManager.C02821) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            tech.ula.library.utils.QemuSessionManager$pollProgressWhileActive$1 r0 = new tech.ula.library.utils.QemuSessionManager$pollProgressWhileActive$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L45
            if (r2 != r3) goto L3d
            java.lang.Object r8 = r0.L$3
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r9 = r0.L$2
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r10 = r0.L$1
            kotlinx.coroutines.Job r10 = (kotlinx.coroutines.Job) r10
            java.lang.Object r2 = r0.L$0
            tech.ula.library.utils.QemuSessionManager r2 = (tech.ula.library.utils.QemuSessionManager) r2
            kotlin.ResultKt.throwOnFailure(r11)
            r6 = r10
            r10 = r8
            r8 = r6
            goto L79
        L3d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L45:
            kotlin.ResultKt.throwOnFailure(r11)
            r2 = r7
        L49:
            boolean r11 = r8.isActive()
            if (r11 == 0) goto Lae
            androidx.lifecycle.LifecycleOwner r11 = androidx.lifecycle.ProcessLifecycleOwner.get()
            androidx.lifecycle.Lifecycle r11 = r11.getLifecycle()
            androidx.lifecycle.Lifecycle$State r11 = r11.getCurrentState()
            androidx.lifecycle.Lifecycle$State r4 = androidx.lifecycle.Lifecycle.State.STARTED
            boolean r11 = r11.isAtLeast(r4)
            if (r11 == 0) goto L66
            r4 = 500(0x1f4, double:2.47E-321)
            goto L68
        L66:
            r4 = 15000(0x3a98, double:7.411E-320)
        L68:
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.label = r3
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r4, r0)
            if (r11 != r1) goto L79
            return r1
        L79:
            tech.ula.library.utils.CompanionControlSocketClient r11 = r2.socket
            org.json.JSONObject r4 = new org.json.JSONObject
            r4.<init>()
            java.lang.String r5 = "fsId"
            org.json.JSONObject r4 = r4.put(r5, r9)
            java.lang.String r5 = "put(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            java.lang.String r5 = "getProgressMessage"
            org.json.JSONObject r11 = r11.request(r5, r4)
            java.lang.String r4 = ""
            if (r11 == 0) goto L9c
            java.lang.String r5 = "result"
            java.lang.String r11 = r11.optString(r5, r4)
            goto L9d
        L9c:
            r11 = 0
        L9d:
            if (r11 != 0) goto La0
            goto La1
        La0:
            r4 = r11
        La1:
            r11 = r4
            java.lang.CharSequence r11 = (java.lang.CharSequence) r11
            int r11 = r11.length()
            if (r11 <= 0) goto L49
            r10.invoke(r4)
            goto L49
        Lae:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.QemuSessionManager.pollProgressWhileActive(kotlinx.coroutines.Job, java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object startSession$default(QemuSessionManager qemuSessionManager, Session session, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return qemuSessionManager.startSession(session, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object startSession(Session session, Function1<? super String, Unit> function1, Continuation<? super Integer> continuation) {
        C02861 c02861;
        QemuSessionManager qemuSessionManager;
        String str;
        String str2;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C02861) {
            c02861 = (C02861) continuation;
            if ((c02861.label & Integer.MIN_VALUE) != 0) {
                c02861.label -= Integer.MIN_VALUE;
            } else {
                c02861 = new C02861(continuation);
            }
        } else {
            c02861 = new C02861(continuation);
        }
        C02861 c02862 = c02861;
        Object obj = c02862.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02862.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(session.getFilesystemId());
            String string = session.getServiceType().toString();
            if (session.getSoundSupport() || session.getMicSupport()) {
                PulseAudioServer.INSTANCE.ensureRunning(this.context);
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            C02872 c02872 = new C02872(function1, strValueOf, string, session, this, objectRef2, null);
            c02862.L$0 = this;
            c02862.L$1 = strValueOf;
            c02862.L$2 = string;
            c02862.L$3 = objectRef2;
            c02862.label = 1;
            if (CoroutineScopeKt.coroutineScope(c02872, c02862) == coroutine_suspended) {
                return coroutine_suspended;
            }
            qemuSessionManager = this;
            str = strValueOf;
            str2 = string;
            objectRef = objectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) c02862.L$3;
            str2 = (String) c02862.L$2;
            str = (String) c02862.L$1;
            qemuSessionManager = (QemuSessionManager) c02862.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (objectRef.element == 0) {
            Log.w(TAG, "start(" + str + ") failed, UserLOst QEMU may be unreachable");
            return Boxing.boxInt(-1);
        }
        String statusRaw = qemuSessionManager.getStatusRaw(str);
        if (!Intrinsics.areEqual(statusRaw, "running")) {
            Log.e(TAG, "start(" + str + ") failed: status=" + statusRaw + " err=" + qemuSessionManager.getLastErrorRaw(str));
            return Boxing.boxInt(-1);
        }
        CompanionControlSocketClient companionControlSocketClient = qemuSessionManager.socket;
        JSONObject jSONObjectPut = new JSONObject().put("fsId", str).put("serviceType", str2);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        JSONObject jSONObjectRequest = companionControlSocketClient.request("getPort", jSONObjectPut);
        return Boxing.boxInt(jSONObjectRequest != null ? jSONObjectRequest.optInt("result", -1) : -1);
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$startSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$startSession$2", f = "QemuSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02872 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $fsId;
        final /* synthetic */ Function1<String, Unit> $onProgress;
        final /* synthetic */ String $serviceType;
        final /* synthetic */ Session $session;
        final /* synthetic */ Ref.ObjectRef<JSONObject> $started;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ QemuSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02872(Function1<? super String, Unit> function1, String str, String str2, Session session, QemuSessionManager qemuSessionManager, Ref.ObjectRef<JSONObject> objectRef, Continuation<? super C02872> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
            this.$fsId = str;
            this.$serviceType = str2;
            this.$session = session;
            this.this$0 = qemuSessionManager;
            this.$started = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02872 c02872 = new C02872(this.$onProgress, this.$fsId, this.$serviceType, this.$session, this.this$0, this.$started, continuation);
            c02872.L$0 = obj;
            return c02872;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02872) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getIO(), null, new QemuSessionManager$startSession$2$startJob$1(this.$fsId, this.$serviceType, this.$session, this.this$0, this.$started, null), 2, null);
                if (this.$onProgress != null) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, jobLaunch$default, this.$fsId, this.$onProgress, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$startSession$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: QemuSessionManager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$startSession$2$1", f = "QemuSessionManager.kt", i = {}, l = {CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $fsId;
            final /* synthetic */ Function1<String, Unit> $onProgress;
            final /* synthetic */ Job $startJob;
            int label;
            final /* synthetic */ QemuSessionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(QemuSessionManager qemuSessionManager, Job job, String str, Function1<? super String, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = qemuSessionManager;
                this.$startJob = job;
                this.$fsId = str;
                this.$onProgress = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$startJob, this.$fsId, this.$onProgress, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.pollProgressWhileActive(this.$startJob, this.$fsId, this.$onProgress, this) == coroutine_suspended) {
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
    }

    public final boolean isCorrupted(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return Intrinsics.areEqual(getStatusRaw(String.valueOf(session.getFilesystemId())), "corrupt");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object repair$default(QemuSessionManager qemuSessionManager, Filesystem filesystem, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return qemuSessionManager.repair(filesystem, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object repair(Filesystem filesystem, Function1<? super String, Unit> function1, Continuation<? super Boolean> continuation) {
        C02831 c02831;
        QemuSessionManager qemuSessionManager;
        String str;
        if (continuation instanceof C02831) {
            c02831 = (C02831) continuation;
            if ((c02831.label & Integer.MIN_VALUE) != 0) {
                c02831.label -= Integer.MIN_VALUE;
            } else {
                c02831 = new C02831(continuation);
            }
        } else {
            c02831 = new C02831(continuation);
        }
        Object obj = c02831.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02831.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(filesystem.getId());
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(function1, this, strValueOf, imageRefFor(filesystem), null);
            c02831.L$0 = this;
            c02831.L$1 = strValueOf;
            c02831.label = 1;
            if (CoroutineScopeKt.coroutineScope(anonymousClass2, c02831) == coroutine_suspended) {
                return coroutine_suspended;
            }
            qemuSessionManager = this;
            str = strValueOf;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02831.L$1;
            qemuSessionManager = (QemuSessionManager) c02831.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(Intrinsics.areEqual(qemuSessionManager.getStatusRaw(str), "ready"));
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$repair$2, reason: invalid class name */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$repair$2", f = "QemuSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $fsId;
        final /* synthetic */ String $imageRef;
        final /* synthetic */ Function1<String, Unit> $onProgress;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ QemuSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super String, Unit> function1, QemuSessionManager qemuSessionManager, String str, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
            this.this$0 = qemuSessionManager;
            this.$fsId = str;
            this.$imageRef = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$onProgress, this.this$0, this.$fsId, this.$imageRef, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getIO(), null, new QemuSessionManager$repair$2$repairJob$1(this.this$0, this.$fsId, this.$imageRef, null), 2, null);
                if (this.$onProgress != null) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, jobLaunch$default, this.$fsId, this.$onProgress, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$repair$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: QemuSessionManager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$repair$2$1", f = "QemuSessionManager.kt", i = {}, l = {221}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $fsId;
            final /* synthetic */ Function1<String, Unit> $onProgress;
            final /* synthetic */ Job $repairJob;
            int label;
            final /* synthetic */ QemuSessionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(QemuSessionManager qemuSessionManager, Job job, String str, Function1<? super String, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = qemuSessionManager;
                this.$repairJob = job;
                this.$fsId = str;
                this.$onProgress = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$repairJob, this.$fsId, this.$onProgress, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.pollProgressWhileActive(this.$repairJob, this.$fsId, this.$onProgress, this) == coroutine_suspended) {
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
    }

    private final String imageRefFor(Filesystem filesystem) {
        String str;
        if (filesystem.getFlavor().length() == 0 || Intrinsics.areEqual(filesystem.getFlavor(), "default")) {
            str = "";
        } else {
            str = "_" + filesystem.getFlavor();
        }
        return "ghcr.io//userland-" + filesystem.getDistributionType() + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String sharedStoragePath(Session session) {
        if (session.getShareStorage()) {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean settingsEnabled() {
        Context context = this.context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return !sharedPreferences.getBoolean("pref_hide_settings", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String appScriptContent(Session session) {
        if (!session.isAppsSession()) {
            return "";
        }
        File file = new File(this.context.getFilesDir(), "apps/" + session.getName() + "/" + session.getName() + ".sh");
        return file.exists() ? FilesKt.readText$default(file, null, 1, null) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String soundSupportScript(Session session) {
        if (!session.getSoundSupport() && !session.getMicSupport()) {
            return "\nsudo rm -f /etc/profile.d/sound_support.sh\n";
        }
        return "\nexport PULSE_SERVER=\"10.0.2.2\"\necho 'export PULSE_SERVER=\"10.0.2.2\"' | sudo tee /etc/profile.d/sound_support.sh > /dev/null\nsudo chmod +x /etc/profile.d/sound_support.sh\n";
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.QemuSessionManager$stopSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QemuSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.QemuSessionManager$stopSession$2", f = "QemuSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02882 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02882(Session session, Continuation<? super C02882> continuation) {
            super(2, continuation);
            this.$session = session;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return QemuSessionManager.this.new C02882(this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C02882) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CompanionControlSocketClient companionControlSocketClient = QemuSessionManager.this.socket;
                JSONObject jSONObjectPut = new JSONObject().put("fsId", String.valueOf(this.$session.getFilesystemId()));
                Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
                JSONObject jSONObjectRequest = companionControlSocketClient.request("stop", jSONObjectPut);
                boolean z = true;
                if (jSONObjectRequest != null && !jSONObjectRequest.optBoolean("result", true)) {
                    z = false;
                }
                return Boxing.boxBoolean(z);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object stopSession(Session session, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02882(session, null), continuation);
    }

    private final String getStatusRaw(String fsId) throws JSONException {
        CompanionControlSocketClient companionControlSocketClient = this.socket;
        JSONObject jSONObjectPut = new JSONObject().put("fsId", fsId);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        JSONObject jSONObjectRequest = companionControlSocketClient.request("getStatus", jSONObjectPut);
        String strOptString = jSONObjectRequest != null ? jSONObjectRequest.optString("result", "idle") : null;
        return strOptString == null ? "idle" : strOptString;
    }

    private final String getLastErrorRaw(String fsId) throws JSONException {
        CompanionControlSocketClient companionControlSocketClient = this.socket;
        JSONObject jSONObjectPut = new JSONObject().put("fsId", fsId);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        JSONObject jSONObjectRequest = companionControlSocketClient.request("getLastError", jSONObjectPut);
        String strOptString = jSONObjectRequest != null ? jSONObjectRequest.optString("result", "") : null;
        return strOptString == null ? "" : strOptString;
    }
}
