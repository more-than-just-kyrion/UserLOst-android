package org.apache.commons.compress.utils;

import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.file.attribute.FileTimes;

/* JADX INFO: loaded from: classes3.dex */
public final class TimeUtils {
    static final long HUNDRED_NANOS_PER_MILLISECOND = TimeUnit.MILLISECONDS.toNanos(1) / 100;
    static final long WINDOWS_EPOCH_OFFSET = -116444736000000000L;

    public static boolean isUnixTime(long j) {
        return -2147483648L <= j && j <= 2147483647L;
    }

    public static boolean isUnixTime(FileTime fileTime) {
        return isUnixTime(toUnixTime(fileTime));
    }

    @Deprecated
    public static Date ntfsTimeToDate(long j) {
        return FileTimes.ntfsTimeToDate(j);
    }

    @Deprecated
    public static FileTime ntfsTimeToFileTime(long j) {
        return FileTimes.ntfsTimeToFileTime(j);
    }

    @Deprecated
    public static Date toDate(FileTime fileTime) {
        return FileTimes.toDate(fileTime);
    }

    @Deprecated
    public static FileTime toFileTime(Date date) {
        return FileTimes.toFileTime(date);
    }

    @Deprecated
    public static long toNtfsTime(Date date) {
        return FileTimes.toNtfsTime(date);
    }

    @Deprecated
    public static long toNtfsTime(FileTime fileTime) {
        return FileTimes.toNtfsTime(fileTime);
    }

    public static long toNtfsTime(long j) {
        return Math.subtractExact(j * HUNDRED_NANOS_PER_MILLISECOND, WINDOWS_EPOCH_OFFSET);
    }

    public static long toUnixTime(FileTime fileTime) {
        if (fileTime != null) {
            return fileTime.to(TimeUnit.SECONDS);
        }
        return 0L;
    }

    public static FileTime truncateToHundredNanos(FileTime fileTime) {
        Instant instant = fileTime.toInstant();
        return FileTime.from(Instant.ofEpochSecond(instant.getEpochSecond(), (instant.getNano() / 100) * 100));
    }

    public static FileTime unixTimeToFileTime(long j) {
        return FileTime.from(j, TimeUnit.SECONDS);
    }

    private TimeUtils() {
    }
}
