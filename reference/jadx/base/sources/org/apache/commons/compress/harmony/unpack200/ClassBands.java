package org.apache.commons.compress.harmony.unpack200;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.ConstantValueAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.DeprecatedAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.EnclosingMethodAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionsAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LineNumberTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTypeTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SignatureAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SourceFileAttribute;

/* JADX INFO: loaded from: classes3.dex */
public class ClassBands extends BandSet {
    private final AttributeLayoutMap attrMap;
    private long[] classAccessFlags;
    private ArrayList<Attribute>[] classAttributes;
    private final int classCount;
    private int[] classFieldCount;
    private long[] classFlags;
    private int[][] classInterfacesInts;
    private int[] classMethodCount;
    private int[] classSuperInts;
    private String[] classThis;
    private int[] classThisInts;
    private int[] classVersionMajor;
    private int[] classVersionMinor;
    private List<Attribute>[] codeAttributes;
    private int[][] codeHandlerCatchPO;
    private int[][] codeHandlerClassRCN;
    private int[] codeHandlerCount;
    private int[][] codeHandlerEndPO;
    private int[][] codeHandlerStartP;
    private boolean[] codeHasAttributes;
    private int[] codeMaxNALocals;
    private int[] codeMaxStack;
    private final CpBands cpBands;
    private long[][] fieldAccessFlags;
    private ArrayList<Attribute>[][] fieldAttributes;
    private String[][] fieldDescr;
    private int[][] fieldDescrInts;
    private long[][] fieldFlags;
    private IcTuple[][] icLocal;
    private long[][] methodAccessFlags;
    private int[] methodAttrCalls;
    private ArrayList<Attribute>[][] methodAttributes;
    private String[][] methodDescr;
    private int[][] methodDescrInts;
    private long[][] methodFlags;
    private final SegmentOptions options;

    /* JADX INFO: renamed from: $r8$lambda$ZpmJ_VNnAu-jaI1Md1zDJiayPjU, reason: not valid java name */
    public static /* synthetic */ ArrayList m2093$r8$lambda$ZpmJ_VNnAujaI1Md1zDJiayPjU(Collection collection) {
        return new ArrayList(collection);
    }

    /* JADX INFO: renamed from: $r8$lambda$wBZ5N9SAmxJLRX-vx8hIUeo_fgc, reason: not valid java name */
    public static /* synthetic */ ArrayList m2094$r8$lambda$wBZ5N9SAmxJLRXvx8hIUeo_fgc() {
        return new ArrayList();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() {
    }

    public ClassBands(Segment segment) {
        super(segment);
        this.attrMap = segment.getAttrDefinitionBands().getAttributeDefinitionMap();
        this.cpBands = segment.getCpBands();
        this.classCount = this.header.getClassCount();
        this.options = this.header.getOptions();
    }

    private int getCallCount(int[][] iArr, long[][] jArr, int i) {
        int iNumBackwardsCallables = 0;
        for (int[] iArr2 : iArr) {
            for (int i2 : iArr2) {
                iNumBackwardsCallables += this.attrMap.getAttributeLayout(i2, i).numBackwardsCallables();
            }
        }
        int i3 = 0;
        for (long[] jArr2 : jArr) {
            for (long j : jArr2) {
                i3 = (int) (j | ((long) i3));
            }
        }
        for (int i4 = 0; i4 < 26; i4++) {
            if (((1 << i4) & i3) != 0) {
                iNumBackwardsCallables += this.attrMap.getAttributeLayout(i4, i).numBackwardsCallables();
            }
        }
        return iNumBackwardsCallables;
    }

    public ArrayList<Attribute>[] getClassAttributes() {
        return this.classAttributes;
    }

    public int[] getClassFieldCount() {
        return this.classFieldCount;
    }

    public long[] getClassFlags() {
        if (this.classAccessFlags == null) {
            int i = 0;
            long j = 32767;
            for (int i2 = 0; i2 < 16; i2++) {
                AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(i2, 0);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= (long) (~(1 << i2));
                }
            }
            this.classAccessFlags = new long[this.classFlags.length];
            while (true) {
                long[] jArr = this.classFlags;
                if (i >= jArr.length) {
                    break;
                }
                this.classAccessFlags[i] = jArr[i] & j;
                i++;
            }
        }
        return this.classAccessFlags;
    }

    public int[][] getClassInterfacesInts() {
        return this.classInterfacesInts;
    }

    public int[] getClassMethodCount() {
        return this.classMethodCount;
    }

    public int[] getClassSuperInts() {
        return this.classSuperInts;
    }

    public int[] getClassThisInts() {
        return this.classThisInts;
    }

    public int[] getClassVersionMajor() {
        return this.classVersionMajor;
    }

    public int[] getClassVersionMinor() {
        return this.classVersionMinor;
    }

    public int[][] getCodeHandlerCatchPO() {
        return this.codeHandlerCatchPO;
    }

    public int[][] getCodeHandlerClassRCN() {
        return this.codeHandlerClassRCN;
    }

    public int[] getCodeHandlerCount() {
        return this.codeHandlerCount;
    }

    public int[][] getCodeHandlerEndPO() {
        return this.codeHandlerEndPO;
    }

    public int[][] getCodeHandlerStartP() {
        return this.codeHandlerStartP;
    }

    public boolean[] getCodeHasAttributes() {
        return this.codeHasAttributes;
    }

    public int[] getCodeMaxNALocals() {
        return this.codeMaxNALocals;
    }

    public int[] getCodeMaxStack() {
        return this.codeMaxStack;
    }

    public ArrayList<Attribute>[][] getFieldAttributes() {
        return this.fieldAttributes;
    }

    public int[][] getFieldDescrInts() {
        return this.fieldDescrInts;
    }

    public long[][] getFieldFlags() {
        if (this.fieldAccessFlags == null) {
            long j = 32767;
            for (int i = 0; i < 16; i++) {
                AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(i, 1);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= (long) (~(1 << i));
                }
            }
            this.fieldAccessFlags = new long[this.fieldFlags.length][];
            int i2 = 0;
            while (true) {
                long[][] jArr = this.fieldFlags;
                if (i2 >= jArr.length) {
                    break;
                }
                this.fieldAccessFlags[i2] = new long[jArr[i2].length];
                int i3 = 0;
                while (true) {
                    long[] jArr2 = this.fieldFlags[i2];
                    if (i3 < jArr2.length) {
                        this.fieldAccessFlags[i2][i3] = jArr2[i3] & j;
                        i3++;
                    }
                }
                i2++;
            }
        }
        return this.fieldAccessFlags;
    }

    public IcTuple[][] getIcLocal() {
        return this.icLocal;
    }

    public ArrayList<Attribute>[][] getMethodAttributes() {
        return this.methodAttributes;
    }

    public String[][] getMethodDescr() {
        return this.methodDescr;
    }

    public int[][] getMethodDescrInts() {
        return this.methodDescrInts;
    }

    public long[][] getMethodFlags() {
        if (this.methodAccessFlags == null) {
            long j = 32767;
            for (int i = 0; i < 16; i++) {
                AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(i, 2);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= (long) (~(1 << i));
                }
            }
            this.methodAccessFlags = new long[this.methodFlags.length][];
            int i2 = 0;
            while (true) {
                long[][] jArr = this.methodFlags;
                if (i2 >= jArr.length) {
                    break;
                }
                this.methodAccessFlags[i2] = new long[jArr[i2].length];
                int i3 = 0;
                while (true) {
                    long[] jArr2 = this.methodFlags[i2];
                    if (i3 < jArr2.length) {
                        this.methodAccessFlags[i2][i3] = jArr2[i3] & j;
                        i3++;
                    }
                }
                i2++;
            }
        }
        return this.methodAccessFlags;
    }

    public ArrayList<List<Attribute>> getOrderedCodeAttributes() {
        return (ArrayList) Stream.of((Object[]) this.codeAttributes).map(new Function() { // from class: org.apache.commons.compress.harmony.unpack200.ClassBands$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ClassBands.m2093$r8$lambda$ZpmJ_VNnAujaI1Md1zDJiayPjU((List) obj);
            }
        }).collect(Collectors.toCollection(new Supplier() { // from class: org.apache.commons.compress.harmony.unpack200.ClassBands$$ExternalSyntheticLambda2
            @Override // java.util.function.Supplier
            public final Object get() {
                return ClassBands.m2094$r8$lambda$wBZ5N9SAmxJLRXvx8hIUeo_fgc();
            }
        }));
    }

    public long[] getRawClassFlags() {
        return this.classFlags;
    }

    private void parseClassAttrBands(InputStream inputStream) throws IOException {
        int[] iArr;
        int i;
        int i2;
        AttributeLayout attributeLayout;
        int i3;
        int i4;
        int f;
        String c2;
        String n;
        int i5;
        int i6;
        int i7;
        int[] iArr2;
        int i8;
        InputStream inputStream2 = inputStream;
        String[] cpUTF8 = this.cpBands.getCpUTF8();
        String[] cpClass = this.cpBands.getCpClass();
        ArrayList<Attribute>[] arrayListArr = new ArrayList[this.classCount];
        this.classAttributes = arrayListArr;
        Arrays.setAll(arrayListArr, new IntFunction() { // from class: org.apache.commons.compress.harmony.unpack200.ClassBands$$ExternalSyntheticLambda4
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                return ClassBands.lambda$parseClassAttrBands$0(i9);
            }
        });
        long[] flags = parseFlags("class_flags", inputStream, this.classCount, Codec.UNSIGNED5, this.options.hasClassFlagsHi());
        this.classFlags = flags;
        int[] iArrDecodeBandInt = decodeBandInt("class_attr_calls", inputStream2, Codec.UNSIGNED5, getCallCount(decodeBandInt("class_attr_indexes", inputStream2, Codec.UNSIGNED5, decodeBandInt("class_attr_count", inputStream2, Codec.UNSIGNED5, SegmentUtils.countBit16(flags))), new long[][]{this.classFlags}, 0));
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 0);
        AttributeLayout attributeLayout3 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_SOURCE_FILE, 0);
        int[] iArrDecodeBandInt2 = decodeBandInt("class_SourceFile_RUN", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(this.classFlags, attributeLayout3));
        AttributeLayout attributeLayout4 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD, 0);
        int iCountMatches = SegmentUtils.countMatches(this.classFlags, attributeLayout4);
        int[] iArrDecodeBandInt3 = decodeBandInt("class_EnclosingMethod_RC", inputStream2, Codec.UNSIGNED5, iCountMatches);
        int[] iArrDecodeBandInt4 = decodeBandInt("class_EnclosingMethod_RDN", inputStream2, Codec.UNSIGNED5, iCountMatches);
        AttributeLayout attributeLayout5 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_SIGNATURE, 0);
        int[] iArrDecodeBandInt5 = decodeBandInt("class_Signature_RS", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(this.classFlags, attributeLayout5));
        int classMetadataBands = parseClassMetadataBands(inputStream2, iArrDecodeBandInt);
        AttributeLayout attributeLayout6 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_INNER_CLASSES, 0);
        int[] iArrDecodeBandInt6 = decodeBandInt("class_InnerClasses_N", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(this.classFlags, attributeLayout6));
        int[][] iArrDecodeBandInt7 = decodeBandInt("class_InnerClasses_RC", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt6);
        int[][] iArrDecodeBandInt8 = decodeBandInt("class_InnerClasses_F", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt6);
        int length = iArrDecodeBandInt8.length;
        int i9 = 0;
        int i10 = 0;
        while (i10 < length) {
            int i11 = length;
            int[][] iArr3 = iArrDecodeBandInt8;
            AttributeLayout attributeLayout7 = attributeLayout6;
            for (int i12 : iArrDecodeBandInt8[i10]) {
                if (i12 != 0) {
                    i9++;
                }
            }
            i10++;
            length = i11;
            iArrDecodeBandInt8 = iArr3;
            attributeLayout6 = attributeLayout7;
        }
        int[][] iArr4 = iArrDecodeBandInt8;
        AttributeLayout attributeLayout8 = attributeLayout6;
        int[] iArrDecodeBandInt9 = decodeBandInt("class_InnerClasses_outer_RCN", inputStream2, Codec.UNSIGNED5, i9);
        int[] iArrDecodeBandInt10 = decodeBandInt("class_InnerClasses_name_RUN", inputStream2, Codec.UNSIGNED5, i9);
        AttributeLayout attributeLayout9 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_CLASS_FILE_VERSION, 0);
        int iCountMatches2 = SegmentUtils.countMatches(this.classFlags, attributeLayout9);
        AttributeLayout attributeLayout10 = attributeLayout9;
        int[] iArrDecodeBandInt11 = decodeBandInt("class_file_version_minor_H", inputStream2, Codec.UNSIGNED5, iCountMatches2);
        int[] iArrDecodeBandInt12 = decodeBandInt("class_file_version_major_H", inputStream2, Codec.UNSIGNED5, iCountMatches2);
        if (iCountMatches2 > 0) {
            int i13 = this.classCount;
            this.classVersionMajor = new int[i13];
            this.classVersionMinor = new int[i13];
        }
        int defaultClassMajorVersion = this.header.getDefaultClassMajorVersion();
        int defaultClassMinorVersion = this.header.getDefaultClassMinorVersion();
        int i14 = this.options.hasClassFlagsHi() ? 62 : 31;
        int i15 = i14 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i15];
        int[] iArr5 = new int[i15];
        List[] listArr = new List[i15];
        int i16 = 0;
        while (i16 < i14) {
            int i17 = i14;
            AttributeLayout attributeLayout11 = attributeLayout5;
            AttributeLayout attributeLayout12 = this.attrMap.getAttributeLayout(i16, 0);
            if (attributeLayout12 != null && !attributeLayout12.isDefaultLayout()) {
                attributeLayoutArr[i16] = attributeLayout12;
                iArr5[i16] = SegmentUtils.countMatches(this.classFlags, attributeLayout12);
            }
            i16++;
            i14 = i17;
            attributeLayout5 = attributeLayout11;
        }
        AttributeLayout attributeLayout13 = attributeLayout5;
        int i18 = classMetadataBands;
        int i19 = 0;
        while (i19 < i15) {
            if (iArr5[i19] > 0) {
                i8 = i15;
                NewAttributeBands attributeBands = this.attrMap.getAttributeBands(attributeLayoutArr[i19]);
                listArr[i19] = attributeBands.parseAttributes(inputStream2, iArr5[i19]);
                int iNumBackwardsCallables = attributeLayoutArr[i19].numBackwardsCallables();
                iArr2 = iArr5;
                if (iNumBackwardsCallables > 0) {
                    int[] iArr6 = new int[iNumBackwardsCallables];
                    System.arraycopy(iArrDecodeBandInt, i18, iArr6, 0, iNumBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr6);
                    i18 += iNumBackwardsCallables;
                }
            } else {
                iArr2 = iArr5;
                i8 = i15;
            }
            i19++;
            inputStream2 = inputStream;
            i15 = i8;
            iArr5 = iArr2;
        }
        int i20 = i15;
        this.icLocal = new IcTuple[this.classCount][];
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        while (i27 < this.classCount) {
            List[] listArr2 = listArr;
            AttributeLayout[] attributeLayoutArr2 = attributeLayoutArr;
            long j = this.classFlags[i27];
            if (attributeLayout2.matches(j)) {
                this.classAttributes[i27].add(new DeprecatedAttribute());
            }
            if (attributeLayout3.matches(j)) {
                i = i27;
                ClassFileEntry value = attributeLayout3.getValue(iArrDecodeBandInt2[i22], this.cpBands.getConstantPool());
                if (value == null) {
                    String str = this.classThis[i];
                    String strSubstring = str.substring(str.lastIndexOf(47) + 1);
                    String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(46) + 1);
                    char[] charArray = strSubstring2.toCharArray();
                    int i28 = 0;
                    while (true) {
                        if (i28 >= charArray.length) {
                            iArr = iArrDecodeBandInt2;
                            i7 = -1;
                            i28 = -1;
                            break;
                        } else {
                            iArr = iArrDecodeBandInt2;
                            if (charArray[i28] <= '-') {
                                i7 = -1;
                                break;
                            } else {
                                i28++;
                                iArrDecodeBandInt2 = iArr;
                            }
                        }
                    }
                    if (i28 > i7) {
                        strSubstring2 = strSubstring2.substring(0, i28);
                    }
                    value = this.cpBands.cpUTF8Value(strSubstring2 + ".java", true);
                } else {
                    iArr = iArrDecodeBandInt2;
                }
                this.classAttributes[i].add(new SourceFileAttribute((CPUTF8) value));
                i22++;
            } else {
                attributeLayout3 = attributeLayout3;
                iArr = iArrDecodeBandInt2;
                i = i27;
            }
            if (attributeLayout4.matches(j)) {
                CPClass cPClassCpClassValue = this.cpBands.cpClassValue(iArrDecodeBandInt3[i23]);
                int i29 = iArrDecodeBandInt4[i23];
                this.classAttributes[i].add(new EnclosingMethodAttribute(cPClassCpClassValue, i29 != 0 ? this.cpBands.cpNameAndTypeValue(i29 - 1) : null));
                i23++;
            }
            AttributeLayout attributeLayout14 = attributeLayout13;
            if (attributeLayout14.matches(j)) {
                this.classAttributes[i].add(new SignatureAttribute((CPUTF8) attributeLayout14.getValue(iArrDecodeBandInt5[i24], this.cpBands.getConstantPool())));
                i24++;
            }
            AttributeLayout attributeLayout15 = attributeLayout8;
            if (attributeLayout15.matches(j)) {
                this.icLocal[i] = new IcTuple[iArrDecodeBandInt6[i25]];
                i4 = i21;
                int i30 = 0;
                while (i30 < this.icLocal[i].length) {
                    int i31 = iArrDecodeBandInt7[i25][i30];
                    String str2 = cpClass[i31];
                    int i32 = iArr4[i25][i30];
                    if (i32 != 0) {
                        int i33 = iArrDecodeBandInt9[i4];
                        int i34 = iArrDecodeBandInt10[i4];
                        i4++;
                        i5 = i33;
                        i6 = i34;
                        c2 = cpClass[i33];
                        n = cpUTF8[i34];
                        f = i32;
                    } else {
                        IcTuple[] icTuples = this.segment.getIcBands().getIcTuples();
                        int length2 = icTuples.length;
                        int i35 = 0;
                        while (true) {
                            if (i35 >= length2) {
                                f = i32;
                                c2 = null;
                                n = null;
                                break;
                            }
                            IcTuple icTuple = icTuples[i35];
                            IcTuple[] icTupleArr = icTuples;
                            if (icTuple.getC().equals(str2)) {
                                f = icTuple.getF();
                                c2 = icTuple.getC2();
                                n = icTuple.getN();
                                break;
                            }
                            i35++;
                            icTuples = icTupleArr;
                        }
                        i5 = -1;
                        i6 = -1;
                    }
                    this.icLocal[i][i30] = new IcTuple(str2, f, c2, n, i31, i5, i6, i30);
                    i30++;
                    i22 = i22;
                    attributeLayout14 = attributeLayout14;
                    i23 = i23;
                }
                i2 = i22;
                attributeLayout = attributeLayout14;
                i3 = i23;
                i25++;
            } else {
                i2 = i22;
                attributeLayout = attributeLayout14;
                i3 = i23;
                i4 = i21;
            }
            AttributeLayout attributeLayout16 = attributeLayout10;
            if (attributeLayout16.matches(j)) {
                this.classVersionMajor[i] = iArrDecodeBandInt12[i26];
                this.classVersionMinor[i] = iArrDecodeBandInt11[i26];
                i26++;
            } else {
                int[] iArr7 = this.classVersionMajor;
                if (iArr7 != null) {
                    iArr7[i] = defaultClassMajorVersion;
                    this.classVersionMinor[i] = defaultClassMinorVersion;
                }
            }
            int i36 = i20;
            int i37 = 0;
            while (i37 < i36) {
                AttributeLayout attributeLayout17 = attributeLayoutArr2[i37];
                if (attributeLayout17 != null && attributeLayout17.matches(j)) {
                    this.classAttributes[i].add((Attribute) listArr2[i37].get(0));
                    listArr2[i37].remove(0);
                }
                i37++;
                attributeLayout16 = attributeLayout16;
            }
            attributeLayout10 = attributeLayout16;
            i27 = i + 1;
            i20 = i36;
            attributeLayout8 = attributeLayout15;
            i21 = i4;
            attributeLayoutArr = attributeLayoutArr2;
            listArr = listArr2;
            attributeLayout2 = attributeLayout2;
            i22 = i2;
            attributeLayout3 = attributeLayout3;
            iArrDecodeBandInt2 = iArr;
            attributeLayout13 = attributeLayout;
            i23 = i3;
        }
    }

    static /* synthetic */ ArrayList lambda$parseClassAttrBands$0(int i) {
        return new ArrayList();
    }

    private int parseClassMetadataBands(InputStream inputStream, int[] iArr) throws IOException {
        int i = 2;
        int i2 = 0;
        String[] strArr = {"RVA", "RIA"};
        AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 0);
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 0);
        int iCountMatches = SegmentUtils.countMatches(this.classFlags, attributeLayout);
        int iCountMatches2 = SegmentUtils.countMatches(this.classFlags, attributeLayout2);
        int[] iArr2 = {iCountMatches, iCountMatches2};
        int[] iArr3 = {0, 0};
        if (iCountMatches > 0) {
            iArr3[0] = iArr[0];
            if (iCountMatches2 > 0) {
                iArr3[1] = iArr[1];
            } else {
                i = 1;
            }
        } else if (iCountMatches2 > 0) {
            iArr3[1] = iArr[0];
            i = 1;
        } else {
            i = 0;
        }
        MetadataBandGroup[] metadata = parseMetadata(inputStream, strArr, iArr2, iArr3, "class");
        List<Attribute> attributes = metadata[0].getAttributes();
        List<Attribute> attributes2 = metadata[1].getAttributes();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            long[] jArr = this.classFlags;
            if (i2 >= jArr.length) {
                return i;
            }
            if (attributeLayout.matches(jArr[i2])) {
                this.classAttributes[i2].add(attributes.get(i3));
                i3++;
            }
            if (attributeLayout2.matches(this.classFlags[i2])) {
                this.classAttributes[i2].add(attributes2.get(i4));
                i4++;
            }
            i2++;
        }
    }

    private void parseCodeAttrBands(InputStream inputStream, int i) throws IOException {
        int[] iArr;
        int i2;
        InputStream inputStream2 = inputStream;
        long[] flags = parseFlags("code_flags", inputStream, i, Codec.UNSIGNED5, this.segment.getSegmentHeader().getOptions().hasCodeFlagsHi());
        int iNumBackwardsCallables = 0;
        for (int[] iArr2 : decodeBandInt("code_attr_indexes", inputStream2, Codec.UNSIGNED5, decodeBandInt("code_attr_count", inputStream2, Codec.UNSIGNED5, SegmentUtils.countBit16(flags)))) {
            for (int i3 : iArr2) {
                iNumBackwardsCallables += this.attrMap.getAttributeLayout(i3, 3).numBackwardsCallables();
            }
        }
        int[] iArrDecodeBandInt = decodeBandInt("code_attr_calls", inputStream2, Codec.UNSIGNED5, iNumBackwardsCallables);
        AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE, 3);
        int[] iArrDecodeBandInt2 = decodeBandInt("code_LineNumberTable_N", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(flags, attributeLayout));
        int[][] iArrDecodeBandInt3 = decodeBandInt("code_LineNumberTable_bci_P", inputStream2, Codec.BCI5, iArrDecodeBandInt2);
        int[][] iArrDecodeBandInt4 = decodeBandInt("code_LineNumberTable_line", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt2);
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE, 3);
        AttributeLayout attributeLayout3 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE, 3);
        int[] iArrDecodeBandInt5 = decodeBandInt("code_LocalVariableTable_N", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(flags, attributeLayout2));
        int[][] iArrDecodeBandInt6 = decodeBandInt("code_LocalVariableTable_bci_P", inputStream2, Codec.BCI5, iArrDecodeBandInt5);
        int[][] iArrDecodeBandInt7 = decodeBandInt("code_LocalVariableTable_span_O", inputStream2, Codec.BRANCH5, iArrDecodeBandInt5);
        CPUTF8[][] cPUTF8References = parseCPUTF8References("code_LocalVariableTable_name_RU", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt5);
        CPUTF8[][] cPSignatureReferences = parseCPSignatureReferences("code_LocalVariableTable_type_RS", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt5);
        int[][] iArrDecodeBandInt8 = decodeBandInt("code_LocalVariableTable_slot", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt5);
        AttributeLayout attributeLayout4 = attributeLayout3;
        int[] iArrDecodeBandInt9 = decodeBandInt("code_LocalVariableTypeTable_N", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(flags, attributeLayout3));
        int[][] iArrDecodeBandInt10 = decodeBandInt("code_LocalVariableTypeTable_bci_P", inputStream2, Codec.BCI5, iArrDecodeBandInt9);
        int[][] iArrDecodeBandInt11 = decodeBandInt("code_LocalVariableTypeTable_span_O", inputStream2, Codec.BRANCH5, iArrDecodeBandInt9);
        CPUTF8[][] cPUTF8References2 = parseCPUTF8References("code_LocalVariableTypeTable_name_RU", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt9);
        CPUTF8[][] cPSignatureReferences2 = parseCPSignatureReferences("code_LocalVariableTypeTable_type_RS", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt9);
        int[][] iArrDecodeBandInt12 = decodeBandInt("code_LocalVariableTypeTable_slot", inputStream2, Codec.UNSIGNED5, iArrDecodeBandInt9);
        int i4 = this.options.hasCodeFlagsHi() ? 62 : 31;
        int i5 = i4 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i5];
        int[] iArr3 = new int[i5];
        List[] listArr = new List[i5];
        int i6 = 0;
        while (i6 < i4) {
            int i7 = i4;
            int[] iArr4 = iArrDecodeBandInt5;
            AttributeLayout attributeLayout5 = this.attrMap.getAttributeLayout(i6, 3);
            if (attributeLayout5 != null && !attributeLayout5.isDefaultLayout()) {
                attributeLayoutArr[i6] = attributeLayout5;
                iArr3[i6] = SegmentUtils.countMatches(flags, attributeLayout5);
            }
            i6++;
            i4 = i7;
            iArrDecodeBandInt5 = iArr4;
        }
        int[] iArr5 = iArrDecodeBandInt5;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i5) {
            if (iArr3[i8] > 0) {
                i2 = i5;
                NewAttributeBands attributeBands = this.attrMap.getAttributeBands(attributeLayoutArr[i8]);
                listArr[i8] = attributeBands.parseAttributes(inputStream2, iArr3[i8]);
                int iNumBackwardsCallables2 = attributeLayoutArr[i8].numBackwardsCallables();
                iArr = iArr3;
                if (iNumBackwardsCallables2 > 0) {
                    int[] iArr6 = new int[iNumBackwardsCallables2];
                    System.arraycopy(iArrDecodeBandInt, i9, iArr6, 0, iNumBackwardsCallables2);
                    attributeBands.setBackwardsCalls(iArr6);
                    i9 += iNumBackwardsCallables2;
                }
            } else {
                iArr = iArr3;
                i2 = i5;
            }
            i8++;
            inputStream2 = inputStream;
            i5 = i2;
            iArr3 = iArr;
        }
        int i10 = i5;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i) {
            if (attributeLayout.matches(flags[i13])) {
                LineNumberTableAttribute lineNumberTableAttribute = new LineNumberTableAttribute(iArrDecodeBandInt2[i11], iArrDecodeBandInt3[i11], iArrDecodeBandInt4[i11]);
                i11++;
                this.codeAttributes[i13].add(lineNumberTableAttribute);
            }
            if (attributeLayout2.matches(flags[i13])) {
                LocalVariableTableAttribute localVariableTableAttribute = new LocalVariableTableAttribute(iArr5[i12], iArrDecodeBandInt6[i12], iArrDecodeBandInt7[i12], cPUTF8References[i12], cPSignatureReferences[i12], iArrDecodeBandInt8[i12]);
                i12++;
                this.codeAttributes[i13].add(localVariableTableAttribute);
            }
            AttributeLayout attributeLayout6 = attributeLayout4;
            if (attributeLayout6.matches(flags[i13])) {
                LocalVariableTypeTableAttribute localVariableTypeTableAttribute = new LocalVariableTypeTableAttribute(iArrDecodeBandInt9[i14], iArrDecodeBandInt10[i14], iArrDecodeBandInt11[i14], cPUTF8References2[i14], cPSignatureReferences2[i14], iArrDecodeBandInt12[i14]);
                i14++;
                this.codeAttributes[i13].add(localVariableTypeTableAttribute);
            }
            int i15 = i10;
            int i16 = 0;
            while (i16 < i15) {
                AttributeLayout attributeLayout7 = attributeLayoutArr[i16];
                int i17 = i11;
                AttributeLayout attributeLayout8 = attributeLayout6;
                if (attributeLayout7 != null && attributeLayout7.matches(flags[i13])) {
                    this.codeAttributes[i13].add((Attribute) listArr[i16].get(0));
                    listArr[i16].remove(0);
                }
                i16++;
                i11 = i17;
                attributeLayout6 = attributeLayout8;
            }
            attributeLayout4 = attributeLayout6;
            i13++;
            i10 = i15;
            attributeLayout = attributeLayout;
        }
    }

    private void parseCodeBands(InputStream inputStream) throws IOException {
        char c;
        char c2 = 2;
        int iCountMatches = SegmentUtils.countMatches(this.methodFlags, this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_CODE, 2));
        int[] iArrDecodeBandInt = decodeBandInt("code_headers", inputStream, Codec.BYTE1, iCountMatches);
        boolean zHasAllCodeFlags = this.segment.getSegmentHeader().getOptions().hasAllCodeFlags();
        if (!zHasAllCodeFlags) {
            this.codeHasAttributes = new boolean[iCountMatches];
        }
        int i = 0;
        for (int i2 = 0; i2 < iCountMatches; i2++) {
            if (iArrDecodeBandInt[i2] == 0) {
                i++;
                if (!zHasAllCodeFlags) {
                    this.codeHasAttributes[i2] = true;
                }
            }
        }
        int[] iArrDecodeBandInt2 = decodeBandInt("code_max_stack", inputStream, Codec.UNSIGNED5, i);
        int[] iArrDecodeBandInt3 = decodeBandInt("code_max_na_locals", inputStream, Codec.UNSIGNED5, i);
        int[] iArrDecodeBandInt4 = decodeBandInt("code_handler_count", inputStream, Codec.UNSIGNED5, i);
        this.codeMaxStack = new int[iCountMatches];
        this.codeMaxNALocals = new int[iCountMatches];
        this.codeHandlerCount = new int[iCountMatches];
        int i3 = 0;
        int i4 = 0;
        while (i3 < iCountMatches) {
            int i5 = iArrDecodeBandInt[i3] & 255;
            if (i5 < 0) {
                throw new IllegalStateException("Shouldn't get here");
            }
            if (i5 == 0) {
                this.codeMaxStack[i3] = iArrDecodeBandInt2[i4];
                this.codeMaxNALocals[i3] = iArrDecodeBandInt3[i4];
                this.codeHandlerCount[i3] = iArrDecodeBandInt4[i4];
                i4++;
                c = c2;
            } else {
                if (i5 <= 144) {
                    int i6 = i5 - 1;
                    this.codeMaxStack[i3] = i6 % 12;
                    this.codeMaxNALocals[i3] = i6 / 12;
                    this.codeHandlerCount[i3] = 0;
                } else if (i5 <= 208) {
                    int i7 = i5 - 145;
                    this.codeMaxStack[i3] = i7 % 8;
                    this.codeMaxNALocals[i3] = i7 / 8;
                    this.codeHandlerCount[i3] = 1;
                } else if (i5 <= 255) {
                    int i8 = i5 - 209;
                    this.codeMaxStack[i3] = i8 % 7;
                    this.codeMaxNALocals[i3] = i8 / 7;
                    c = 2;
                    this.codeHandlerCount[i3] = 2;
                } else {
                    throw new IllegalStateException("Shouldn't get here either");
                }
                c = 2;
            }
            i3++;
            c2 = c;
        }
        this.codeHandlerStartP = decodeBandInt("code_handler_start_P", inputStream, Codec.BCI5, this.codeHandlerCount);
        this.codeHandlerEndPO = decodeBandInt("code_handler_end_PO", inputStream, Codec.BRANCH5, this.codeHandlerCount);
        this.codeHandlerCatchPO = decodeBandInt("code_handler_catch_PO", inputStream, Codec.BRANCH5, this.codeHandlerCount);
        this.codeHandlerClassRCN = decodeBandInt("code_handler_class_RCN", inputStream, Codec.UNSIGNED5, this.codeHandlerCount);
        if (!zHasAllCodeFlags) {
            iCountMatches = i;
        }
        List<Attribute>[] listArr = new List[iCountMatches];
        this.codeAttributes = listArr;
        Arrays.setAll(listArr, new IntFunction() { // from class: org.apache.commons.compress.harmony.unpack200.ClassBands$$ExternalSyntheticLambda0
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                return ClassBands.lambda$parseCodeBands$1(i9);
            }
        });
        parseCodeAttrBands(inputStream, iCountMatches);
    }

    static /* synthetic */ List lambda$parseCodeBands$1(int i) {
        return new ArrayList();
    }

    private void parseFieldAttrBands(InputStream inputStream) throws IOException {
        int i;
        int i2;
        InputStream inputStream2 = inputStream;
        long[][] flags = parseFlags("field_flags", inputStream, this.classFieldCount, Codec.UNSIGNED5, this.options.hasFieldFlagsHi());
        this.fieldFlags = flags;
        int[] iArrDecodeBandInt = decodeBandInt("field_attr_calls", inputStream2, Codec.UNSIGNED5, getCallCount(decodeBandInt("field_attr_indexes", inputStream2, Codec.UNSIGNED5, decodeBandInt("field_attr_count", inputStream2, Codec.UNSIGNED5, SegmentUtils.countBit16(flags))), this.fieldFlags, 1));
        this.fieldAttributes = new ArrayList[this.classCount][];
        for (int i3 = 0; i3 < this.classCount; i3++) {
            this.fieldAttributes[i3] = new ArrayList[this.fieldFlags[i3].length];
            for (int i4 = 0; i4 < this.fieldFlags[i3].length; i4++) {
                this.fieldAttributes[i3][i4] = new ArrayList<>();
            }
        }
        AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE, 1);
        int[] iArrDecodeBandInt2 = decodeBandInt("field_ConstantValue_KQ", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(this.fieldFlags, attributeLayout));
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_SIGNATURE, 1);
        int[] iArrDecodeBandInt3 = decodeBandInt("field_Signature_RS", inputStream2, Codec.UNSIGNED5, SegmentUtils.countMatches(this.fieldFlags, attributeLayout2));
        AttributeLayout attributeLayout3 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 1);
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < this.classCount) {
            int i8 = 0;
            while (true) {
                long[] jArr = this.fieldFlags[i5];
                if (i8 < jArr.length) {
                    long j = jArr[i8];
                    if (attributeLayout3.matches(j)) {
                        this.fieldAttributes[i5][i8].add(new DeprecatedAttribute());
                    }
                    if (attributeLayout.matches(j)) {
                        long j2 = iArrDecodeBandInt2[i6];
                        String str = this.fieldDescr[i5][i8];
                        i2 = 58;
                        String strSubstring = str.substring(str.indexOf(58) + 1);
                        if (strSubstring.equals("B") || strSubstring.equals(ExifInterface.LATITUDE_SOUTH) || strSubstring.equals("C") || strSubstring.equals("Z")) {
                            strSubstring = "I";
                        }
                        this.fieldAttributes[i5][i8].add(new ConstantValueAttribute(attributeLayout.getValue(j2, strSubstring, this.cpBands.getConstantPool())));
                        i6++;
                    } else {
                        i2 = 58;
                    }
                    if (attributeLayout2.matches(j)) {
                        long j3 = iArrDecodeBandInt3[i7];
                        String str2 = this.fieldDescr[i5][i8];
                        this.fieldAttributes[i5][i8].add(new SignatureAttribute((CPUTF8) attributeLayout2.getValue(j3, str2.substring(str2.indexOf(i2) + 1), this.cpBands.getConstantPool())));
                        i7++;
                    }
                    i8++;
                    iArrDecodeBandInt3 = iArrDecodeBandInt3;
                    iArrDecodeBandInt2 = iArrDecodeBandInt2;
                }
            }
            i5++;
            inputStream2 = inputStream;
        }
        InputStream inputStream3 = inputStream2;
        int fieldMetadataBands = parseFieldMetadataBands(inputStream3, iArrDecodeBandInt);
        int i9 = this.options.hasFieldFlagsHi() ? 62 : 31;
        int i10 = i9 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i10];
        int[] iArr = new int[i10];
        List[] listArr = new List[i10];
        for (int i11 = 0; i11 < i9; i11++) {
            AttributeLayout attributeLayout4 = this.attrMap.getAttributeLayout(i11, 1);
            if (attributeLayout4 != null && !attributeLayout4.isDefaultLayout()) {
                attributeLayoutArr[i11] = attributeLayout4;
                iArr[i11] = SegmentUtils.countMatches(this.fieldFlags, attributeLayout4);
            }
        }
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] > 0) {
                NewAttributeBands attributeBands = this.attrMap.getAttributeBands(attributeLayoutArr[i12]);
                listArr[i12] = attributeBands.parseAttributes(inputStream3, iArr[i12]);
                int iNumBackwardsCallables = attributeLayoutArr[i12].numBackwardsCallables();
                if (iNumBackwardsCallables > 0) {
                    int[] iArr2 = new int[iNumBackwardsCallables];
                    System.arraycopy(iArrDecodeBandInt, fieldMetadataBands, iArr2, 0, iNumBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr2);
                    fieldMetadataBands += iNumBackwardsCallables;
                }
            }
        }
        for (int i13 = 0; i13 < this.classCount; i13++) {
            int i14 = 0;
            while (true) {
                long[] jArr2 = this.fieldFlags[i13];
                if (i14 < jArr2.length) {
                    long j4 = jArr2[i14];
                    int i15 = 0;
                    for (int i16 = 0; i16 < i10; i16++) {
                        AttributeLayout attributeLayout5 = attributeLayoutArr[i16];
                        if (attributeLayout5 != null && attributeLayout5.matches(j4)) {
                            if (attributeLayoutArr[i16].getIndex() < 15) {
                                i = 0;
                                this.fieldAttributes[i13][i14].add(i15, (Attribute) listArr[i16].get(0));
                                i15++;
                            } else {
                                i = 0;
                                this.fieldAttributes[i13][i14].add((Attribute) listArr[i16].get(0));
                            }
                            listArr[i16].remove(i);
                        }
                    }
                    i14++;
                }
            }
        }
    }

    private void parseFieldBands(InputStream inputStream) throws IOException {
        int[][] iArrDecodeBandInt = decodeBandInt("field_descr", inputStream, Codec.DELTA5, this.classFieldCount);
        this.fieldDescrInts = iArrDecodeBandInt;
        this.fieldDescr = getReferences(iArrDecodeBandInt, this.cpBands.getCpDescriptor());
        parseFieldAttrBands(inputStream);
    }

    private int parseFieldMetadataBands(InputStream inputStream, int[] iArr) throws IOException {
        int i = 2;
        String[] strArr = {"RVA", "RIA"};
        AttributeLayout attributeLayout = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 1);
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 1);
        int iCountMatches = SegmentUtils.countMatches(this.fieldFlags, attributeLayout);
        int iCountMatches2 = SegmentUtils.countMatches(this.fieldFlags, attributeLayout2);
        int[] iArr2 = {iCountMatches, iCountMatches2};
        int[] iArr3 = {0, 0};
        if (iCountMatches > 0) {
            iArr3[0] = iArr[0];
            if (iCountMatches2 > 0) {
                iArr3[1] = iArr[1];
            } else {
                i = 1;
            }
        } else if (iCountMatches2 > 0) {
            iArr3[1] = iArr[0];
            i = 1;
        } else {
            i = 0;
        }
        MetadataBandGroup[] metadata = parseMetadata(inputStream, strArr, iArr2, iArr3, "field");
        List<Attribute> attributes = metadata[0].getAttributes();
        List<Attribute> attributes2 = metadata[1].getAttributes();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.fieldFlags.length; i4++) {
            int i5 = 0;
            while (true) {
                long[] jArr = this.fieldFlags[i4];
                if (i5 < jArr.length) {
                    if (attributeLayout.matches(jArr[i5])) {
                        this.fieldAttributes[i4][i5].add(attributes.get(i2));
                        i2++;
                    }
                    if (attributeLayout2.matches(this.fieldFlags[i4][i5])) {
                        this.fieldAttributes[i4][i5].add(attributes2.get(i3));
                        i3++;
                    }
                    i5++;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x018f  */
    private MetadataBandGroup[] parseMetadata(InputStream inputStream, String[] strArr, int[] iArr, int[] iArr2, String str) throws IOException {
        int i;
        ClassBands classBands = this;
        InputStream inputStream2 = inputStream;
        String[] strArr2 = strArr;
        MetadataBandGroup[] metadataBandGroupArr = new MetadataBandGroup[strArr2.length];
        int i2 = 0;
        while (i2 < strArr2.length) {
            metadataBandGroupArr[i2] = new MetadataBandGroup(strArr2[i2], classBands.cpBands);
            String str2 = strArr2[i2];
            if (str2.indexOf(80) >= 0) {
                metadataBandGroupArr[i2].param_NB = classBands.decodeBandInt(str + "_" + str2 + "_param_NB", inputStream2, Codec.BYTE1, iArr[i2]);
            }
            if (!str2.equals("AD")) {
                metadataBandGroupArr[i2].anno_N = classBands.decodeBandInt(str + "_" + str2 + "_anno_N", inputStream2, Codec.UNSIGNED5, iArr[i2]);
                metadataBandGroupArr[i2].type_RS = classBands.parseCPSignatureReferences(str + "_" + str2 + "_type_RS", inputStream2, Codec.UNSIGNED5, metadataBandGroupArr[i2].anno_N);
                metadataBandGroupArr[i2].pair_N = classBands.decodeBandInt(str + "_" + str2 + "_pair_N", inputStream2, Codec.UNSIGNED5, metadataBandGroupArr[i2].anno_N);
                i = 0;
                for (int[] iArr3 : metadataBandGroupArr[i2].pair_N) {
                    for (int i3 : iArr3) {
                        i += i3;
                    }
                }
                metadataBandGroupArr[i2].name_RU = classBands.parseCPUTF8References(str + "_" + str2 + "_name_RU", inputStream2, Codec.UNSIGNED5, i);
            } else {
                i = iArr[i2];
            }
            metadataBandGroupArr[i2].T = classBands.decodeBandInt(str + "_" + str2 + "_T", inputStream2, Codec.BYTE1, i + iArr2[i2]);
            int[] iArr4 = metadataBandGroupArr[i2].T;
            int length = iArr4.length;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (i4 < length) {
                int i14 = length;
                char c = (char) iArr4[i4];
                int[] iArr5 = iArr4;
                if (c == '@') {
                    i12++;
                } else if (c == 'F') {
                    i7++;
                } else if (c == 'S') {
                    i5++;
                } else if (c == 'c') {
                    i10++;
                } else if (c == 'e') {
                    i13++;
                } else if (c == 's') {
                    i8++;
                } else if (c == 'I') {
                    i5++;
                } else if (c == 'J') {
                    i11++;
                } else if (c == 'Z') {
                    i5++;
                } else if (c != '[') {
                    switch (c) {
                        case 'B':
                        case 'C':
                            i5++;
                            break;
                        case 'D':
                            i6++;
                            break;
                    }
                } else {
                    i9++;
                }
                i4++;
                length = i14;
                iArr4 = iArr5;
            }
            int i15 = i12;
            metadataBandGroupArr[i2].caseI_KI = parseCPIntReferences(str + "_" + str2 + "_caseI_KI", inputStream, Codec.UNSIGNED5, i5);
            metadataBandGroupArr[i2].caseD_KD = parseCPDoubleReferences(str + "_" + str2 + "_caseD_KD", inputStream, Codec.UNSIGNED5, i6);
            metadataBandGroupArr[i2].caseF_KF = parseCPFloatReferences(str + "_" + str2 + "_caseF_KF", inputStream, Codec.UNSIGNED5, i7);
            metadataBandGroupArr[i2].caseJ_KJ = parseCPLongReferences(str + "_" + str2 + "_caseJ_KJ", inputStream, Codec.UNSIGNED5, i11);
            metadataBandGroupArr[i2].casec_RS = parseCPSignatureReferences(str + "_" + str2 + "_casec_RS", inputStream, Codec.UNSIGNED5, i10);
            int i16 = i13;
            metadataBandGroupArr[i2].caseet_RS = parseReferences(str + "_" + str2 + "_caseet_RS", inputStream, Codec.UNSIGNED5, i16, this.cpBands.getCpSignature());
            metadataBandGroupArr[i2].caseec_RU = parseReferences(str + "_" + str2 + "_caseec_RU", inputStream, Codec.UNSIGNED5, i16, this.cpBands.getCpUTF8());
            metadataBandGroupArr[i2].cases_RU = parseCPUTF8References(str + "_" + str2 + "_cases_RU", inputStream, Codec.UNSIGNED5, i8);
            metadataBandGroupArr[i2].casearray_N = decodeBandInt(str + "_" + str2 + "_casearray_N", inputStream, Codec.UNSIGNED5, i9);
            metadataBandGroupArr[i2].nesttype_RS = parseCPUTF8References(str + "_" + str2 + "_nesttype_RS", inputStream, Codec.UNSIGNED5, i15);
            metadataBandGroupArr[i2].nestpair_N = decodeBandInt(str + "_" + str2 + "_nestpair_N", inputStream, Codec.UNSIGNED5, i15);
            int i17 = 0;
            for (int i18 : metadataBandGroupArr[i2].nestpair_N) {
                i17 += i18;
            }
            metadataBandGroupArr[i2].nestname_RU = parseCPUTF8References(str + "_" + str2 + "_nestname_RU", inputStream, Codec.UNSIGNED5, i17);
            i2++;
            strArr2 = strArr;
            classBands = this;
            inputStream2 = inputStream;
        }
        return metadataBandGroupArr;
    }

    private void parseMethodAttrBands(InputStream inputStream) throws IOException {
        int i;
        AttributeLayout attributeLayout;
        int[][] iArr;
        long[][] flags = parseFlags("method_flags", inputStream, this.classMethodCount, Codec.UNSIGNED5, this.options.hasMethodFlagsHi());
        this.methodFlags = flags;
        this.methodAttrCalls = decodeBandInt("method_attr_calls", inputStream, Codec.UNSIGNED5, getCallCount(decodeBandInt("method_attr_indexes", inputStream, Codec.UNSIGNED5, decodeBandInt("method_attr_count", inputStream, Codec.UNSIGNED5, SegmentUtils.countBit16(flags))), this.methodFlags, 2));
        this.methodAttributes = new ArrayList[this.classCount][];
        for (int i2 = 0; i2 < this.classCount; i2++) {
            this.methodAttributes[i2] = new ArrayList[this.methodFlags[i2].length];
            for (int i3 = 0; i3 < this.methodFlags[i2].length; i3++) {
                this.methodAttributes[i2][i3] = new ArrayList<>();
            }
        }
        AttributeLayout attributeLayout2 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_EXCEPTIONS, 2);
        int[] iArrDecodeBandInt = decodeBandInt("method_Exceptions_n", inputStream, Codec.UNSIGNED5, SegmentUtils.countMatches(this.methodFlags, attributeLayout2));
        int[][] iArrDecodeBandInt2 = decodeBandInt("method_Exceptions_RC", inputStream, Codec.UNSIGNED5, iArrDecodeBandInt);
        AttributeLayout attributeLayout3 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_SIGNATURE, 2);
        int[] iArrDecodeBandInt3 = decodeBandInt("method_signature_RS", inputStream, Codec.UNSIGNED5, SegmentUtils.countMatches(this.methodFlags, attributeLayout3));
        AttributeLayout attributeLayout4 = this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 2);
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < this.methodAttributes.length; i6++) {
            int i7 = 0;
            while (i7 < this.methodAttributes[i6].length) {
                int[] iArr2 = iArrDecodeBandInt;
                long j = this.methodFlags[i6][i7];
                if (attributeLayout2.matches(j)) {
                    int i8 = iArr2[i4];
                    int[] iArr3 = iArrDecodeBandInt2[i4];
                    CPClass[] cPClassArr = new CPClass[i8];
                    int i9 = 0;
                    while (i9 < i8) {
                        cPClassArr[i9] = this.cpBands.cpClassValue(iArr3[i9]);
                        i9++;
                        attributeLayout2 = attributeLayout2;
                        iArrDecodeBandInt2 = iArrDecodeBandInt2;
                    }
                    attributeLayout = attributeLayout2;
                    iArr = iArrDecodeBandInt2;
                    this.methodAttributes[i6][i7].add(new ExceptionsAttribute(cPClassArr));
                    i4++;
                } else {
                    attributeLayout = attributeLayout2;
                    iArr = iArrDecodeBandInt2;
                }
                if (attributeLayout3.matches(j)) {
                    long j2 = iArrDecodeBandInt3[i5];
                    String str = this.methodDescr[i6][i7];
                    String strSubstring = str.substring(str.indexOf(58) + 1);
                    if (strSubstring.equals("B") || strSubstring.equals("H")) {
                        strSubstring = "I";
                    }
                    this.methodAttributes[i6][i7].add(new SignatureAttribute((CPUTF8) attributeLayout3.getValue(j2, strSubstring, this.cpBands.getConstantPool())));
                    i5++;
                }
                if (attributeLayout4.matches(j)) {
                    this.methodAttributes[i6][i7].add(new DeprecatedAttribute());
                }
                i7++;
                iArrDecodeBandInt = iArr2;
                attributeLayout2 = attributeLayout;
                iArrDecodeBandInt2 = iArr;
            }
        }
        int methodMetadataBands = parseMethodMetadataBands(inputStream, this.methodAttrCalls);
        int i10 = this.options.hasMethodFlagsHi() ? 62 : 31;
        int i11 = i10 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i11];
        int[] iArr4 = new int[i11];
        for (int i12 = 0; i12 < i10; i12++) {
            AttributeLayout attributeLayout5 = this.attrMap.getAttributeLayout(i12, 2);
            if (attributeLayout5 != null && !attributeLayout5.isDefaultLayout()) {
                attributeLayoutArr[i12] = attributeLayout5;
                iArr4[i12] = SegmentUtils.countMatches(this.methodFlags, attributeLayout5);
            }
        }
        List[] listArr = new List[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            if (iArr4[i13] > 0) {
                NewAttributeBands attributeBands = this.attrMap.getAttributeBands(attributeLayoutArr[i13]);
                listArr[i13] = attributeBands.parseAttributes(inputStream, iArr4[i13]);
                int iNumBackwardsCallables = attributeLayoutArr[i13].numBackwardsCallables();
                if (iNumBackwardsCallables > 0) {
                    int[] iArr5 = new int[iNumBackwardsCallables];
                    System.arraycopy(this.methodAttrCalls, methodMetadataBands, iArr5, 0, iNumBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr5);
                    methodMetadataBands += iNumBackwardsCallables;
                }
            }
        }
        for (int i14 = 0; i14 < this.methodAttributes.length; i14++) {
            for (int i15 = 0; i15 < this.methodAttributes[i14].length; i15++) {
                long j3 = this.methodFlags[i14][i15];
                int i16 = 0;
                for (int i17 = 0; i17 < i11; i17++) {
                    AttributeLayout attributeLayout6 = attributeLayoutArr[i17];
                    if (attributeLayout6 != null && attributeLayout6.matches(j3)) {
                        if (attributeLayoutArr[i17].getIndex() < 15) {
                            i = 0;
                            this.methodAttributes[i14][i15].add(i16, (Attribute) listArr[i17].get(0));
                            i16++;
                        } else {
                            i = 0;
                            this.methodAttributes[i14][i15].add((Attribute) listArr[i17].get(0));
                        }
                        listArr[i17].remove(i);
                    }
                }
            }
        }
    }

    private void parseMethodBands(InputStream inputStream) throws IOException {
        int[][] iArrDecodeBandInt = decodeBandInt("method_descr", inputStream, Codec.MDELTA5, this.classMethodCount);
        this.methodDescrInts = iArrDecodeBandInt;
        this.methodDescr = getReferences(iArrDecodeBandInt, this.cpBands.getCpDescriptor());
        parseMethodAttrBands(inputStream);
    }

    private int parseMethodMetadataBands(InputStream inputStream, int[] iArr) throws IOException {
        String[] strArr = {"RVA", "RIA", "RVPA", "RIPA", "AD"};
        int[] iArr2 = {0, 0, 0, 0, 0};
        final AttributeLayout[] attributeLayoutArr = {this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 2), this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 2), this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS, 2), this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS, 2), this.attrMap.getAttributeLayout(AttributeLayout.ATTRIBUTE_ANNOTATION_DEFAULT, 2)};
        Arrays.setAll(iArr2, new IntUnaryOperator() { // from class: org.apache.commons.compress.harmony.unpack200.ClassBands$$ExternalSyntheticLambda3
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                return this.f$0.m2095xf85b1228(attributeLayoutArr, i);
            }
        });
        int[] iArr3 = new int[5];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            if (iArr2[i3] > 0) {
                i2++;
                iArr3[i3] = iArr[i];
                i++;
            } else {
                iArr3[i3] = 0;
            }
        }
        MetadataBandGroup[] metadata = parseMetadata(inputStream, strArr, iArr2, iArr3, "method");
        List[] listArr = new List[5];
        int[] iArr4 = new int[5];
        for (int i4 = 0; i4 < metadata.length; i4++) {
            listArr[i4] = metadata[i4].getAttributes();
            iArr4[i4] = 0;
        }
        for (int i5 = 0; i5 < this.methodFlags.length; i5++) {
            for (int i6 = 0; i6 < this.methodFlags[i5].length; i6++) {
                for (int i7 = 0; i7 < 5; i7++) {
                    if (attributeLayoutArr[i7].matches(this.methodFlags[i5][i6])) {
                        ArrayList<Attribute> arrayList = this.methodAttributes[i5][i6];
                        List list = listArr[i7];
                        int i8 = iArr4[i7];
                        iArr4[i7] = i8 + 1;
                        arrayList.add((Attribute) list.get(i8));
                    }
                }
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: lambda$parseMethodMetadataBands$2$org-apache-commons-compress-harmony-unpack200-ClassBands, reason: not valid java name */
    /* synthetic */ int m2095xf85b1228(AttributeLayout[] attributeLayoutArr, int i) {
        return SegmentUtils.countMatches(this.methodFlags, attributeLayoutArr[i]);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException {
        int classCount = this.header.getClassCount();
        int[] iArrDecodeBandInt = decodeBandInt("class_this", inputStream, Codec.DELTA5, classCount);
        this.classThisInts = iArrDecodeBandInt;
        this.classThis = getReferences(iArrDecodeBandInt, this.cpBands.getCpClass());
        this.classSuperInts = decodeBandInt("class_super", inputStream, Codec.DELTA5, classCount);
        this.classInterfacesInts = decodeBandInt("class_interface", inputStream, Codec.DELTA5, decodeBandInt("class_interface_count", inputStream, Codec.DELTA5, classCount));
        this.classFieldCount = decodeBandInt("class_field_count", inputStream, Codec.DELTA5, classCount);
        this.classMethodCount = decodeBandInt("class_method_count", inputStream, Codec.DELTA5, classCount);
        parseFieldBands(inputStream);
        parseMethodBands(inputStream);
        parseClassAttrBands(inputStream);
        parseCodeBands(inputStream);
    }
}
