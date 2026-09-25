package tech.ula.library.utils;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: BusyboxExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nH\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nJd\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172$\b\u0002\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`\u001a2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\b\b\u0002\u0010\u001b\u001a\u00020\u001cJ$\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u000b2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nJ\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0002J\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010$J*\u0010%\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0&2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Ltech/ula/library/utils/BusyboxExecutor;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "prootDebugLogger", "Ltech/ula/library/utils/ProotDebugLogger;", "busyboxWrapper", "Ltech/ula/library/utils/BusyboxWrapper;", "(Ltech/ula/library/utils/UlaFiles;Ltech/ula/library/utils/ProotDebugLogger;Ltech/ula/library/utils/BusyboxWrapper;)V", "discardOutput", "Lkotlin/Function1;", "", "collectOutput", "", "inputStream", "Ljava/io/InputStream;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "executeCommand", "Ltech/ula/library/utils/ExecutionResult;", "command", "executeProotCommand", "filesystemDirName", "commandShouldTerminate", "", "env", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "executeScript", "scriptCall", "getProcessResult", "process", "Ljava/lang/Process;", "recursivelyDelete", "absolutePath", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runCommand", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BusyboxExecutor {
    private final BusyboxWrapper busyboxWrapper;
    private final Function1<String, Object> discardOutput;
    private final ProotDebugLogger prootDebugLogger;
    private final UlaFiles ulaFiles;

    public BusyboxExecutor(UlaFiles ulaFiles, ProotDebugLogger prootDebugLogger, BusyboxWrapper busyboxWrapper) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(prootDebugLogger, "prootDebugLogger");
        Intrinsics.checkNotNullParameter(busyboxWrapper, "busyboxWrapper");
        this.ulaFiles = ulaFiles;
        this.prootDebugLogger = prootDebugLogger;
        this.busyboxWrapper = busyboxWrapper;
        this.discardOutput = new Function1<String, Unit>() { // from class: tech.ula.library.utils.BusyboxExecutor$discardOutput$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }
        };
    }

    public /* synthetic */ BusyboxExecutor(UlaFiles ulaFiles, ProotDebugLogger prootDebugLogger, BusyboxWrapper busyboxWrapper, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaFiles, prootDebugLogger, (i & 4) != 0 ? new BusyboxWrapper(ulaFiles) : busyboxWrapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExecutionResult executeScript$default(BusyboxExecutor busyboxExecutor, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = busyboxExecutor.discardOutput;
        }
        return busyboxExecutor.executeScript(str, function1);
    }

    public final ExecutionResult executeScript(String scriptCall, Function1<? super String, ? extends Object> listener) {
        Intrinsics.checkNotNullParameter(scriptCall, "scriptCall");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return runCommand(this.busyboxWrapper.wrapScript(scriptCall), listener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExecutionResult executeCommand$default(BusyboxExecutor busyboxExecutor, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = busyboxExecutor.discardOutput;
        }
        return busyboxExecutor.executeCommand(str, function1);
    }

    public final ExecutionResult executeCommand(String command, Function1<? super String, ? extends Object> listener) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return runCommand(this.busyboxWrapper.wrapCommand(command), listener);
    }

    private final ExecutionResult runCommand(List<String> command, Function1<? super String, ? extends Object> listener) {
        if (!this.busyboxWrapper.busyboxIsPresent()) {
            return new MissingExecutionAsset("busybox");
        }
        HashMap<String, String> busyboxEnv = this.busyboxWrapper.getBusyboxEnv();
        ProcessBuilder processBuilder = new ProcessBuilder(command);
        processBuilder.directory(this.ulaFiles.getFilesDir());
        processBuilder.environment().putAll(busyboxEnv);
        processBuilder.redirectErrorStream(true);
        try {
            Process processStart = processBuilder.start();
            InputStream inputStream = processStart.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            collectOutput(inputStream, listener);
            Intrinsics.checkNotNull(processStart);
            return getProcessResult(processStart);
        } catch (Exception e) {
            return new FailedExecution(String.valueOf(e));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ExecutionResult executeProotCommand$default(BusyboxExecutor busyboxExecutor, String str, String str2, boolean z, HashMap map, Function1 function1, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 8) != 0) {
            map = new HashMap();
        }
        HashMap map2 = map;
        if ((i & 16) != 0) {
            function1 = busyboxExecutor.discardOutput;
        }
        Function1 function2 = function1;
        if ((i & 32) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        return busyboxExecutor.executeProotCommand(str, str2, z, map2, function2, coroutineScope);
    }

    public final ExecutionResult executeProotCommand(String command, String filesystemDirName, boolean commandShouldTerminate, HashMap<String, String> env, Function1<? super String, ? extends Object> listener, CoroutineScope coroutineScope) {
        OngoingExecution ongoingExecution;
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(filesystemDirName, "filesystemDirName");
        Intrinsics.checkNotNullParameter(env, "env");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        if (!this.busyboxWrapper.busyboxIsPresent()) {
            return new MissingExecutionAsset("busybox");
        }
        if (!this.busyboxWrapper.prootIsPresent()) {
            return new MissingExecutionAsset("proot");
        }
        if (!this.busyboxWrapper.executionScriptIsPresent()) {
            return new MissingExecutionAsset("execution script");
        }
        boolean zIsEnabled = this.prootDebugLogger.isEnabled();
        String verbosityLevel = zIsEnabled ? this.prootDebugLogger.getVerbosityLevel() : "-1";
        List<String> listAddBusyboxAndProot = this.busyboxWrapper.addBusyboxAndProot(command);
        env.putAll(this.busyboxWrapper.getProotEnv(env, new File(this.ulaFiles.getFilesDir().getAbsolutePath() + "/" + filesystemDirName), verbosityLevel));
        ProcessBuilder processBuilder = new ProcessBuilder(listAddBusyboxAndProot);
        processBuilder.directory(this.ulaFiles.getFilesDir());
        processBuilder.environment().putAll(env);
        processBuilder.redirectErrorStream(true);
        try {
            Process processStart = processBuilder.start();
            if (zIsEnabled && commandShouldTerminate) {
                listener.invoke("Output redirecting to proot debug log");
                ProotDebugLogger prootDebugLogger = this.prootDebugLogger;
                InputStream inputStream = processStart.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                prootDebugLogger.logStream(inputStream, coroutineScope);
                Intrinsics.checkNotNull(processStart);
                ongoingExecution = getProcessResult(processStart);
            } else if (zIsEnabled && !commandShouldTerminate) {
                listener.invoke("Output redirecting to proot debug log");
                ProotDebugLogger prootDebugLogger2 = this.prootDebugLogger;
                InputStream inputStream2 = processStart.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream2, "getInputStream(...)");
                prootDebugLogger2.logStream(inputStream2, coroutineScope);
                Intrinsics.checkNotNull(processStart);
                ongoingExecution = new OngoingExecution(processStart);
            } else if (commandShouldTerminate) {
                InputStream inputStream3 = processStart.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream3, "getInputStream(...)");
                collectOutput(inputStream3, listener);
                Intrinsics.checkNotNull(processStart);
                ongoingExecution = getProcessResult(processStart);
            } else {
                Intrinsics.checkNotNull(processStart);
                ongoingExecution = new OngoingExecution(processStart);
            }
            return ongoingExecution;
        } catch (Exception e) {
            return new FailedExecution(String.valueOf(e));
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.BusyboxExecutor$recursivelyDelete$2, reason: invalid class name */
    /* JADX INFO: compiled from: BusyboxExecutor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/utils/ExecutionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.BusyboxExecutor$recursivelyDelete$2", f = "BusyboxExecutor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ExecutionResult>, Object> {
        final /* synthetic */ String $absolutePath;
        int label;
        final /* synthetic */ BusyboxExecutor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, BusyboxExecutor busyboxExecutor, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$absolutePath = str;
            this.this$0 = busyboxExecutor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$absolutePath, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ExecutionResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return BusyboxExecutor.executeCommand$default(this.this$0, "rm -rf " + this.$absolutePath, null, 2, null);
        }
    }

    public final Object recursivelyDelete(String str, Continuation<? super ExecutionResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(str, this, null), continuation);
    }

    private final void collectOutput(InputStream inputStream, final Function1<? super String, ? extends Object> listener) throws IOException {
        Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        TextStreamsKt.forEachLine(bufferedReader, new Function1<String, Unit>() { // from class: tech.ula.library.utils.BusyboxExecutor.collectOutput.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                listener.invoke(it);
            }
        });
        bufferedReader.close();
    }

    private final ExecutionResult getProcessResult(Process process) {
        if (process.waitFor() == 0) {
            return SuccessfulExecution.INSTANCE;
        }
        return new FailedExecution("Command failed with: " + process.exitValue());
    }
}
