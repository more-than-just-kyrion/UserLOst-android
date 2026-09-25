package org.apache.commons.compress.harmony.unpack200;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.function.IntFunction;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.CodecEncoding;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.pack200.PopulationCodec;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPDouble;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFieldRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFloat;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInteger;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInterfaceMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPLong;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPNameAndType;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPString;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.utils.ExactMath;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BandSet {
    protected SegmentHeader header;
    protected Segment segment;

    public abstract void read(InputStream inputStream) throws IOException;

    public abstract void unpack() throws IOException;

    public BandSet(Segment segment) {
        this.segment = segment;
        this.header = segment.getSegmentHeader();
    }

    public int[] decodeBandInt(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeInts;
        Codec codec;
        if (i < 0) {
            throw new Pack200Exception("count < 0");
        }
        if (bHSDCodec.getB() == 1 || i == 0) {
            return bHSDCodec.decodeInts(i, inputStream);
        }
        int[] iArrDecodeInts2 = bHSDCodec.decodeInts(1, inputStream);
        if (iArrDecodeInts2.length == 0) {
            return iArrDecodeInts2;
        }
        int i2 = iArrDecodeInts2[0];
        if (bHSDCodec.isSigned() && i2 >= -256 && i2 <= -1) {
            Codec codec2 = CodecEncoding.getCodec((-1) - i2, this.header.getBandHeadersInputStream(), bHSDCodec);
            iArrDecodeInts = codec2.decodeInts(i, inputStream);
            codec = codec2;
        } else if (!bHSDCodec.isSigned() && i2 >= bHSDCodec.getL() && i2 <= bHSDCodec.getL() + 255) {
            Codec codec3 = CodecEncoding.getCodec(i2 - bHSDCodec.getL(), this.header.getBandHeadersInputStream(), bHSDCodec);
            iArrDecodeInts = codec3.decodeInts(i, inputStream);
            codec = codec3;
        } else {
            iArrDecodeInts = bHSDCodec.decodeInts(i - 1, inputStream, i2);
            codec = bHSDCodec;
        }
        if (codec instanceof PopulationCodec) {
            PopulationCodec populationCodec = (PopulationCodec) codec;
            int[] iArr = (int[]) populationCodec.getFavoured().clone();
            Arrays.sort(iArr);
            for (int i3 = 0; i3 < iArrDecodeInts.length; i3++) {
                Codec favouredCodec = Arrays.binarySearch(iArr, iArrDecodeInts[i3]) > -1 ? populationCodec.getFavouredCodec() : populationCodec.getUnfavouredCodec();
                if (favouredCodec instanceof BHSDCodec) {
                    BHSDCodec bHSDCodec2 = (BHSDCodec) favouredCodec;
                    if (bHSDCodec2.isDelta()) {
                        long jCardinality = bHSDCodec2.cardinality();
                        while (iArrDecodeInts[i3] > bHSDCodec2.largest()) {
                            iArrDecodeInts[i3] = (int) (((long) iArrDecodeInts[i3]) - jCardinality);
                        }
                        while (iArrDecodeInts[i3] < bHSDCodec2.smallest()) {
                            iArrDecodeInts[i3] = ExactMath.add(iArrDecodeInts[i3], jCardinality);
                        }
                    }
                }
            }
        }
        return iArrDecodeInts;
    }

    public int[][] decodeBandInt(String str, InputStream inputStream, BHSDCodec bHSDCodec, int[] iArr) throws IOException {
        int length = iArr.length;
        int[][] iArr2 = new int[length][];
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            if (i5 > iArrDecodeBandInt.length) {
                throw new IOException("Counts value exceeds length of twoDResult");
            }
            iArr2[i4] = new int[i5];
            int i6 = 0;
            while (true) {
                int[] iArr3 = iArr2[i4];
                if (i6 < iArr3.length) {
                    iArr3[i6] = iArrDecodeBandInt[i3];
                    i3++;
                    i6++;
                }
            }
        }
        return iArr2;
    }

    protected String[] getReferences(final int[] iArr, final String[] strArr) {
        String[] strArr2 = new String[iArr.length];
        Arrays.setAll(strArr2, new IntFunction() { // from class: org.apache.commons.compress.harmony.unpack200.BandSet$$ExternalSyntheticLambda0
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return BandSet.lambda$getReferences$0(strArr, iArr, i);
            }
        });
        return strArr2;
    }

    static /* synthetic */ String lambda$getReferences$0(String[] strArr, int[] iArr, int i) {
        return strArr[iArr[i]];
    }

    protected String[][] getReferences(int[][] iArr, String[] strArr) {
        int length = iArr.length;
        String[][] strArr2 = new String[length][];
        for (int i = 0; i < length; i++) {
            strArr2[i] = new String[iArr[i].length];
            int i2 = 0;
            while (true) {
                String[] strArr3 = strArr2[i];
                if (i2 < strArr3.length) {
                    strArr3[i2] = strArr[iArr[i][i2]];
                    i2++;
                }
            }
        }
        return strArr2;
    }

    public CPClass[] parseCPClassReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPClass[] cPClassArr = new CPClass[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPClassArr[i2] = this.segment.getCpBands().cpClassValue(iArrDecodeBandInt[i2]);
        }
        return cPClassArr;
    }

    public CPNameAndType[] parseCPDescriptorReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        CpBands cpBands = this.segment.getCpBands();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPNameAndType[] cPNameAndTypeArr = new CPNameAndType[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPNameAndTypeArr[i2] = cpBands.cpNameAndTypeValue(iArrDecodeBandInt[i2]);
        }
        return cPNameAndTypeArr;
    }

    public CPDouble[] parseCPDoubleReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPDouble[] cPDoubleArr = new CPDouble[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPDoubleArr[i2] = this.segment.getCpBands().cpDoubleValue(iArrDecodeBandInt[i2]);
        }
        return cPDoubleArr;
    }

    public CPFieldRef[] parseCPFieldRefReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        CpBands cpBands = this.segment.getCpBands();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPFieldRef[] cPFieldRefArr = new CPFieldRef[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPFieldRefArr[i2] = cpBands.cpFieldValue(iArrDecodeBandInt[i2]);
        }
        return cPFieldRefArr;
    }

    public CPFloat[] parseCPFloatReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPFloat[] cPFloatArr = new CPFloat[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPFloatArr[i2] = this.segment.getCpBands().cpFloatValue(iArrDecodeBandInt[i2]);
        }
        return cPFloatArr;
    }

    public CPInterfaceMethodRef[] parseCPInterfaceMethodRefReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        CpBands cpBands = this.segment.getCpBands();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPInterfaceMethodRef[] cPInterfaceMethodRefArr = new CPInterfaceMethodRef[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPInterfaceMethodRefArr[i2] = cpBands.cpIMethodValue(iArrDecodeBandInt[i2]);
        }
        return cPInterfaceMethodRefArr;
    }

    public CPInteger[] parseCPIntReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] cpInt = this.segment.getCpBands().getCpInt();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPInteger[] cPIntegerArr = new CPInteger[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArrDecodeBandInt[i2];
            if (i3 < 0 || i3 >= cpInt.length) {
                throw new Pack200Exception("Something has gone wrong during parsing references, index = " + i3 + ", array size = " + cpInt.length);
            }
            cPIntegerArr[i2] = this.segment.getCpBands().cpIntegerValue(i3);
        }
        return cPIntegerArr;
    }

    public CPLong[] parseCPLongReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        long[] cpLong = this.segment.getCpBands().getCpLong();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPLong[] cPLongArr = new CPLong[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArrDecodeBandInt[i2];
            if (i3 < 0 || i3 >= cpLong.length) {
                throw new Pack200Exception("Something has gone wrong during parsing references, index = " + i3 + ", array size = " + cpLong.length);
            }
            cPLongArr[i2] = this.segment.getCpBands().cpLongValue(i3);
        }
        return cPLongArr;
    }

    public CPMethodRef[] parseCPMethodRefReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        CpBands cpBands = this.segment.getCpBands();
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPMethodRef[] cPMethodRefArr = new CPMethodRef[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPMethodRefArr[i2] = cpBands.cpMethodValue(iArrDecodeBandInt[i2]);
        }
        return cPMethodRefArr;
    }

    public CPUTF8[] parseCPSignatureReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPUTF8[] cputf8Arr = new CPUTF8[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cputf8Arr[i2] = this.segment.getCpBands().cpSignatureValue(iArrDecodeBandInt[i2]);
        }
        return cputf8Arr;
    }

    protected CPUTF8[][] parseCPSignatureReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int[] iArr) throws IOException {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPUTF8[] cputf8Arr = new CPUTF8[i];
        for (int i3 = 0; i3 < i; i3++) {
            cputf8Arr[i3] = this.segment.getCpBands().cpSignatureValue(iArrDecodeBandInt[i3]);
        }
        CPUTF8[][] cputf8Arr2 = new CPUTF8[iArr.length][];
        int i4 = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = iArr[i5];
            CPUTF8[] cputf8Arr3 = new CPUTF8[i6];
            cputf8Arr2[i5] = cputf8Arr3;
            System.arraycopy(cputf8Arr, i4, cputf8Arr3, 0, i6);
            i4 += i6;
        }
        return cputf8Arr2;
    }

    public CPString[] parseCPStringReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPString[] cPStringArr = new CPString[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cPStringArr[i2] = this.segment.getCpBands().cpStringValue(iArrDecodeBandInt[i2]);
        }
        return cPStringArr;
    }

    public CPUTF8[] parseCPUTF8References(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i) throws IOException {
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        CPUTF8[] cputf8Arr = new CPUTF8[iArrDecodeBandInt.length];
        for (int i2 = 0; i2 < i; i2++) {
            cputf8Arr[i2] = this.segment.getCpBands().cpUTF8Value(iArrDecodeBandInt[i2]);
        }
        return cputf8Arr;
    }

    public CPUTF8[][] parseCPUTF8References(String str, InputStream inputStream, BHSDCodec bHSDCodec, int[] iArr) throws IOException {
        CPUTF8[][] cputf8Arr = new CPUTF8[iArr.length][];
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            cputf8Arr[i2] = new CPUTF8[i3];
            i += i3;
        }
        CPUTF8[] cputf8Arr2 = new CPUTF8[i];
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        for (int i4 = 0; i4 < i; i4++) {
            cputf8Arr2[i4] = this.segment.getCpBands().cpUTF8Value(iArrDecodeBandInt[i4]);
        }
        int i5 = 0;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            int i7 = iArr[i6];
            CPUTF8[] cputf8Arr3 = new CPUTF8[i7];
            cputf8Arr[i6] = cputf8Arr3;
            System.arraycopy(cputf8Arr2, i5, cputf8Arr3, 0, i7);
            i5 += i7;
        }
        return cputf8Arr;
    }

    public long[] parseFlags(String str, InputStream inputStream, int i, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2) throws IOException {
        return parseFlags(str, inputStream, new int[]{i}, bHSDCodec, bHSDCodec2)[0];
    }

    public long[] parseFlags(String str, InputStream inputStream, int i, BHSDCodec bHSDCodec, boolean z) throws IOException {
        return parseFlags(str, inputStream, new int[]{i}, z ? bHSDCodec : null, bHSDCodec)[0];
    }

    public long[][] parseFlags(String str, InputStream inputStream, int[] iArr, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2) throws IOException {
        int length = iArr.length;
        if (length == 0) {
            return new long[][]{new long[0]};
        }
        long[][] jArr = new long[length][];
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int[] iArrDecodeBandInt = bHSDCodec != null ? decodeBandInt(str, inputStream, bHSDCodec, i) : null;
        int[] iArrDecodeBandInt2 = decodeBandInt(str, inputStream, bHSDCodec2, i);
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            jArr[i4] = new long[iArr[i4]];
            int i5 = 0;
            while (true) {
                long[] jArr2 = jArr[i4];
                if (i5 < jArr2.length) {
                    if (iArrDecodeBandInt != null) {
                        jArr2[i5] = (((long) iArrDecodeBandInt[i3]) << 32) | (((long) iArrDecodeBandInt2[i3]) & BodyPartID.bodyIdMax);
                    } else {
                        jArr2[i5] = iArrDecodeBandInt2[i3];
                    }
                    i3++;
                    i5++;
                }
            }
        }
        return jArr;
    }

    public long[][] parseFlags(String str, InputStream inputStream, int[] iArr, BHSDCodec bHSDCodec, boolean z) throws IOException {
        return parseFlags(str, inputStream, iArr, z ? bHSDCodec : null, bHSDCodec);
    }

    public String[] parseReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int i, String[] strArr) throws IOException {
        return parseReferences(str, inputStream, bHSDCodec, new int[]{i}, strArr)[0];
    }

    public String[][] parseReferences(String str, InputStream inputStream, BHSDCodec bHSDCodec, int[] iArr, String[] strArr) throws IOException {
        int length = iArr.length;
        if (length == 0) {
            return new String[][]{new String[0]};
        }
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int[] iArrDecodeBandInt = decodeBandInt(str, inputStream, bHSDCodec, i);
        String[] strArr2 = new String[i];
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArrDecodeBandInt[i3];
            if (i4 < 0 || i4 >= strArr.length) {
                throw new Pack200Exception("Something has gone wrong during parsing references, index = " + i4 + ", array size = " + strArr.length);
            }
            strArr2[i3] = strArr[i4];
        }
        String[][] strArr3 = new String[length][];
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = iArr[i6];
            String[] strArr4 = new String[i7];
            strArr3[i6] = strArr4;
            System.arraycopy(strArr2, i5, strArr4, 0, i7);
            i5 += i7;
        }
        return strArr3;
    }

    public void unpack(InputStream inputStream) throws IOException {
        read(inputStream);
        unpack();
    }
}
