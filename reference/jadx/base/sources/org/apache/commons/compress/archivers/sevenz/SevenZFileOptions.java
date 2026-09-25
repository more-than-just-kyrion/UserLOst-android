package org.apache.commons.compress.archivers.sevenz;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class SevenZFileOptions {
    public static final SevenZFileOptions DEFAULT = new SevenZFileOptions(Integer.MAX_VALUE, false, false);
    private final int maxMemoryLimitKb;
    private final boolean tryToRecoverBrokenArchives;
    private final boolean useDefaultNameForUnnamedEntries;

    public static class Builder {
        private int maxMemoryLimitKb = Integer.MAX_VALUE;
        private boolean useDefaultNameForUnnamedEntries = false;
        private boolean tryToRecoverBrokenArchives = false;

        public SevenZFileOptions build() {
            return new SevenZFileOptions(this.maxMemoryLimitKb, this.useDefaultNameForUnnamedEntries, this.tryToRecoverBrokenArchives);
        }

        public Builder withMaxMemoryLimitInKb(int i) {
            this.maxMemoryLimitKb = i;
            return this;
        }

        public Builder withTryToRecoverBrokenArchives(boolean z) {
            this.tryToRecoverBrokenArchives = z;
            return this;
        }

        public Builder withUseDefaultNameForUnnamedEntries(boolean z) {
            this.useDefaultNameForUnnamedEntries = z;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    private SevenZFileOptions(int i, boolean z, boolean z2) {
        this.maxMemoryLimitKb = i;
        this.useDefaultNameForUnnamedEntries = z;
        this.tryToRecoverBrokenArchives = z2;
    }

    public int getMaxMemoryLimitInKb() {
        return this.maxMemoryLimitKb;
    }

    public boolean getTryToRecoverBrokenArchives() {
        return this.tryToRecoverBrokenArchives;
    }

    public boolean getUseDefaultNameForUnnamedEntries() {
        return this.useDefaultNameForUnnamedEntries;
    }
}
