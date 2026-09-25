package org.apache.commons.compress.harmony.unpack200;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ByteCode;
import org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionTableEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.OperandManager;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.math.Primes;

/* JADX INFO: loaded from: classes3.dex */
public class BcBands extends BandSet {
    private int[] bcByte;
    private int[] bcCaseCount;
    private int[] bcCaseValue;
    private int[] bcClassRef;
    private int[] bcDoubleRef;
    private int[][] bcEscByte;
    private int[] bcEscRef;
    private int[] bcEscRefSize;
    private int[] bcEscSize;
    private int[] bcFieldRef;
    private int[] bcFloatRef;
    private int[] bcIMethodRef;
    private int[] bcInitRef;
    private int[] bcIntRef;
    private int[] bcLabel;
    private int[] bcLocal;
    private int[] bcLongRef;
    private int[] bcMethodRef;
    private int[] bcShort;
    private int[] bcStringRef;
    private int[] bcSuperField;
    private int[] bcSuperMethod;
    private int[] bcThisField;
    private int[] bcThisMethod;
    private byte[][][] methodByteCodePacked;
    private List<Integer> wideByteCodes;

    private boolean endsWithLoad(int i) {
        return i >= 21 && i <= 25;
    }

    private boolean endsWithStore(int i) {
        return i >= 54 && i <= 58;
    }

    private boolean startsWithIf(int i) {
        return (i >= 153 && i <= 166) || i == 198 || i == 199;
    }

    public BcBands(Segment segment) {
        super(segment);
    }

    public int[] getBcByte() {
        return this.bcByte;
    }

    public int[] getBcCaseCount() {
        return this.bcCaseCount;
    }

    public int[] getBcCaseValue() {
        return this.bcCaseValue;
    }

    public int[] getBcClassRef() {
        return this.bcClassRef;
    }

    public int[] getBcDoubleRef() {
        return this.bcDoubleRef;
    }

    public int[] getBcFieldRef() {
        return this.bcFieldRef;
    }

    public int[] getBcFloatRef() {
        return this.bcFloatRef;
    }

    public int[] getBcIMethodRef() {
        return this.bcIMethodRef;
    }

    public int[] getBcInitRef() {
        return this.bcInitRef;
    }

    public int[] getBcIntRef() {
        return this.bcIntRef;
    }

    public int[] getBcLabel() {
        return this.bcLabel;
    }

    public int[] getBcLocal() {
        return this.bcLocal;
    }

    public int[] getBcLongRef() {
        return this.bcLongRef;
    }

    public int[] getBcMethodRef() {
        return this.bcMethodRef;
    }

    public int[] getBcShort() {
        return this.bcShort;
    }

    public int[] getBcStringRef() {
        return this.bcStringRef;
    }

    public int[] getBcSuperField() {
        return this.bcSuperField;
    }

    public int[] getBcSuperMethod() {
        return this.bcSuperMethod;
    }

    public int[] getBcThisField() {
        return this.bcThisField;
    }

    public int[] getBcThisMethod() {
        return this.bcThisMethod;
    }

    public byte[][][] getMethodByteCodePacked() {
        return this.methodByteCodePacked;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:61:0x014e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0151 A[PHI: r10
  0x0151: PHI (r10v15 int) = (r10v12 int), (r10v16 int), (r10v12 int), (r10v12 int) binds: [B:35:0x00ff, B:60:0x014b, B:38:0x0108, B:45:0x011c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x015d  */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x00fc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x00ff. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:36:0x0102. Please report as an issue. */
    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException {
        AttributeLayout attributeLayout;
        AttributeLayout attributeLayout2;
        int i;
        AttributeLayoutMap attributeDefinitionMap = this.segment.getAttrDefinitionBands().getAttributeDefinitionMap();
        int classCount = this.header.getClassCount();
        long[][] methodFlags = this.segment.getClassBands().getMethodFlags();
        AttributeLayout attributeLayout3 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_ABSTRACT, 2);
        AttributeLayout attributeLayout4 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_NATIVE, 2);
        this.methodByteCodePacked = new byte[classCount][][];
        ArrayList arrayList = new ArrayList();
        this.wideByteCodes = new ArrayList();
        int i2 = 0;
        int i3 = 0;
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
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i3 < classCount) {
            int length = methodFlags[i3].length;
            int i24 = classCount;
            this.methodByteCodePacked[i3] = new byte[length][];
            i8 = i8;
            int i25 = 0;
            while (i25 < length) {
                int i26 = i4;
                int i27 = i5;
                long j = methodFlags[i3][i25];
                if (attributeLayout3.matches(j) || attributeLayout4.matches(j)) {
                    attributeLayout = attributeLayout4;
                    attributeLayout2 = attributeLayout3;
                    i = length;
                    i4 = i26;
                    i5 = i27;
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        byte b = (byte) (inputStream.read() & 255);
                        attributeLayout = attributeLayout4;
                        if (b != -1) {
                            byteArrayOutputStream.write(b);
                            attributeLayout4 = attributeLayout;
                        } else {
                            this.methodByteCodePacked[i3][i25] = byteArrayOutputStream.toByteArray();
                            byte[] bArr = this.methodByteCodePacked[i3][i25];
                            int length2 = bArr.length;
                            int length3 = bArr.length;
                            int[] iArr = new int[length3];
                            int i28 = 0;
                            while (i28 < length3) {
                                iArr[i28] = this.methodByteCodePacked[i3][i25][i28] & 255;
                                i28++;
                                length3 = length3;
                            }
                            i4 = i26;
                            i5 = i27;
                            int i29 = 0;
                            while (true) {
                                byte[] bArr2 = this.methodByteCodePacked[i3][i25];
                                attributeLayout2 = attributeLayout3;
                                if (i29 < bArr2.length) {
                                    int i30 = bArr2[i29] & 255;
                                    int i31 = length;
                                    if (i30 == 132) {
                                        i7++;
                                        i5++;
                                    } else if (i30 == 192 || i30 == 193) {
                                        i13++;
                                    } else if (i30 != 196) {
                                        if (i30 == 197) {
                                            i5++;
                                        } else if (i30 == 253) {
                                            i23++;
                                        } else if (i30 != 254) {
                                            switch (i30) {
                                                case 16:
                                                    i5++;
                                                    break;
                                                case 17:
                                                    i6++;
                                                    break;
                                                case 18:
                                                case 19:
                                                    i12++;
                                                    break;
                                                case 20:
                                                    i10++;
                                                    break;
                                                default:
                                                    switch (i30) {
                                                        case CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384 /* 167 */:
                                                        case CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256 /* 168 */:
                                                            i8++;
                                                            break;
                                                        case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /* 169 */:
                                                            i7++;
                                                            break;
                                                        case CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 /* 170 */:
                                                            arrayList.add(Boolean.TRUE);
                                                            i4++;
                                                            i8++;
                                                            break;
                                                        case CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 /* 171 */:
                                                            arrayList.add(Boolean.FALSE);
                                                            i4++;
                                                            i8++;
                                                            break;
                                                        default:
                                                            switch (i30) {
                                                                case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256 /* 178 */:
                                                                case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384 /* 179 */:
                                                                case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256 /* 180 */:
                                                                case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384 /* 181 */:
                                                                    i14++;
                                                                    break;
                                                                case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256 /* 182 */:
                                                                case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384 /* 183 */:
                                                                case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /* 184 */:
                                                                    i15++;
                                                                    break;
                                                                case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384 /* 185 */:
                                                                    i16++;
                                                                    break;
                                                                default:
                                                                    switch (i30) {
                                                                        case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 /* 187 */:
                                                                        case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 /* 189 */:
                                                                            break;
                                                                        case 188:
                                                                            i5++;
                                                                            break;
                                                                        default:
                                                                            switch (i30) {
                                                                                case 200:
                                                                                case 201:
                                                                                    i8++;
                                                                                    break;
                                                                                case 202:
                                                                                case 203:
                                                                                case 204:
                                                                                case 205:
                                                                                case 209:
                                                                                case 210:
                                                                                case Primes.SMALL_FACTOR_LIMIT /* 211 */:
                                                                                case 212:
                                                                                    i17++;
                                                                                    break;
                                                                                case 206:
                                                                                case 207:
                                                                                case 208:
                                                                                case 213:
                                                                                case 214:
                                                                                case 215:
                                                                                    i19++;
                                                                                    break;
                                                                                case 216:
                                                                                case 217:
                                                                                case 218:
                                                                                case 219:
                                                                                case 223:
                                                                                case 224:
                                                                                case 225:
                                                                                case 226:
                                                                                    i18++;
                                                                                    break;
                                                                                case 220:
                                                                                case 221:
                                                                                case 222:
                                                                                case 227:
                                                                                case 228:
                                                                                case 229:
                                                                                    i20++;
                                                                                    break;
                                                                                case 230:
                                                                                case 231:
                                                                                case 232:
                                                                                    i21++;
                                                                                    break;
                                                                                case 233:
                                                                                case 236:
                                                                                    break;
                                                                                case 234:
                                                                                case 237:
                                                                                    i9++;
                                                                                    break;
                                                                                case 235:
                                                                                case 238:
                                                                                    i2++;
                                                                                    break;
                                                                                case 239:
                                                                                    i11++;
                                                                                    break;
                                                                                default:
                                                                                    if (endsWithLoad(i30) || endsWithStore(i30)) {
                                                                                        i7++;
                                                                                    } else if (startsWithIf(i30)) {
                                                                                        i8++;
                                                                                    }
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            i22++;
                                        }
                                        i13++;
                                    } else {
                                        int i32 = i29 + 1;
                                        int i33 = bArr2[i32] & 255;
                                        this.wideByteCodes.add(Integer.valueOf(i33));
                                        if (i33 == 132) {
                                            i7++;
                                            i6++;
                                        } else if (endsWithLoad(i33) || endsWithStore(i33) || i33 == 169) {
                                            i7++;
                                        } else {
                                            this.segment.log(2, "Found unhandled " + ByteCode.getByteCode(i33));
                                        }
                                        i29 = i32;
                                    }
                                    i29++;
                                    attributeLayout3 = attributeLayout2;
                                    length = i31;
                                } else {
                                    i = length;
                                }
                            }
                        }
                    }
                }
                i25++;
                attributeLayout4 = attributeLayout;
                methodFlags = methodFlags;
                attributeLayout3 = attributeLayout2;
                length = i;
            }
            i3++;
            classCount = i24;
            methodFlags = methodFlags;
        }
        int i34 = i8;
        this.bcCaseCount = decodeBandInt("bc_case_count", inputStream, Codec.UNSIGNED5, i4);
        int i35 = 0;
        for (int i36 = 0; i36 < this.bcCaseCount.length; i36++) {
            i35 = ((Boolean) arrayList.get(i36)).booleanValue() ? i35 + 1 : i35 + this.bcCaseCount[i36];
        }
        this.bcCaseValue = decodeBandInt("bc_case_value", inputStream, Codec.DELTA5, i35);
        int i37 = i34;
        for (int i38 = 0; i38 < i4; i38++) {
            i37 += this.bcCaseCount[i38];
        }
        this.bcByte = decodeBandInt("bc_byte", inputStream, Codec.BYTE1, i5);
        this.bcShort = decodeBandInt("bc_short", inputStream, Codec.DELTA5, i6);
        this.bcLocal = decodeBandInt("bc_local", inputStream, Codec.UNSIGNED5, i7);
        this.bcLabel = decodeBandInt("bc_label", inputStream, Codec.BRANCH5, i37);
        this.bcIntRef = decodeBandInt("bc_intref", inputStream, Codec.DELTA5, i9);
        this.bcFloatRef = decodeBandInt("bc_floatref", inputStream, Codec.DELTA5, i2);
        this.bcLongRef = decodeBandInt("bc_longref", inputStream, Codec.DELTA5, i10);
        this.bcDoubleRef = decodeBandInt("bc_doubleref", inputStream, Codec.DELTA5, i11);
        this.bcStringRef = decodeBandInt("bc_stringref", inputStream, Codec.DELTA5, i12);
        this.bcClassRef = decodeBandInt("bc_classref", inputStream, Codec.UNSIGNED5, i13);
        this.bcFieldRef = decodeBandInt("bc_fieldref", inputStream, Codec.DELTA5, i14);
        this.bcMethodRef = decodeBandInt("bc_methodref", inputStream, Codec.UNSIGNED5, i15);
        this.bcIMethodRef = decodeBandInt("bc_imethodref", inputStream, Codec.DELTA5, i16);
        this.bcThisField = decodeBandInt("bc_thisfield", inputStream, Codec.UNSIGNED5, i17);
        this.bcSuperField = decodeBandInt("bc_superfield", inputStream, Codec.UNSIGNED5, i18);
        this.bcThisMethod = decodeBandInt("bc_thismethod", inputStream, Codec.UNSIGNED5, i19);
        this.bcSuperMethod = decodeBandInt("bc_supermethod", inputStream, Codec.UNSIGNED5, i20);
        this.bcInitRef = decodeBandInt("bc_initref", inputStream, Codec.UNSIGNED5, i21);
        int i39 = i23;
        this.bcEscRef = decodeBandInt("bc_escref", inputStream, Codec.UNSIGNED5, i39);
        this.bcEscRefSize = decodeBandInt("bc_escrefsize", inputStream, Codec.UNSIGNED5, i39);
        this.bcEscSize = decodeBandInt("bc_escsize", inputStream, Codec.UNSIGNED5, i22);
        this.bcEscByte = decodeBandInt("bc_escbyte", inputStream, Codec.BYTE1, this.bcEscSize);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() throws Pack200Exception {
        int[] iArr;
        String[][] strArr;
        AttributeLayout attributeLayout;
        AttributeLayout attributeLayout2;
        ArrayList<List<Attribute>> arrayList;
        List<Attribute> list;
        List<Attribute> list2;
        int classCount = this.header.getClassCount();
        long[][] methodFlags = this.segment.getClassBands().getMethodFlags();
        int[] codeMaxNALocals = this.segment.getClassBands().getCodeMaxNALocals();
        int[] codeMaxStack = this.segment.getClassBands().getCodeMaxStack();
        List[][] methodAttributes = this.segment.getClassBands().getMethodAttributes();
        String[][] methodDescr = this.segment.getClassBands().getMethodDescr();
        AttributeLayoutMap attributeDefinitionMap = this.segment.getAttrDefinitionBands().getAttributeDefinitionMap();
        AttributeLayout attributeLayout3 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_ABSTRACT, 2);
        AttributeLayout attributeLayout4 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_NATIVE, 2);
        AttributeLayout attributeLayout5 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_STATIC, 2);
        int size = this.wideByteCodes.size();
        int[] iArr2 = new int[size];
        for (int i = 0; i < size; i++) {
            iArr2[i] = this.wideByteCodes.get(i).intValue();
        }
        OperandManager operandManager = new OperandManager(this.bcCaseCount, this.bcCaseValue, this.bcByte, this.bcShort, this.bcLocal, this.bcLabel, this.bcIntRef, this.bcFloatRef, this.bcLongRef, this.bcDoubleRef, this.bcStringRef, this.bcClassRef, this.bcFieldRef, this.bcMethodRef, this.bcIMethodRef, this.bcThisField, this.bcSuperField, this.bcThisMethod, this.bcSuperMethod, this.bcInitRef, iArr2);
        operandManager.setSegment(this.segment);
        ArrayList<List<Attribute>> orderedCodeAttributes = this.segment.getClassBands().getOrderedCodeAttributes();
        int[] codeHandlerCount = this.segment.getClassBands().getCodeHandlerCount();
        int[][] codeHandlerStartP = this.segment.getClassBands().getCodeHandlerStartP();
        int[][] codeHandlerEndPO = this.segment.getClassBands().getCodeHandlerEndPO();
        int[][] codeHandlerCatchPO = this.segment.getClassBands().getCodeHandlerCatchPO();
        int[][] codeHandlerClassRCN = this.segment.getClassBands().getCodeHandlerClassRCN();
        ArrayList<List<Attribute>> arrayList2 = orderedCodeAttributes;
        boolean zHasAllCodeFlags = this.segment.getSegmentHeader().getOptions().hasAllCodeFlags();
        boolean[] codeHasAttributes = this.segment.getClassBands().getCodeHasAttributes();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < classCount) {
            int i5 = classCount;
            int length = methodFlags[i2].length;
            int[][] iArr3 = codeHandlerEndPO;
            int[][] iArr4 = codeHandlerCatchPO;
            int i6 = i3;
            int i7 = i4;
            int i8 = 0;
            while (i8 < length) {
                int i9 = length;
                long[][] jArr = methodFlags;
                long j = methodFlags[i2][i8];
                if (attributeLayout3.matches(j) || attributeLayout4.matches(j)) {
                    iArr = codeMaxStack;
                    strArr = methodDescr;
                    attributeLayout = attributeLayout5;
                    attributeLayout2 = attributeLayout3;
                    arrayList = arrayList2;
                    i7 = i7;
                } else {
                    int i10 = codeMaxStack[i6];
                    int i11 = codeMaxNALocals[i6];
                    if (!attributeLayout5.matches(j)) {
                        i11++;
                    }
                    int iCountInvokeInterfaceArgs = i11 + SegmentUtils.countInvokeInterfaceArgs(methodDescr[i2][i8]);
                    String[] cpClass = this.segment.getCpBands().getCpClass();
                    operandManager.setCurrentClass(cpClass[this.segment.getClassBands().getClassThisInts()[i2]]);
                    operandManager.setSuperClass(cpClass[this.segment.getClassBands().getClassSuperInts()[i2]]);
                    ArrayList arrayList3 = new ArrayList();
                    if (codeHandlerCount != null) {
                        int i12 = 0;
                        while (i12 < codeHandlerCount[i6]) {
                            int i13 = codeHandlerClassRCN[i6][i12] - 1;
                            int[] iArr5 = codeMaxStack;
                            arrayList3.add(new ExceptionTableEntry(codeHandlerStartP[i6][i12], iArr3[i6][i12], iArr4[i6][i12], i13 != -1 ? this.segment.getCpBands().cpClassValue(i13) : null));
                            i12++;
                            codeMaxStack = iArr5;
                            methodDescr = methodDescr;
                            attributeLayout5 = attributeLayout5;
                            attributeLayout3 = attributeLayout3;
                        }
                    }
                    iArr = codeMaxStack;
                    strArr = methodDescr;
                    attributeLayout = attributeLayout5;
                    attributeLayout2 = attributeLayout3;
                    CodeAttribute codeAttribute = new CodeAttribute(i10, iCountInvokeInterfaceArgs, this.methodByteCodePacked[i2][i8], this.segment, operandManager, arrayList3);
                    List<Attribute> list3 = methodAttributes[i2][i8];
                    int i14 = 0;
                    for (Attribute attribute : list3) {
                        if (!(attribute instanceof NewAttribute) || ((NewAttribute) attribute).getLayoutIndex() >= 15) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                    list3.add(i14, codeAttribute);
                    codeAttribute.renumber(codeAttribute.byteCodeOffsets);
                    if (zHasAllCodeFlags) {
                        arrayList = arrayList2;
                        list2 = arrayList.get(i6);
                    } else {
                        arrayList = arrayList2;
                        if (codeHasAttributes[i6]) {
                            int i15 = i7;
                            list = arrayList.get(i15);
                            i7 = i15 + 1;
                        } else {
                            list = Collections.EMPTY_LIST;
                        }
                        list2 = list;
                    }
                    for (Attribute attribute2 : list2) {
                        codeAttribute.addAttribute(attribute2);
                        if (attribute2.hasBCIRenumbering()) {
                            ((BCIRenumberedAttribute) attribute2).renumber(codeAttribute.byteCodeOffsets);
                        }
                    }
                    i6++;
                }
                i8++;
                arrayList2 = arrayList;
                methodFlags = jArr;
                length = i9;
                codeMaxNALocals = codeMaxNALocals;
                codeMaxStack = iArr;
                methodDescr = strArr;
                attributeLayout5 = attributeLayout;
                attributeLayout3 = attributeLayout2;
            }
            i2++;
            i4 = i7;
            i3 = i6;
            classCount = i5;
            codeHandlerCatchPO = iArr4;
            codeHandlerEndPO = iArr3;
            codeMaxNALocals = codeMaxNALocals;
        }
    }
}
