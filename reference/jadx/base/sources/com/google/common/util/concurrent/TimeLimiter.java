package com.google.common.util.concurrent;

import com.google.errorprone.annotations.DoNotMock;
import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock("Use FakeTimeLimiter")
public interface TimeLimiter {
    <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException;

    <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException;

    <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit);

    void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException;

    void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException;

    default <T> T newProxy(T t, Class<T> cls, Duration duration) {
        return (T) newProxy(t, cls, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    default <T> T callWithTimeout(Callable<T> callable, Duration duration) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) callWithTimeout(callable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    default <T> T callUninterruptiblyWithTimeout(Callable<T> callable, Duration duration) throws ExecutionException, TimeoutException {
        return (T) callUninterruptiblyWithTimeout(callable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    default void runWithTimeout(Runnable runnable, Duration duration) throws InterruptedException, TimeoutException {
        runWithTimeout(runnable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }

    default void runUninterruptiblyWithTimeout(Runnable runnable, Duration duration) throws TimeoutException {
        runUninterruptiblyWithTimeout(runnable, Internal.toNanosSaturated(duration), TimeUnit.NANOSECONDS);
    }
}
