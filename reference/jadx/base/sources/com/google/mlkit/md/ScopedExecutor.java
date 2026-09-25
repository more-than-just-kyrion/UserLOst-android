package com.google.mlkit.md;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScopedExecutor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0006\u0010\u0004\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/google/mlkit/md/ScopedExecutor;", "Ljava/util/concurrent/Executor;", "executor", "(Ljava/util/concurrent/Executor;)V", "shutdown", "Ljava/util/concurrent/atomic/AtomicBoolean;", "execute", "", "command", "Ljava/lang/Runnable;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ScopedExecutor implements Executor {
    private final Executor executor;
    private final AtomicBoolean shutdown;

    public ScopedExecutor(Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.executor = executor;
        this.shutdown = new AtomicBoolean();
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        if (this.shutdown.get()) {
            return;
        }
        this.executor.execute(new Runnable() { // from class: com.google.mlkit.md.ScopedExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ScopedExecutor.execute$lambda$0(this.f$0, command);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$0(ScopedExecutor this$0, Runnable command) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(command, "$command");
        if (this$0.shutdown.get()) {
            return;
        }
        command.run();
    }

    public final void shutdown() {
        this.shutdown.set(true);
    }
}
