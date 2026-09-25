package com.github.luben.zstd;

/* JADX INFO: loaded from: classes.dex */
public class ZstdFrameProgression {
    private long consumed;
    private int currentJobID;
    private long flushed;
    private long ingested;
    private int nbActiveWorkers;
    private long produced;

    public ZstdFrameProgression(long j, long j2, long j3, long j4, int i, int i2) {
        this.ingested = j;
        this.consumed = j2;
        this.produced = j3;
        this.flushed = j4;
        this.currentJobID = i;
        this.nbActiveWorkers = i2;
    }

    public long getIngested() {
        return this.ingested;
    }

    public long getConsumed() {
        return this.consumed;
    }

    public long getProduced() {
        return this.produced;
    }

    public long getFlushed() {
        return this.flushed;
    }

    public int getCurrentJobID() {
        return this.currentJobID;
    }

    public int getNbActiveWorkers() {
        return this.nbActiveWorkers;
    }
}
