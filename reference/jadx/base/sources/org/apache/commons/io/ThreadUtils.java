package org.apache.commons.io;

import java.time.Duration;
import java.time.Instant;
import java.time.temporal.TemporalAmount;
import kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes3.dex */
public final class ThreadUtils {
    private static int getNanosOfMilli(Duration duration) {
        return duration.getNano() % DurationKt.NANOS_IN_MILLIS;
    }

    public static void sleep(Duration duration) throws InterruptedException {
        Instant instantPlus = Instant.now().plus((TemporalAmount) duration);
        do {
            Thread.sleep(duration.toMillis(), getNanosOfMilli(duration));
            duration = Duration.between(Instant.now(), instantPlus);
        } while (!duration.isNegative());
    }
}
