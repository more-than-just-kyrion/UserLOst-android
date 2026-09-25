package tech.ula.library.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.iiordanov.bVNC.Constants;
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
import tech.ula.library.ui.CompanionNotificationActionReceiver;

/* JADX INFO: compiled from: AvfSessionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 )2\u00020\u0001:\u0001)B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u0016J2\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\b2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u001eH\u0082@¢\u0006\u0002\u0010\u001fJ.\u0010 \u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001eH\u0086@¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\u0016H\u0002J.\u0010#\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0016\b\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\u001eH\u0086@¢\u0006\u0002\u0010!J\u0012\u0010$\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u000e\u0010%\u001a\u00020&2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010'\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010(\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Ltech/ula/library/utils/AvfSessionManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "socket", "Ltech/ula/library/utils/CompanionControlSocketClient;", "appScriptContent", "", "session", "Ltech/ula/library/model/entities/Session;", "bind", "", "getLastError", "getLastErrorRaw", "fsId", "getStatus", "getStatusRaw", "imageRefFor", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "isAvfRunnerBindable", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isAvfRunnerInstalled", "isUpdateRequired", "pollProgressWhileActive", "job", "Lkotlinx/coroutines/Job;", "onProgress", "Lkotlin/Function1;", "(Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "repair", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "settingsEnabled", "setup", "sharedStoragePath", "startSession", "", "stopSession", "unbind", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AvfSessionManager {
    private static final String AVF_CONTROL_SERVICE = "tech.ula.vm.AvfControlService";
    private static final String AVF_RUNNER_PACKAGE = "tech.ula.vm";
    private static final String AVF_VERSION_MANIFEST_URL = "";
    private static final int CONTROL_PORT = 17601;
    public static final int SSH_PORT = 2022;
    private static final String TAG = "AvfSessionManager";
    public static final int VNC_PORT = 5901;
    private final Context context;
    private final CompanionControlSocketClient socket;

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$isAvfRunnerBindable$1, reason: invalid class name */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager", f = "AvfSessionManager.kt", i = {0}, l = {114}, m = "isAvfRunnerBindable", n = {"this"}, s = {"L$0"})
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
            return AvfSessionManager.this.isAvfRunnerBindable(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$pollProgressWhileActive$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager", f = "AvfSessionManager.kt", i = {0, 0, 0, 0}, l = {155}, m = "pollProgressWhileActive", n = {"this", "job", "fsId", "onProgress"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C02721 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02721(Continuation<? super C02721> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AvfSessionManager.this.pollProgressWhileActive(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$repair$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager", f = "AvfSessionManager.kt", i = {0, 0}, l = {CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256}, m = "repair", n = {"this", "fsId"}, s = {"L$0", "L$1"})
    static final class C02731 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02731(Continuation<? super C02731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AvfSessionManager.this.repair(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$setup$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager", f = "AvfSessionManager.kt", i = {0, 0}, l = {CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA}, m = "setup", n = {"this", "fsId"}, s = {"L$0", "L$1"})
    static final class C02741 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02741(Continuation<? super C02741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AvfSessionManager.this.setup(null, null, this);
        }
    }

    public final void unbind() {
    }

    public AvfSessionManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.socket = new CompanionControlSocketClient(CONTROL_PORT);
    }

    public final void bind() {
        try {
            ContextCompat.startForegroundService(this.context, new Intent().setComponent(new ComponentName(AVF_RUNNER_PACKAGE, AVF_CONTROL_SERVICE)));
        } catch (IllegalStateException e) {
            Log.w(TAG, "startForegroundService failed", e);
        } catch (SecurityException e2) {
            Log.w(TAG, "startForegroundService denied", e2);
        }
    }

    public final boolean isAvfRunnerInstalled() {
        try {
            this.context.getPackageManager().getPackageInfo(AVF_RUNNER_PACKAGE, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean isUpdateRequired() {
        return CompanionAppUpdateChecker.INSTANCE.isUpdateRequired(this.context, AVF_RUNNER_PACKAGE, AVF_VERSION_MANIFEST_URL);
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
    public final java.lang.Object isAvfRunnerBindable(kotlin.coroutines.Continuation<? super java.lang.Boolean> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof tech.ula.library.utils.AvfSessionManager.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            tech.ula.library.utils.AvfSessionManager$isAvfRunnerBindable$1 r0 = (tech.ula.library.utils.AvfSessionManager.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            tech.ula.library.utils.AvfSessionManager$isAvfRunnerBindable$1 r0 = new tech.ula.library.utils.AvfSessionManager$isAvfRunnerBindable$1
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
            tech.ula.library.utils.AvfSessionManager r7 = (tech.ula.library.utils.AvfSessionManager) r7
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r10.isAvfRunnerInstalled()
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
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.AvfSessionManager.isAvfRunnerBindable(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object setup$default(AvfSessionManager avfSessionManager, Filesystem filesystem, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return avfSessionManager.setup(filesystem, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object setup(Filesystem filesystem, Function1<? super String, Unit> function1, Continuation<? super Boolean> continuation) {
        C02741 c02741;
        AvfSessionManager avfSessionManager;
        String str;
        if (continuation instanceof C02741) {
            c02741 = (C02741) continuation;
            if ((c02741.label & Integer.MIN_VALUE) != 0) {
                c02741.label -= Integer.MIN_VALUE;
            } else {
                c02741 = new C02741(continuation);
            }
        } else {
            c02741 = new C02741(continuation);
        }
        C02741 c02742 = c02741;
        Object obj = c02742.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02742.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(filesystem.getId());
            String strImageRefFor = imageRefFor(filesystem);
            String statusRaw = getStatusRaw(strValueOf);
            if (Intrinsics.areEqual(statusRaw, "ready") || Intrinsics.areEqual(statusRaw, "running")) {
                return Boxing.boxBoolean(true);
            }
            C02752 c02752 = new C02752(function1, this, strValueOf, strImageRefFor, null);
            c02742.L$0 = this;
            c02742.L$1 = strValueOf;
            c02742.label = 1;
            if (CoroutineScopeKt.coroutineScope(c02752, c02742) == coroutine_suspended) {
                return coroutine_suspended;
            }
            avfSessionManager = this;
            str = strValueOf;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02742.L$1;
            avfSessionManager = (AvfSessionManager) c02742.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(Intrinsics.areEqual(avfSessionManager.getStatusRaw(str), "ready"));
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$setup$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager$setup$2", f = "AvfSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02752 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $fsId;
        final /* synthetic */ String $imageRef;
        final /* synthetic */ Function1<String, Unit> $onProgress;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AvfSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02752(Function1<? super String, Unit> function1, AvfSessionManager avfSessionManager, String str, String str2, Continuation<? super C02752> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
            this.this$0 = avfSessionManager;
            this.$fsId = str;
            this.$imageRef = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02752 c02752 = new C02752(this.$onProgress, this.this$0, this.$fsId, this.$imageRef, continuation);
            c02752.L$0 = obj;
            return c02752;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02752) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getIO(), null, new AvfSessionManager$setup$2$setupJob$1(this.this$0, this.$fsId, this.$imageRef, null), 2, null);
                if (this.$onProgress != null) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, jobLaunch$default, this.$fsId, this.$onProgress, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$setup$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AvfSessionManager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager$setup$2$1", f = "AvfSessionManager.kt", i = {}, l = {CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $fsId;
            final /* synthetic */ Function1<String, Unit> $onProgress;
            final /* synthetic */ Job $setupJob;
            int label;
            final /* synthetic */ AvfSessionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(AvfSessionManager avfSessionManager, Job job, String str, Function1<? super String, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = avfSessionManager;
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
            boolean r0 = r11 instanceof tech.ula.library.utils.AvfSessionManager.C02721
            if (r0 == 0) goto L14
            r0 = r11
            tech.ula.library.utils.AvfSessionManager$pollProgressWhileActive$1 r0 = (tech.ula.library.utils.AvfSessionManager.C02721) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            tech.ula.library.utils.AvfSessionManager$pollProgressWhileActive$1 r0 = new tech.ula.library.utils.AvfSessionManager$pollProgressWhileActive$1
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
            tech.ula.library.utils.AvfSessionManager r2 = (tech.ula.library.utils.AvfSessionManager) r2
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
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.AvfSessionManager.pollProgressWhileActive(kotlinx.coroutines.Job, java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object repair$default(AvfSessionManager avfSessionManager, Filesystem filesystem, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return avfSessionManager.repair(filesystem, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object repair(Filesystem filesystem, Function1<? super String, Unit> function1, Continuation<? super Boolean> continuation) {
        C02731 c02731;
        AvfSessionManager avfSessionManager;
        String str;
        if (continuation instanceof C02731) {
            c02731 = (C02731) continuation;
            if ((c02731.label & Integer.MIN_VALUE) != 0) {
                c02731.label -= Integer.MIN_VALUE;
            } else {
                c02731 = new C02731(continuation);
            }
        } else {
            c02731 = new C02731(continuation);
        }
        Object obj = c02731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02731.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(filesystem.getId());
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(function1, this, strValueOf, imageRefFor(filesystem), null);
            c02731.L$0 = this;
            c02731.L$1 = strValueOf;
            c02731.label = 1;
            if (CoroutineScopeKt.coroutineScope(anonymousClass2, c02731) == coroutine_suspended) {
                return coroutine_suspended;
            }
            avfSessionManager = this;
            str = strValueOf;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02731.L$1;
            avfSessionManager = (AvfSessionManager) c02731.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(Intrinsics.areEqual(avfSessionManager.getStatusRaw(str), "ready"));
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$repair$2, reason: invalid class name */
    /* JADX INFO: compiled from: AvfSessionManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager$repair$2", f = "AvfSessionManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $fsId;
        final /* synthetic */ String $imageRef;
        final /* synthetic */ Function1<String, Unit> $onProgress;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AvfSessionManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super String, Unit> function1, AvfSessionManager avfSessionManager, String str, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
            this.this$0 = avfSessionManager;
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
                Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, Dispatchers.getIO(), null, new AvfSessionManager$repair$2$repairJob$1(this.this$0, this.$fsId, this.$imageRef, null), 2, null);
                if (this.$onProgress != null) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, jobLaunch$default, this.$fsId, this.$onProgress, null), 3, null);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: renamed from: tech.ula.library.utils.AvfSessionManager$repair$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AvfSessionManager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.utils.AvfSessionManager$repair$2$1", f = "AvfSessionManager.kt", i = {}, l = {CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $fsId;
            final /* synthetic */ Function1<String, Unit> $onProgress;
            final /* synthetic */ Job $repairJob;
            int label;
            final /* synthetic */ AvfSessionManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(AvfSessionManager avfSessionManager, Job job, String str, Function1<? super String, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = avfSessionManager;
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

    public final int startSession(Session session) throws JSONException {
        Intrinsics.checkNotNullParameter(session, "session");
        String strValueOf = String.valueOf(session.getFilesystemId());
        String string = session.getServiceType().toString();
        if (session.getSoundSupport() || session.getMicSupport()) {
            PulseAudioServer.INSTANCE.ensureRunning(this.context);
        }
        JSONObject jSONObjectPut = new JSONObject().put("fsId", strValueOf).put("serviceType", string).put("username", session.getUsername()).put(Constants.testpassword, session.getPassword()).put("vncPassword", session.getVncPassword()).put("geometry", session.getGeometry()).put("appScript", appScriptContent(session)).put(CompanionNotificationActionReceiver.EXTRA_SESSION_ID, session.getId()).put("settingsEnabled", settingsEnabled()).put("sharedPath", sharedStoragePath(session)).put("soundEnabled", session.getSoundSupport() || session.getMicSupport()).put("memoryBytes", session.getMemoryMb() > 0 ? 1048576 * session.getMemoryMb() : 0L).put("useAllCores", session.getCpuAllCores());
        CompanionControlSocketClient companionControlSocketClient = this.socket;
        Intrinsics.checkNotNull(jSONObjectPut);
        if (companionControlSocketClient.request("start", jSONObjectPut) == null) {
            Log.w(TAG, "start(" + strValueOf + ") failed, UserLOst VM may be unreachable");
            return -1;
        }
        String statusRaw = getStatusRaw(strValueOf);
        if (!Intrinsics.areEqual(statusRaw, "running")) {
            Log.e(TAG, "start(" + strValueOf + ") failed: status=" + statusRaw + " err=" + getLastErrorRaw(strValueOf));
            return -1;
        }
        CompanionControlSocketClient companionControlSocketClient2 = this.socket;
        JSONObject jSONObjectPut2 = new JSONObject().put("fsId", strValueOf).put("serviceType", string);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut2, "put(...)");
        JSONObject jSONObjectRequest = companionControlSocketClient2.request("getPort", jSONObjectPut2);
        if (jSONObjectRequest != null) {
            return jSONObjectRequest.optInt("result", -1);
        }
        return -1;
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

    private final String sharedStoragePath(Session session) {
        if (session.getShareStorage()) {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return null;
    }

    private final boolean settingsEnabled() {
        Context context = this.context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return !sharedPreferences.getBoolean("pref_hide_settings", false);
    }

    private final String appScriptContent(Session session) {
        if (!session.isAppsSession()) {
            return "";
        }
        File file = new File(this.context.getFilesDir(), "apps/" + session.getName() + "/" + session.getName() + ".sh");
        return file.exists() ? FilesKt.readText$default(file, null, 1, null) : "";
    }

    public final void stopSession(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CompanionControlSocketClient companionControlSocketClient = this.socket;
        JSONObject jSONObjectPut = new JSONObject().put("fsId", String.valueOf(session.getFilesystemId()));
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        companionControlSocketClient.request("stop", jSONObjectPut);
    }

    public final String getStatus(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return getStatusRaw(String.valueOf(session.getFilesystemId()));
    }

    public final String getLastError(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return getLastErrorRaw(String.valueOf(session.getFilesystemId()));
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
