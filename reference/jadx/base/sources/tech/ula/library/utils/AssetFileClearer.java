package tech.ula.library.utils;

import io.sentry.marshaller.json.JsonMarshaller;
import java.io.FileNotFoundException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AssetFileClearer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\rH\u0082@¢\u0006\u0002\u0010\u000eJ\u001c\u0010\u0010\u001a\u00020\r2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/ula/library/utils/AssetFileClearer;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "assetDirectoryNames", "", "", "busyboxExecutor", "Ltech/ula/library/utils/BusyboxExecutor;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/utils/UlaFiles;Ljava/util/Set;Ltech/ula/library/utils/BusyboxExecutor;Ltech/ula/library/utils/Logger;)V", "clearAllSupportAssets", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearFilesystemSupportAssets", "clearTopLevelAssets", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetFileClearer {
    private final Set<String> assetDirectoryNames;
    private final BusyboxExecutor busyboxExecutor;
    private final Logger logger;
    private final UlaFiles ulaFiles;

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetFileClearer$clearAllSupportAssets$1, reason: invalid class name */
    /* JADX INFO: compiled from: AssetFileClearer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetFileClearer", f = "AssetFileClearer.kt", i = {0}, l = {25, 26}, m = "clearAllSupportAssets", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return AssetFileClearer.this.clearAllSupportAssets(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetFileClearer$clearFilesystemSupportAssets$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetFileClearer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetFileClearer", f = "AssetFileClearer.kt", i = {0, 0, 0}, l = {58}, m = "clearFilesystemSupportAssets", n = {"this", "files", "supportFiles"}, s = {"L$0", "L$1", "L$2"})
    static final class C02701 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02701(Continuation<? super C02701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetFileClearer.this.clearFilesystemSupportAssets(this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetFileClearer$clearTopLevelAssets$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetFileClearer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetFileClearer", f = "AssetFileClearer.kt", i = {0, 0, 0}, l = {36}, m = "clearTopLevelAssets", n = {"this", "assetDirectoryNames", "files"}, s = {"L$0", "L$1", "L$2"})
    static final class C02711 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02711(Continuation<? super C02711> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetFileClearer.this.clearTopLevelAssets(null, this);
        }
    }

    public AssetFileClearer(UlaFiles ulaFiles, Set<String> assetDirectoryNames, BusyboxExecutor busyboxExecutor, Logger logger) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(assetDirectoryNames, "assetDirectoryNames");
        Intrinsics.checkNotNullParameter(busyboxExecutor, "busyboxExecutor");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.ulaFiles = ulaFiles;
        this.assetDirectoryNames = assetDirectoryNames;
        this.busyboxExecutor = busyboxExecutor;
        this.logger = logger;
    }

    public /* synthetic */ AssetFileClearer(UlaFiles ulaFiles, Set set, BusyboxExecutor busyboxExecutor, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaFiles, set, busyboxExecutor, (i & 8) != 0 ? new SentryLogger() : sentryLogger);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object clearAllSupportAssets(Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        AssetFileClearer assetFileClearer;
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
            if (!this.ulaFiles.getFilesDir().exists()) {
                FileNotFoundException fileNotFoundException = new FileNotFoundException();
                this.logger.addExceptionBreadcrumb(fileNotFoundException);
                throw fileNotFoundException;
            }
            if (!this.ulaFiles.getBusybox().exists()) {
                IllegalStateException illegalStateException = new IllegalStateException("Busybox missing");
                this.logger.addExceptionBreadcrumb(illegalStateException);
                throw illegalStateException;
            }
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            if (clearFilesystemSupportAssets(anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            assetFileClearer = this;
        } else {
            if (i == 1) {
                assetFileClearer = (AssetFileClearer) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
        Set<String> set = assetFileClearer.assetDirectoryNames;
        anonymousClass1.L$0 = null;
        anonymousClass1.label = 2;
        if (assetFileClearer.clearTopLevelAssets(set, anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x005e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0066  */
    /* JADX WARN: Code duplicated, block: B:28:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x009a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0064 -> B:35:0x00b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006e -> B:35:0x00b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007a -> B:35:0x00b1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:30:0x009d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object clearTopLevelAssets(java.util.Set<java.lang.String> r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.io.IOException {
        /*
            r10 = this;
            boolean r0 = r12 instanceof tech.ula.library.utils.AssetFileClearer.C02711
            if (r0 == 0) goto L14
            r0 = r12
            tech.ula.library.utils.AssetFileClearer$clearTopLevelAssets$1 r0 = (tech.ula.library.utils.AssetFileClearer.C02711) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            tech.ula.library.utils.AssetFileClearer$clearTopLevelAssets$1 r0 = new tech.ula.library.utils.AssetFileClearer$clearTopLevelAssets$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            int r11 = r0.I$1
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$2
            java.io.File[] r4 = (java.io.File[]) r4
            java.lang.Object r5 = r0.L$1
            java.util.Set r5 = (java.util.Set) r5
            java.lang.Object r6 = r0.L$0
            tech.ula.library.utils.AssetFileClearer r6 = (tech.ula.library.utils.AssetFileClearer) r6
            kotlin.ResultKt.throwOnFailure(r12)
            goto L9d
        L3a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L42:
            kotlin.ResultKt.throwOnFailure(r12)
            tech.ula.library.utils.UlaFiles r12 = r10.ulaFiles
            java.io.File r12 = r12.getFilesDir()
            java.io.File[] r12 = r12.listFiles()
            if (r12 != 0) goto L54
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L54:
            int r2 = r12.length
            r4 = 0
            r6 = r10
            r9 = r12
            r12 = r11
            r11 = r2
            r2 = r4
            r4 = r9
        L5c:
            if (r2 >= r11) goto Lb3
            r5 = r4[r2]
            boolean r7 = r5.isDirectory()
            if (r7 == 0) goto Lb1
            java.lang.String r7 = r5.getName()
            boolean r7 = r12.contains(r7)
            if (r7 == 0) goto Lb1
            java.lang.String r7 = r5.getName()
            java.lang.String r8 = "support"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r8)
            if (r7 != 0) goto Lb1
            tech.ula.library.utils.BusyboxExecutor r7 = r6.busyboxExecutor
            java.lang.String r5 = r5.getAbsolutePath()
            java.lang.String r8 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r8)
            r0.L$0 = r6
            r0.L$1 = r12
            r0.L$2 = r4
            r0.I$0 = r2
            r0.I$1 = r11
            r0.label = r3
            java.lang.Object r5 = r7.recursivelyDelete(r5, r0)
            if (r5 != r1) goto L9a
            return r1
        L9a:
            r9 = r5
            r5 = r12
            r12 = r9
        L9d:
            boolean r12 = r12 instanceof tech.ula.library.utils.SuccessfulExecution
            if (r12 == 0) goto La3
            r12 = r5
            goto Lb1
        La3:
            java.io.IOException r11 = new java.io.IOException
            r11.<init>()
            tech.ula.library.utils.Logger r12 = r6.logger
            r0 = r11
            java.lang.Exception r0 = (java.lang.Exception) r0
            r12.addExceptionBreadcrumb(r0)
            throw r11
        Lb1:
            int r2 = r2 + r3
            goto L5c
        Lb3:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.AssetFileClearer.clearTopLevelAssets(java.util.Set, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:50:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:50:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0098 -> B:50:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009e -> B:50:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:50:0x0109). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:34:0x00b2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ba -> B:48:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cb -> B:48:0x0103). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00ed -> B:43:0x00f0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object clearFilesystemSupportAssets(kotlin.coroutines.Continuation<? super kotlin.Unit> r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.AssetFileClearer.clearFilesystemSupportAssets(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
