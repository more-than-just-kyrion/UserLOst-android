package org.apache.commons.compress;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class MemoryLimitException extends IOException {
    private static final long serialVersionUID = 1;
    private final int memoryLimitInKb;
    private final long memoryNeededInKb;

    private static String buildMessage(long j, int i) {
        return j + " kb of memory would be needed; limit was " + i + " kb. If the file is not corrupt, consider increasing the memory limit.";
    }

    public MemoryLimitException(long j, int i) {
        super(buildMessage(j, i));
        this.memoryNeededInKb = j;
        this.memoryLimitInKb = i;
    }

    public MemoryLimitException(long j, int i, Exception exc) {
        super(buildMessage(j, i), exc);
        this.memoryNeededInKb = j;
        this.memoryLimitInKb = i;
    }

    public int getMemoryLimitInKb() {
        return this.memoryLimitInKb;
    }

    public long getMemoryNeededInKb() {
        return this.memoryNeededInKb;
    }
}
