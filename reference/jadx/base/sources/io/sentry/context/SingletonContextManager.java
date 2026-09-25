package io.sentry.context;

/* JADX INFO: loaded from: classes2.dex */
public class SingletonContextManager implements ContextManager {
    private final Context context = new Context();

    @Override // io.sentry.context.ContextManager
    public Context getContext() {
        return this.context;
    }

    @Override // io.sentry.context.ContextManager
    public void clear() {
        this.context.clear();
    }
}
