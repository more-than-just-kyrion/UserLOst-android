package io.sentry.connection;

import io.sentry.time.Clock;
import io.sentry.time.SystemClock;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class LockdownManager {
    private long baseLockdownTime;
    private final Clock clock;
    private Date lockdownStartTime;
    private long lockdownTime;
    private long maxLockdownTime;
    public static final long DEFAULT_MAX_LOCKDOWN_TIME = TimeUnit.MINUTES.toMillis(5);
    public static final long DEFAULT_BASE_LOCKDOWN_TIME = TimeUnit.SECONDS.toMillis(1);

    public LockdownManager() {
        this(new SystemClock());
    }

    public LockdownManager(Clock clock) {
        this.maxLockdownTime = DEFAULT_MAX_LOCKDOWN_TIME;
        this.baseLockdownTime = DEFAULT_BASE_LOCKDOWN_TIME;
        this.lockdownTime = 0L;
        this.lockdownStartTime = null;
        this.clock = clock;
    }

    public synchronized boolean isLockedDown() {
        return this.lockdownStartTime != null && this.clock.millis() - this.lockdownStartTime.getTime() < this.lockdownTime;
    }

    public synchronized void unlock() {
        this.lockdownTime = 0L;
        this.lockdownStartTime = null;
    }

    public synchronized boolean lockdown(ConnectionException connectionException) {
        if (isLockedDown()) {
            return false;
        }
        if (connectionException != null && connectionException.getRecommendedLockdownTime() != null) {
            this.lockdownTime = connectionException.getRecommendedLockdownTime().longValue();
        } else {
            long j = this.lockdownTime;
            if (j != 0) {
                this.lockdownTime = j * 2;
            } else {
                this.lockdownTime = this.baseLockdownTime;
            }
        }
        this.lockdownTime = Math.min(this.maxLockdownTime, this.lockdownTime);
        this.lockdownStartTime = this.clock.date();
        return true;
    }

    public synchronized void setBaseLockdownTime(long j) {
        this.baseLockdownTime = j;
    }

    public synchronized void setMaxLockdownTime(long j) {
        this.maxLockdownTime = j;
    }
}
