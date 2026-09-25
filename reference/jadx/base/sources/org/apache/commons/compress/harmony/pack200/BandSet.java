package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.function.IntUnaryOperator;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.stream.IntStream;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BandSet {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private static final int[] effortThresholds = {0, 0, 1000, 500, 100, 100, 100, 100, 100, 0};
    private long[] canonicalLargest;
    private long[] canonicalSmallest;
    final int effort;
    protected final SegmentHeader segmentHeader;

    public abstract void pack(OutputStream outputStream) throws IOException;

    public class BandAnalysisResults {
        private Codec betterCodec;
        private byte[] encodedBand;
        private int[] extraMetadata;
        private int numCodecsTried;
        private int saved;

        public BandAnalysisResults() {
        }

        static /* synthetic */ int access$408(BandAnalysisResults bandAnalysisResults) {
            int i = bandAnalysisResults.numCodecsTried;
            bandAnalysisResults.numCodecsTried = i + 1;
            return i;
        }

        static /* synthetic */ int access$412(BandAnalysisResults bandAnalysisResults, int i) {
            int i2 = bandAnalysisResults.numCodecsTried + i;
            bandAnalysisResults.numCodecsTried = i2;
            return i2;
        }

        static /* synthetic */ int access$612(BandAnalysisResults bandAnalysisResults, int i) {
            int i2 = bandAnalysisResults.saved + i;
            bandAnalysisResults.saved = i2;
            return i2;
        }
    }

    public class BandData {
        private double averageAbsoluteDelta;
        private double averageAbsoluteValue;
        private final int[] band;
        private int deltaIsAscending;
        private Map<Integer, Integer> distinctValues;
        private int largest;
        private int largestDelta;
        private int smallDeltaCount;
        private int smallest;
        private int smallestDelta;

        public BandData(int[] iArr) {
            Integer numValueOf;
            this.smallest = Integer.MAX_VALUE;
            this.largest = Integer.MIN_VALUE;
            this.band = iArr;
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i];
                if (i2 < this.smallest) {
                    this.smallest = i2;
                }
                if (i2 > this.largest) {
                    this.largest = i2;
                }
                if (i != 0) {
                    int i3 = i2 - iArr[i - 1];
                    if (i3 < this.smallestDelta) {
                        this.smallestDelta = i3;
                    }
                    if (i3 > this.largestDelta) {
                        this.largestDelta = i3;
                    }
                    if (i3 >= 0) {
                        this.deltaIsAscending++;
                    }
                    this.averageAbsoluteDelta += ((double) Math.abs(i3)) / ((double) (iArr.length - 1));
                    if (Math.abs(i3) < 256) {
                        this.smallDeltaCount++;
                    }
                } else {
                    int i4 = iArr[0];
                    this.smallestDelta = i4;
                    this.largestDelta = i4;
                }
                this.averageAbsoluteValue += ((double) Math.abs(iArr[i])) / ((double) iArr.length);
                if (BandSet.this.effort > 3) {
                    if (this.distinctValues == null) {
                        this.distinctValues = new HashMap();
                    }
                    Integer numValueOf2 = Integer.valueOf(iArr[i]);
                    Integer num = this.distinctValues.get(numValueOf2);
                    if (num == null) {
                        numValueOf = 1;
                    } else {
                        numValueOf = Integer.valueOf(num.intValue() + 1);
                    }
                    this.distinctValues.put(numValueOf2, numValueOf);
                }
            }
        }

        public boolean anyNegatives() {
            return this.smallest < 0;
        }

        public boolean mainlyPositiveDeltas() {
            return ((float) this.deltaIsAscending) / ((float) this.band.length) > 0.95f;
        }

        public boolean mainlySmallDeltas() {
            return ((float) this.smallDeltaCount) / ((float) this.band.length) > 0.7f;
        }

        public int numDistinctValues() {
            Map<Integer, Integer> map = this.distinctValues;
            if (map == null) {
                return this.band.length;
            }
            return map.size();
        }

        public boolean wellCorrelated() {
            return this.averageAbsoluteDelta * 3.1d < this.averageAbsoluteValue;
        }
    }

    public BandSet(int i, SegmentHeader segmentHeader) {
        this.effort = i;
        this.segmentHeader = segmentHeader;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ae A[RETURN] */
    private BandAnalysisResults analyseBand(String str, int[] iArr, BHSDCodec bHSDCodec) throws Pack200Exception {
        BandAnalysisResults bandAnalysisResults = new BandAnalysisResults();
        if (this.canonicalLargest == null) {
            this.canonicalLargest = new long[116];
            this.canonicalSmallest = new long[116];
            int i = 1;
            while (true) {
                long[] jArr = this.canonicalLargest;
                if (i >= jArr.length) {
                    break;
                }
                jArr[i] = CodecEncoding.getCanonicalCodec(i).largest();
                this.canonicalSmallest[i] = CodecEncoding.getCanonicalCodec(i).smallest();
                i++;
            }
        }
        BandData bandData = new BandData(iArr);
        byte[] bArrEncode = bHSDCodec.encode(iArr);
        bandAnalysisResults.encodedBand = bArrEncode;
        if (bArrEncode.length <= (iArr.length + 23) - (this.effort * 2)) {
            return bandAnalysisResults;
        }
        if (!bandData.anyNegatives() && bandData.largest <= Codec.BYTE1.largest()) {
            bandAnalysisResults.encodedBand = Codec.BYTE1.encode(iArr);
            bandAnalysisResults.betterCodec = Codec.BYTE1;
            return bandAnalysisResults;
        }
        if (this.effort > 3 && !str.equals("POPULATION")) {
            int iNumDistinctValues = bandData.numDistinctValues();
            float length = iNumDistinctValues / iArr.length;
            if (iNumDistinctValues >= 100) {
                double d = length;
                if (d < 0.02d || (this.effort > 6 && d < 0.04d)) {
                    encodeWithPopulationCodec(str, iArr, bHSDCodec, bandData, bandAnalysisResults);
                    if (timeToStop(bandAnalysisResults)) {
                        return bandAnalysisResults;
                    }
                }
            } else {
                encodeWithPopulationCodec(str, iArr, bHSDCodec, bandData, bandAnalysisResults);
                if (timeToStop(bandAnalysisResults)) {
                    return bandAnalysisResults;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (bandData.mainlyPositiveDeltas() && bandData.mainlySmallDeltas()) {
            arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs2);
        }
        if (bandData.wellCorrelated()) {
            if (bandData.mainlyPositiveDeltas()) {
                arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs1);
                arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs3);
                arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs4);
                arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs5);
                arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs1);
                arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs3);
                arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs4);
                arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs5);
                arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs2);
            } else {
                arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs1);
                arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs3);
                arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs2);
                arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs4);
                arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs5);
                arrayList.add(CanonicalCodecFamilies.nonDeltaSignedCodecs1);
                arrayList.add(CanonicalCodecFamilies.nonDeltaSignedCodecs2);
            }
        } else if (bandData.anyNegatives()) {
            arrayList.add(CanonicalCodecFamilies.nonDeltaSignedCodecs1);
            arrayList.add(CanonicalCodecFamilies.nonDeltaSignedCodecs2);
            arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs1);
            arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs2);
            arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs3);
            arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs4);
            arrayList.add(CanonicalCodecFamilies.deltaSignedCodecs5);
        } else {
            arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs1);
            arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs3);
            arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs4);
            arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs5);
            arrayList.add(CanonicalCodecFamilies.nonDeltaUnsignedCodecs2);
            arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs1);
            arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs3);
            arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs4);
            arrayList.add(CanonicalCodecFamilies.deltaUnsignedCodecs5);
        }
        if (str.equalsIgnoreCase("cpint")) {
            System.out.print("");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            tryCodecs(str, iArr, bHSDCodec, bandData, bandAnalysisResults, bArrEncode, (BHSDCodec[]) it.next());
            if (timeToStop(bandAnalysisResults)) {
                break;
            }
        }
        return bandAnalysisResults;
    }

    protected int[] cpEntryListToArray(List<? extends ConstantPoolEntry> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            int index = list.get(i).getIndex();
            iArr[i] = index;
            if (index < 0) {
                throw new IllegalArgumentException("Index should be > 0");
            }
        }
        return iArr;
    }

    protected int[] cpEntryOrNullListToArray(List<? extends ConstantPoolEntry> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            ConstantPoolEntry constantPoolEntry = list.get(i);
            iArr[i] = constantPoolEntry == null ? 0 : constantPoolEntry.getIndex() + 1;
            if (constantPoolEntry != null && constantPoolEntry.getIndex() < 0) {
                throw new IllegalArgumentException("Index should be > 0");
            }
        }
        return iArr;
    }

    public byte[] encodeBandInt(String str, int[] iArr, BHSDCodec bHSDCodec) throws Pack200Exception {
        byte[] bArrEncode;
        int i = this.effort;
        if (i <= 1 || iArr.length < effortThresholds[i]) {
            bArrEncode = null;
        } else {
            BandAnalysisResults bandAnalysisResultsAnalyseBand = analyseBand(str, iArr, bHSDCodec);
            Codec codec = bandAnalysisResultsAnalyseBand.betterCodec;
            bArrEncode = bandAnalysisResultsAnalyseBand.encodedBand;
            if (codec != null) {
                if (codec instanceof BHSDCodec) {
                    int[] specifier = CodecEncoding.getSpecifier(codec, bHSDCodec);
                    int i2 = specifier[0];
                    if (specifier.length > 1) {
                        for (int i3 = 1; i3 < specifier.length; i3++) {
                            this.segmentHeader.appendBandCodingSpecifier(specifier[i3]);
                        }
                    }
                    byte[] bArrEncode2 = bHSDCodec.encode(new int[]{bHSDCodec.isSigned() ? (-1) - i2 : i2 + bHSDCodec.getL()});
                    byte[] bArr = new byte[bArrEncode2.length + bArrEncode.length];
                    System.arraycopy(bArrEncode2, 0, bArr, 0, bArrEncode2.length);
                    System.arraycopy(bArrEncode, 0, bArr, bArrEncode2.length, bArrEncode.length);
                    return bArr;
                }
                if (codec instanceof PopulationCodec) {
                    IntStream intStreamOf = IntStream.of(bandAnalysisResultsAnalyseBand.extraMetadata);
                    final SegmentHeader segmentHeader = this.segmentHeader;
                    Objects.requireNonNull(segmentHeader);
                    intStreamOf.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda3
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i4) {
                            segmentHeader.appendBandCodingSpecifier(i4);
                        }
                    });
                    return bArrEncode;
                }
                boolean z = codec instanceof RunCodec;
            }
        }
        if (iArr.length > 0) {
            if (bArrEncode == null) {
                bArrEncode = bHSDCodec.encode(iArr);
            }
            int i4 = iArr[0];
            if (bHSDCodec.getB() != 1) {
                if (bHSDCodec.isSigned() && i4 >= -256 && i4 <= -1) {
                    byte[] bArrEncode3 = bHSDCodec.encode(new int[]{(-1) - CodecEncoding.getSpecifierForDefaultCodec(bHSDCodec)});
                    byte[] bArr2 = new byte[bArrEncode3.length + bArrEncode.length];
                    System.arraycopy(bArrEncode3, 0, bArr2, 0, bArrEncode3.length);
                    System.arraycopy(bArrEncode, 0, bArr2, bArrEncode3.length, bArrEncode.length);
                    return bArr2;
                }
                if (!bHSDCodec.isSigned() && i4 >= bHSDCodec.getL() && i4 <= bHSDCodec.getL() + 255) {
                    byte[] bArrEncode4 = bHSDCodec.encode(new int[]{CodecEncoding.getSpecifierForDefaultCodec(bHSDCodec) + bHSDCodec.getL()});
                    byte[] bArr3 = new byte[bArrEncode4.length + bArrEncode.length];
                    System.arraycopy(bArrEncode4, 0, bArr3, 0, bArrEncode4.length);
                    System.arraycopy(bArrEncode, 0, bArr3, bArrEncode4.length, bArrEncode.length);
                    return bArr3;
                }
            }
            return bArrEncode;
        }
        return EMPTY_BYTE_ARRAY;
    }

    protected byte[] encodeFlags(String str, final long[] jArr, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2, boolean z) throws Pack200Exception {
        if (!z) {
            int[] iArr = new int[jArr.length];
            Arrays.setAll(iArr, new IntUnaryOperator() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda5
                @Override // java.util.function.IntUnaryOperator
                public final int applyAsInt(int i) {
                    return BandSet.lambda$encodeFlags$0(jArr, i);
                }
            });
            return encodeBandInt(str, iArr, bHSDCodec);
        }
        int[] iArr2 = new int[jArr.length];
        int[] iArr3 = new int[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            long j = jArr[i];
            iArr2[i] = (int) (j >> 32);
            iArr3[i] = (int) j;
        }
        byte[] bArrEncodeBandInt = encodeBandInt(str, iArr2, bHSDCodec2);
        byte[] bArrEncodeBandInt2 = encodeBandInt(str, iArr3, bHSDCodec);
        byte[] bArr = new byte[bArrEncodeBandInt.length + bArrEncodeBandInt2.length];
        System.arraycopy(bArrEncodeBandInt, 0, bArr, 0, bArrEncodeBandInt.length);
        System.arraycopy(bArrEncodeBandInt2, 0, bArr, bArrEncodeBandInt.length + 1, bArrEncodeBandInt2.length);
        return bArr;
    }

    static /* synthetic */ int lambda$encodeFlags$0(long[] jArr, int i) {
        return (int) jArr[i];
    }

    protected byte[] encodeFlags(String str, long[][] jArr, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2, boolean z) throws Pack200Exception {
        return encodeFlags(str, flatten(jArr), bHSDCodec, bHSDCodec2, z);
    }

    public byte[] encodeScalar(int i, BHSDCodec bHSDCodec) throws Pack200Exception {
        return bHSDCodec.encode(i);
    }

    public byte[] encodeScalar(int[] iArr, BHSDCodec bHSDCodec) throws Pack200Exception {
        return bHSDCodec.encode(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x012a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0132  */
    /* JADX WARN: Code duplicated, block: B:55:0x0134  */
    /* JADX WARN: Code duplicated, block: B:58:0x013d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0152  */
    /* JADX WARN: Code duplicated, block: B:62:0x0167  */
    /* JADX WARN: Code duplicated, block: B:65:0x018a  */
    /* JADX WARN: Code duplicated, block: B:66:0x018d  */
    /* JADX WARN: Code duplicated, block: B:69:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:72:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    private void encodeWithPopulationCodec(String str, int[] iArr, BHSDCodec bHSDCodec, BandData bandData, BandAnalysisResults bandAnalysisResults) throws Pack200Exception {
        Codec codec;
        int l;
        byte[] bArr;
        byte[] bArr2;
        int i;
        byte[] bArr3;
        byte[] bArr4;
        Codec codec2;
        Codec codec3;
        int i2;
        int i3;
        final IntList intList;
        int[] array;
        byte[] bArrEncode;
        int l2;
        byte[] bArrEncode2;
        int length;
        BandAnalysisResults.access$412(bandAnalysisResults, 3);
        final Map map = bandData.distinctValues;
        final ArrayList arrayList = new ArrayList();
        map.forEach(new BiConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                BandSet.lambda$encodeWithPopulationCodec$1(map, arrayList, (Integer) obj, (Integer) obj2);
            }
        });
        if (map.size() > 255) {
            arrayList.sort(new Comparator() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Map map2 = map;
                    return ((Integer) map2.get((Integer) obj2)).compareTo((Integer) map2.get((Integer) obj));
                }
            });
        }
        HashMap map2 = new HashMap();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            map2.put(arrayList.get(i4), Integer.valueOf(i4));
        }
        IntList intList2 = new IntList();
        int[] iArr2 = new int[iArr.length];
        int i5 = 0;
        while (true) {
            if (i5 >= iArr.length) {
                break;
            }
            Integer num = (Integer) map2.get(Integer.valueOf(iArr[i5]));
            if (num == null) {
                iArr2[i5] = 0;
                intList2.add(iArr[i5]);
            } else {
                iArr2[i5] = num.intValue() + 1;
            }
            i5++;
        }
        arrayList.add(arrayList.get(arrayList.size() - 1));
        int[] iArrIntegerListToArray = integerListToArray(arrayList);
        int[] array2 = intList2.toArray();
        BandAnalysisResults bandAnalysisResultsAnalyseBand = analyseBand("POPULATION", iArrIntegerListToArray, bHSDCodec);
        BandAnalysisResults bandAnalysisResultsAnalyseBand2 = analyseBand("POPULATION", array2, bHSDCodec);
        int size = arrayList.size() - 1;
        if (size < 256) {
            byte[] bArrEncode3 = Codec.BYTE1.encode(iArr2);
            l = 0;
            codec = null;
            bArr2 = bArrEncode3;
        } else {
            BandAnalysisResults bandAnalysisResultsAnalyseBand3 = analyseBand("POPULATION", iArr2, bHSDCodec);
            codec = bandAnalysisResultsAnalyseBand3.betterCodec;
            byte[] bArr5 = bandAnalysisResultsAnalyseBand3.encodedBand;
            if (codec == null) {
                codec = bHSDCodec;
            }
            BHSDCodec bHSDCodec2 = (BHSDCodec) codec;
            l = bHSDCodec2.getL();
            int h = bHSDCodec2.getH();
            int s = bHSDCodec2.getS();
            int b = bHSDCodec2.getB();
            boolean zIsDelta = bHSDCodec2.isDelta();
            if (s == 0 && !zIsDelta) {
                if (b > 1) {
                    bArr = bArr5;
                    if (new BHSDCodec(b - 1, h).largest() >= size) {
                    }
                    bArr3 = bandAnalysisResultsAnalyseBand.encodedBand;
                    bArr4 = bandAnalysisResultsAnalyseBand2.encodedBand;
                    codec2 = bandAnalysisResultsAnalyseBand.betterCodec;
                    codec3 = bandAnalysisResultsAnalyseBand2.betterCodec;
                    int i6 = (codec2 != null ? 0 : 1) + CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA + (i * 4);
                    if (codec3 == null) {
                        i2 = 2;
                    } else {
                        i2 = 0;
                    }
                    i3 = i6 + i2;
                    intList = new IntList(3);
                    if (codec2 != null) {
                        IntStream intStreamOf = IntStream.of(CodecEncoding.getSpecifier(codec2, null));
                        Objects.requireNonNull(intList);
                        intStreamOf.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                            @Override // java.util.function.IntConsumer
                            public final void accept(int i7) {
                                intList.add(i7);
                            }
                        });
                    }
                    if (i == 0) {
                        IntStream intStreamOf2 = IntStream.of(CodecEncoding.getSpecifier(codec, null));
                        Objects.requireNonNull(intList);
                        intStreamOf2.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                            @Override // java.util.function.IntConsumer
                            public final void accept(int i7) {
                                intList.add(i7);
                            }
                        });
                    }
                    if (codec3 != null) {
                        IntStream intStreamOf3 = IntStream.of(CodecEncoding.getSpecifier(codec3, null));
                        Objects.requireNonNull(intList);
                        intStreamOf3.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                            @Override // java.util.function.IntConsumer
                            public final void accept(int i7) {
                                intList.add(i7);
                            }
                        });
                    }
                    array = intList.toArray();
                    bArrEncode = Codec.UNSIGNED5.encode(array);
                    if (bHSDCodec.isSigned()) {
                        l2 = (-1) - i3;
                    } else {
                        l2 = bHSDCodec.getL() + i3;
                    }
                    bArrEncode2 = bHSDCodec.encode(new int[]{l2});
                    length = bArrEncode2.length + bArr3.length + bArr2.length + bArr4.length;
                    if (bArrEncode.length + length < bandAnalysisResults.encodedBand.length) {
                        BandAnalysisResults.access$612(bandAnalysisResults, bandAnalysisResults.encodedBand.length - (bArrEncode.length + length));
                        byte[] bArr6 = new byte[length];
                        System.arraycopy(bArrEncode2, 0, bArr6, 0, bArrEncode2.length);
                        System.arraycopy(bArr3, 0, bArr6, bArrEncode2.length, bArr3.length);
                        System.arraycopy(bArr2, 0, bArr6, bArrEncode2.length + bArr3.length, bArr2.length);
                        System.arraycopy(bArr4, 0, bArr6, bArrEncode2.length + bArr3.length + bArr2.length, bArr4.length);
                        bandAnalysisResults.encodedBand = bArr6;
                        bandAnalysisResults.extraMetadata = array;
                        if (l != 0) {
                            bandAnalysisResults.betterCodec = new PopulationCodec(codec2, l, codec3);
                        } else {
                            bandAnalysisResults.betterCodec = new PopulationCodec(codec2, codec, codec3);
                        }
                    }
                }
                bArr = bArr5;
                switch (l) {
                    case 4:
                        bArr2 = bArr;
                        break;
                    case 8:
                        bArr2 = bArr;
                        i = 2;
                        break;
                    case 16:
                        bArr2 = bArr;
                        i = 3;
                        break;
                    case 32:
                        i = 4;
                        bArr2 = bArr;
                        break;
                    case 64:
                        i = 5;
                        bArr2 = bArr;
                        break;
                    case 128:
                        i = 6;
                        bArr2 = bArr;
                        break;
                    case 192:
                        i = 7;
                        bArr2 = bArr;
                        break;
                    case 224:
                        i = 8;
                        bArr2 = bArr;
                        break;
                    case 240:
                        i = 9;
                        bArr2 = bArr;
                        break;
                    case 248:
                        i = 10;
                        bArr2 = bArr;
                        break;
                    case 252:
                        i = 11;
                        bArr2 = bArr;
                        break;
                }
                bArr3 = bandAnalysisResultsAnalyseBand.encodedBand;
                bArr4 = bandAnalysisResultsAnalyseBand2.encodedBand;
                codec2 = bandAnalysisResultsAnalyseBand.betterCodec;
                codec3 = bandAnalysisResultsAnalyseBand2.betterCodec;
                int i7 = (codec2 != null ? 0 : 1) + CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA + (i * 4);
                if (codec3 == null) {
                    i2 = 2;
                } else {
                    i2 = 0;
                }
                i3 = i7 + i2;
                intList = new IntList(3);
                if (codec2 != null) {
                    IntStream intStreamOf4 = IntStream.of(CodecEncoding.getSpecifier(codec2, null));
                    Objects.requireNonNull(intList);
                    intStreamOf4.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i8) {
                            intList.add(i8);
                        }
                    });
                }
                if (i == 0) {
                    IntStream intStreamOf5 = IntStream.of(CodecEncoding.getSpecifier(codec, null));
                    Objects.requireNonNull(intList);
                    intStreamOf5.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i8) {
                            intList.add(i8);
                        }
                    });
                }
                if (codec3 != null) {
                    IntStream intStreamOf6 = IntStream.of(CodecEncoding.getSpecifier(codec3, null));
                    Objects.requireNonNull(intList);
                    intStreamOf6.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i8) {
                            intList.add(i8);
                        }
                    });
                }
                array = intList.toArray();
                bArrEncode = Codec.UNSIGNED5.encode(array);
                if (bHSDCodec.isSigned()) {
                    l2 = (-1) - i3;
                } else {
                    l2 = bHSDCodec.getL() + i3;
                }
                bArrEncode2 = bHSDCodec.encode(new int[]{l2});
                length = bArrEncode2.length + bArr3.length + bArr2.length + bArr4.length;
                if (bArrEncode.length + length < bandAnalysisResults.encodedBand.length) {
                    BandAnalysisResults.access$612(bandAnalysisResults, bandAnalysisResults.encodedBand.length - (bArrEncode.length + length));
                    byte[] bArr7 = new byte[length];
                    System.arraycopy(bArrEncode2, 0, bArr7, 0, bArrEncode2.length);
                    System.arraycopy(bArr3, 0, bArr7, bArrEncode2.length, bArr3.length);
                    System.arraycopy(bArr2, 0, bArr7, bArrEncode2.length + bArr3.length, bArr2.length);
                    System.arraycopy(bArr4, 0, bArr7, bArrEncode2.length + bArr3.length + bArr2.length, bArr4.length);
                    bandAnalysisResults.encodedBand = bArr7;
                    bandAnalysisResults.extraMetadata = array;
                    if (l != 0) {
                        bandAnalysisResults.betterCodec = new PopulationCodec(codec2, l, codec3);
                    } else {
                        bandAnalysisResults.betterCodec = new PopulationCodec(codec2, codec, codec3);
                    }
                }
            }
            bArr = bArr5;
            bArr2 = bArr;
            i = 0;
            bArr3 = bandAnalysisResultsAnalyseBand.encodedBand;
            bArr4 = bandAnalysisResultsAnalyseBand2.encodedBand;
            codec2 = bandAnalysisResultsAnalyseBand.betterCodec;
            codec3 = bandAnalysisResultsAnalyseBand2.betterCodec;
            int i8 = (codec2 != null ? 0 : 1) + CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA + (i * 4);
            if (codec3 == null) {
                i2 = 2;
            } else {
                i2 = 0;
            }
            i3 = i8 + i2;
            intList = new IntList(3);
            if (codec2 != null) {
                IntStream intStreamOf7 = IntStream.of(CodecEncoding.getSpecifier(codec2, null));
                Objects.requireNonNull(intList);
                intStreamOf7.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i9) {
                        intList.add(i9);
                    }
                });
            }
            if (i == 0) {
                IntStream intStreamOf8 = IntStream.of(CodecEncoding.getSpecifier(codec, null));
                Objects.requireNonNull(intList);
                intStreamOf8.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i9) {
                        intList.add(i9);
                    }
                });
            }
            if (codec3 != null) {
                IntStream intStreamOf9 = IntStream.of(CodecEncoding.getSpecifier(codec3, null));
                Objects.requireNonNull(intList);
                intStreamOf9.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i9) {
                        intList.add(i9);
                    }
                });
            }
            array = intList.toArray();
            bArrEncode = Codec.UNSIGNED5.encode(array);
            if (bHSDCodec.isSigned()) {
                l2 = (-1) - i3;
            } else {
                l2 = bHSDCodec.getL() + i3;
            }
            bArrEncode2 = bHSDCodec.encode(new int[]{l2});
            length = bArrEncode2.length + bArr3.length + bArr2.length + bArr4.length;
            if (bArrEncode.length + length < bandAnalysisResults.encodedBand.length) {
                BandAnalysisResults.access$612(bandAnalysisResults, bandAnalysisResults.encodedBand.length - (bArrEncode.length + length));
                byte[] bArr8 = new byte[length];
                System.arraycopy(bArrEncode2, 0, bArr8, 0, bArrEncode2.length);
                System.arraycopy(bArr3, 0, bArr8, bArrEncode2.length, bArr3.length);
                System.arraycopy(bArr2, 0, bArr8, bArrEncode2.length + bArr3.length, bArr2.length);
                System.arraycopy(bArr4, 0, bArr8, bArrEncode2.length + bArr3.length + bArr2.length, bArr4.length);
                bandAnalysisResults.encodedBand = bArr8;
                bandAnalysisResults.extraMetadata = array;
                if (l != 0) {
                    bandAnalysisResults.betterCodec = new PopulationCodec(codec2, l, codec3);
                } else {
                    bandAnalysisResults.betterCodec = new PopulationCodec(codec2, codec, codec3);
                }
            }
        }
        i = 1;
        bArr3 = bandAnalysisResultsAnalyseBand.encodedBand;
        bArr4 = bandAnalysisResultsAnalyseBand2.encodedBand;
        codec2 = bandAnalysisResultsAnalyseBand.betterCodec;
        codec3 = bandAnalysisResultsAnalyseBand2.betterCodec;
        int i9 = (codec2 != null ? 0 : 1) + CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA + (i * 4);
        if (codec3 == null) {
            i2 = 2;
        } else {
            i2 = 0;
        }
        i3 = i9 + i2;
        intList = new IntList(3);
        if (codec2 != null) {
            IntStream intStreamOf10 = IntStream.of(CodecEncoding.getSpecifier(codec2, null));
            Objects.requireNonNull(intList);
            intStreamOf10.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                @Override // java.util.function.IntConsumer
                public final void accept(int i10) {
                    intList.add(i10);
                }
            });
        }
        if (i == 0) {
            IntStream intStreamOf11 = IntStream.of(CodecEncoding.getSpecifier(codec, null));
            Objects.requireNonNull(intList);
            intStreamOf11.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                @Override // java.util.function.IntConsumer
                public final void accept(int i10) {
                    intList.add(i10);
                }
            });
        }
        if (codec3 != null) {
            IntStream intStreamOf12 = IntStream.of(CodecEncoding.getSpecifier(codec3, null));
            Objects.requireNonNull(intList);
            intStreamOf12.forEach(new IntConsumer() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda2
                @Override // java.util.function.IntConsumer
                public final void accept(int i10) {
                    intList.add(i10);
                }
            });
        }
        array = intList.toArray();
        bArrEncode = Codec.UNSIGNED5.encode(array);
        if (bHSDCodec.isSigned()) {
            l2 = (-1) - i3;
        } else {
            l2 = bHSDCodec.getL() + i3;
        }
        bArrEncode2 = bHSDCodec.encode(new int[]{l2});
        length = bArrEncode2.length + bArr3.length + bArr2.length + bArr4.length;
        if (bArrEncode.length + length < bandAnalysisResults.encodedBand.length) {
            BandAnalysisResults.access$612(bandAnalysisResults, bandAnalysisResults.encodedBand.length - (bArrEncode.length + length));
            byte[] bArr9 = new byte[length];
            System.arraycopy(bArrEncode2, 0, bArr9, 0, bArrEncode2.length);
            System.arraycopy(bArr3, 0, bArr9, bArrEncode2.length, bArr3.length);
            System.arraycopy(bArr2, 0, bArr9, bArrEncode2.length + bArr3.length, bArr2.length);
            System.arraycopy(bArr4, 0, bArr9, bArrEncode2.length + bArr3.length + bArr2.length, bArr4.length);
            bandAnalysisResults.encodedBand = bArr9;
            bandAnalysisResults.extraMetadata = array;
            if (l != 0) {
                bandAnalysisResults.betterCodec = new PopulationCodec(codec2, l, codec3);
            } else {
                bandAnalysisResults.betterCodec = new PopulationCodec(codec2, codec, codec3);
            }
        }
    }

    static /* synthetic */ void lambda$encodeWithPopulationCodec$1(Map map, List list, Integer num, Integer num2) {
        if (num2.intValue() > 2 || map.size() < 256) {
            list.add(num);
        }
    }

    private long[] flatten(long[][] jArr) {
        int length = 0;
        for (long[] jArr2 : jArr) {
            length += jArr2.length;
        }
        long[] jArr3 = new long[length];
        int i = 0;
        for (long[] jArr4 : jArr) {
            for (long j : jArr4) {
                jArr3[i] = j;
                i++;
            }
        }
        return jArr3;
    }

    protected int[] integerListToArray(List<Integer> list) {
        return list.stream().mapToInt(new ToIntFunction() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda6
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        }).toArray();
    }

    protected long[] longListToArray(List<Long> list) {
        return list.stream().mapToLong(new ToLongFunction() { // from class: org.apache.commons.compress.harmony.pack200.BandSet$$ExternalSyntheticLambda4
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        }).toArray();
    }

    private boolean timeToStop(BandAnalysisResults bandAnalysisResults) {
        if (this.effort > 6) {
            return bandAnalysisResults.numCodecsTried >= this.effort * 2;
        }
        return bandAnalysisResults.numCodecsTried >= this.effort;
    }

    private void tryCodecs(String str, int[] iArr, BHSDCodec bHSDCodec, BandData bandData, BandAnalysisResults bandAnalysisResults, byte[] bArr, BHSDCodec[] bHSDCodecArr) throws Pack200Exception {
        for (BHSDCodec bHSDCodec2 : bHSDCodecArr) {
            if (bHSDCodec2.equals(bHSDCodec)) {
                return;
            }
            if (bHSDCodec2.isDelta()) {
                if (bHSDCodec2.largest() >= bandData.largestDelta && bHSDCodec2.smallest() <= bandData.smallestDelta && bHSDCodec2.largest() >= bandData.largest && bHSDCodec2.smallest() <= bandData.smallest) {
                    byte[] bArrEncode = bHSDCodec2.encode(iArr);
                    BandAnalysisResults.access$408(bandAnalysisResults);
                    int length = (bArr.length - bArrEncode.length) - bHSDCodec.encode(CodecEncoding.getSpecifier(bHSDCodec2, null)).length;
                    if (length > bandAnalysisResults.saved) {
                        bandAnalysisResults.betterCodec = bHSDCodec2;
                        bandAnalysisResults.encodedBand = bArrEncode;
                        bandAnalysisResults.saved = length;
                    }
                }
            } else if (bHSDCodec2.largest() >= bandData.largest && bHSDCodec2.smallest() <= bandData.smallest) {
                byte[] bArrEncode2 = bHSDCodec2.encode(iArr);
                BandAnalysisResults.access$408(bandAnalysisResults);
                int length2 = (bArr.length - bArrEncode2.length) - bHSDCodec.encode(CodecEncoding.getSpecifier(bHSDCodec2, null)).length;
                if (length2 > bandAnalysisResults.saved) {
                    bandAnalysisResults.betterCodec = bHSDCodec2;
                    bandAnalysisResults.encodedBand = bArrEncode2;
                    bandAnalysisResults.saved = length2;
                }
            }
            if (timeToStop(bandAnalysisResults)) {
                return;
            }
        }
    }
}
