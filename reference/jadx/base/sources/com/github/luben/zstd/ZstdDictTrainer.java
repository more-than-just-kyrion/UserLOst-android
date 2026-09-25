package com.github.luben.zstd;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ZstdDictTrainer {
    private final int allocatedSize;
    private final int dictSize;
    private long filledSize;
    private int level;
    private final List<Integer> sampleSizes;
    private final ByteBuffer trainingSamples;

    public ZstdDictTrainer(int i, int i2) {
        this(i, i2, Zstd.defaultCompressionLevel());
    }

    public ZstdDictTrainer(int i, int i2, int i3) {
        this.trainingSamples = ByteBuffer.allocateDirect(i);
        this.sampleSizes = new ArrayList();
        this.allocatedSize = i;
        this.dictSize = i2;
        this.level = i3;
    }

    public synchronized boolean addSample(byte[] bArr) {
        if (this.filledSize + ((long) bArr.length) > this.allocatedSize) {
            return false;
        }
        this.trainingSamples.put(bArr);
        this.sampleSizes.add(Integer.valueOf(bArr.length));
        this.filledSize += (long) bArr.length;
        return true;
    }

    public ByteBuffer trainSamplesDirect() throws ZstdException {
        return trainSamplesDirect(false);
    }

    public synchronized ByteBuffer trainSamplesDirect(boolean z) throws ZstdException {
        ByteBuffer byteBufferAllocateDirect;
        byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.dictSize);
        long jTrainFromBufferDirect = Zstd.trainFromBufferDirect(this.trainingSamples, copyToIntArray(this.sampleSizes), byteBufferAllocateDirect, z, this.level);
        if (Zstd.isError(jTrainFromBufferDirect)) {
            byteBufferAllocateDirect.limit(0);
            throw new ZstdException(jTrainFromBufferDirect);
        }
        byteBufferAllocateDirect.limit(Long.valueOf(jTrainFromBufferDirect).intValue());
        return byteBufferAllocateDirect;
    }

    public byte[] trainSamples() throws ZstdException {
        return trainSamples(false);
    }

    public byte[] trainSamples(boolean z) throws ZstdException {
        ByteBuffer byteBufferTrainSamplesDirect = trainSamplesDirect(z);
        byte[] bArr = new byte[byteBufferTrainSamplesDirect.remaining()];
        byteBufferTrainSamplesDirect.get(bArr);
        return bArr;
    }

    private int[] copyToIntArray(List<Integer> list) {
        int[] iArr = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        return iArr;
    }
}
