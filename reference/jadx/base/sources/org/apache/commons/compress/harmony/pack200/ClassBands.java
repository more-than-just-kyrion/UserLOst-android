package org.apache.commons.compress.harmony.pack200;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import org.objectweb.asm.Label;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class ClassBands extends BandSet {
    private static final long[] EMPTY_LONG_ARRAY = new long[0];
    private boolean anySyntheticClasses;
    private boolean anySyntheticFields;
    private boolean anySyntheticMethods;
    private final AttributeDefinitionBands attrBands;
    private final List<NewAttributeBands> classAttributeBands;
    private final List<ConstantPoolEntry> classEnclosingMethodClass;
    private final List<ConstantPoolEntry> classEnclosingMethodDesc;
    private final IntList classFileVersionMajor;
    private final IntList classFileVersionMinor;
    private List<CPUTF8> classInnerClassesNameRUN;
    private List<CPClass> classInnerClassesOuterRCN;
    private final Map<CPClass, Set<CPClass>> classReferencesInnerClass;
    private final List<CPSignature> classSignature;
    private final List<CPUTF8> classSourceFile;
    private int[] class_InnerClasses_F;
    private int[] class_InnerClasses_N;
    private CPClass[] class_InnerClasses_RC;
    private final MetadataBandGroup class_RIA_bands;
    private final MetadataBandGroup class_RVA_bands;
    private int[] class_attr_calls;
    private final int[] class_field_count;
    private final long[] class_flags;
    private final CPClass[][] class_interface;
    private final int[] class_interface_count;
    private final int[] class_method_count;
    private final CPClass[] class_super;
    private final CPClass[] class_this;
    private final List<NewAttributeBands> codeAttributeBands;
    private final List<Long> codeFlags;
    private final List codeHandlerCatchPO;
    private final List<CPClass> codeHandlerClass;
    private final IntList codeHandlerCount;
    private final List codeHandlerEndPO;
    private final List codeHandlerStartP;
    private int[] codeHeaders;
    private final List codeLineNumberTableBciP;
    private final IntList codeLineNumberTableLine;
    private final IntList codeLineNumberTableN;
    private final List codeLocalVariableTableBciP;
    private final IntList codeLocalVariableTableN;
    private final List<ConstantPoolEntry> codeLocalVariableTableNameRU;
    private final IntList codeLocalVariableTableSlot;
    private final List codeLocalVariableTableSpanO;
    private final List<ConstantPoolEntry> codeLocalVariableTableTypeRS;
    private final List codeLocalVariableTypeTableBciP;
    private final IntList codeLocalVariableTypeTableN;
    private final List<ConstantPoolEntry> codeLocalVariableTypeTableNameRU;
    private final IntList codeLocalVariableTypeTableSlot;
    private final List codeLocalVariableTypeTableSpanO;
    private final List<ConstantPoolEntry> codeLocalVariableTypeTableTypeRS;
    private final IntList codeMaxLocals;
    private final IntList codeMaxStack;
    private int[] code_attr_calls;
    private final CpBands cpBands;
    private final List<NewAttributeBands> fieldAttributeBands;
    private final List<CPConstant<?>> fieldConstantValueKQ;
    private final List<CPSignature> fieldSignature;
    private final MetadataBandGroup field_RIA_bands;
    private final MetadataBandGroup field_RVA_bands;
    private int[] field_attr_calls;
    private final CPNameAndType[][] field_descr;
    private final long[][] field_flags;
    private int index;
    private final int[] major_versions;
    private final List<NewAttributeBands> methodAttributeBands;
    private final List<CPClass> methodExceptionClasses;
    private final IntList methodExceptionNumber;
    private final List<CPSignature> methodSignature;
    private final MetadataBandGroup method_AD_bands;
    private final MetadataBandGroup method_RIA_bands;
    private final MetadataBandGroup method_RIPA_bands;
    private final MetadataBandGroup method_RVA_bands;
    private final MetadataBandGroup method_RVPA_bands;
    private int[] method_attr_calls;
    private final CPNameAndType[][] method_descr;
    private final long[][] method_flags;
    private int numMethodArgs;
    private final Segment segment;
    private final boolean stripDebug;
    private final List<CPNameAndType> tempFieldDesc;
    private final List<Long> tempFieldFlags;
    private final List<CPNameAndType> tempMethodDesc;
    private final List<Long> tempMethodFlags;
    private TempParamAnnotation tempMethodRIPA;
    private TempParamAnnotation tempMethodRVPA;

    private static final class TempParamAnnotation {
        int[] annoN;
        int numParams;
        IntList pairN = new IntList();
        List<String> typeRS = new ArrayList();
        List<String> nameRU = new ArrayList();
        List<String> tags = new ArrayList();
        List<Object> values = new ArrayList();
        List<Integer> caseArrayN = new ArrayList();
        List<String> nestTypeRS = new ArrayList();
        List<String> nestNameRU = new ArrayList();
        List<Integer> nestPairN = new ArrayList();

        TempParamAnnotation(int i) {
            this.numParams = i;
            this.annoN = new int[i];
        }

        void addParameterAnnotation(int i, String str, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
            int[] iArr = this.annoN;
            iArr[i] = iArr[i] + 1;
            this.typeRS.add(str);
            this.pairN.add(list.size());
            this.nameRU.addAll(list);
            this.tags.addAll(list2);
            this.values.addAll(list3);
            this.caseArrayN.addAll(list4);
            this.nestTypeRS.addAll(list5);
            this.nestNameRU.addAll(list6);
            this.nestPairN.addAll(list7);
        }
    }

    protected static int countArgs(String str) {
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(41);
        if (iIndexOf == -1 || iIndexOf2 == -1 || iIndexOf2 < iIndexOf) {
            throw new IllegalArgumentException("No arguments");
        }
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = iIndexOf + 1; i2 < iIndexOf2; i2++) {
            char cCharAt = str.charAt(i2);
            if (z && cCharAt == ';') {
                z = false;
                z2 = false;
            } else if (!z && cCharAt == 'L') {
                i++;
                z = true;
            } else if (cCharAt == '[') {
                z2 = true;
            } else if (!z) {
                if (z2) {
                    i++;
                    z2 = false;
                } else {
                    i = (cCharAt == 'D' || cCharAt == 'J') ? i + 2 : i + 1;
                }
            }
        }
        return i;
    }

    public ClassBands(Segment segment, int i, int i2, boolean z) throws IOException {
        super(i2, segment.getSegmentHeader());
        this.classSourceFile = new ArrayList();
        this.classEnclosingMethodClass = new ArrayList();
        this.classEnclosingMethodDesc = new ArrayList();
        this.classSignature = new ArrayList();
        this.classFileVersionMinor = new IntList();
        this.classFileVersionMajor = new IntList();
        this.fieldConstantValueKQ = new ArrayList();
        this.fieldSignature = new ArrayList();
        this.methodSignature = new ArrayList();
        this.methodExceptionNumber = new IntList();
        this.methodExceptionClasses = new ArrayList();
        this.codeMaxStack = new IntList();
        this.codeMaxLocals = new IntList();
        this.codeHandlerCount = new IntList();
        this.codeHandlerStartP = new ArrayList();
        this.codeHandlerEndPO = new ArrayList();
        this.codeHandlerCatchPO = new ArrayList();
        this.codeHandlerClass = new ArrayList();
        this.codeFlags = new ArrayList();
        this.codeLineNumberTableN = new IntList();
        this.codeLineNumberTableBciP = new ArrayList();
        this.codeLineNumberTableLine = new IntList();
        this.codeLocalVariableTableN = new IntList();
        this.codeLocalVariableTableBciP = new ArrayList();
        this.codeLocalVariableTableSpanO = new ArrayList();
        this.codeLocalVariableTableNameRU = new ArrayList();
        this.codeLocalVariableTableTypeRS = new ArrayList();
        this.codeLocalVariableTableSlot = new IntList();
        this.codeLocalVariableTypeTableN = new IntList();
        this.codeLocalVariableTypeTableBciP = new ArrayList();
        this.codeLocalVariableTypeTableSpanO = new ArrayList();
        this.codeLocalVariableTypeTableNameRU = new ArrayList();
        this.codeLocalVariableTypeTableTypeRS = new ArrayList();
        this.codeLocalVariableTypeTableSlot = new IntList();
        this.classAttributeBands = new ArrayList();
        this.methodAttributeBands = new ArrayList();
        this.fieldAttributeBands = new ArrayList();
        this.codeAttributeBands = new ArrayList();
        this.tempFieldFlags = new ArrayList();
        this.tempFieldDesc = new ArrayList();
        this.tempMethodFlags = new ArrayList();
        this.tempMethodDesc = new ArrayList();
        this.classReferencesInnerClass = new HashMap();
        this.stripDebug = z;
        this.segment = segment;
        this.cpBands = segment.getCpBands();
        this.attrBands = segment.getAttrBands();
        this.class_this = new CPClass[i];
        this.class_super = new CPClass[i];
        this.class_interface_count = new int[i];
        this.class_interface = new CPClass[i][];
        this.class_field_count = new int[i];
        this.class_method_count = new int[i];
        this.field_descr = new CPNameAndType[i][];
        this.field_flags = new long[i][];
        this.method_descr = new CPNameAndType[i][];
        this.method_flags = new long[i][];
        for (int i3 = 0; i3 < i; i3++) {
            long[][] jArr = this.field_flags;
            long[] jArr2 = EMPTY_LONG_ARRAY;
            jArr[i3] = jArr2;
            this.method_flags[i3] = jArr2;
        }
        this.major_versions = new int[i];
        this.class_flags = new long[i];
        this.class_RVA_bands = new MetadataBandGroup("RVA", 0, this.cpBands, this.segmentHeader, i2);
        this.class_RIA_bands = new MetadataBandGroup("RIA", 0, this.cpBands, this.segmentHeader, i2);
        this.field_RVA_bands = new MetadataBandGroup("RVA", 1, this.cpBands, this.segmentHeader, i2);
        this.field_RIA_bands = new MetadataBandGroup("RIA", 1, this.cpBands, this.segmentHeader, i2);
        this.method_RVA_bands = new MetadataBandGroup("RVA", 2, this.cpBands, this.segmentHeader, i2);
        this.method_RIA_bands = new MetadataBandGroup("RIA", 2, this.cpBands, this.segmentHeader, i2);
        this.method_RVPA_bands = new MetadataBandGroup("RVPA", 2, this.cpBands, this.segmentHeader, i2);
        this.method_RIPA_bands = new MetadataBandGroup("RIPA", 2, this.cpBands, this.segmentHeader, i2);
        this.method_AD_bands = new MetadataBandGroup("AD", 2, this.cpBands, this.segmentHeader, i2);
        createNewAttributeBands();
    }

    public void addAnnotation(int i, String str, boolean z, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        if (i == 0) {
            if (z) {
                this.class_RVA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
                if ((this.class_flags[this.index] & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) != 0) {
                    this.class_RVA_bands.incrementAnnoN();
                    return;
                }
                this.class_RVA_bands.newEntryInAnnoN();
                long[] jArr = this.class_flags;
                int i2 = this.index;
                jArr[i2] = jArr[i2] | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                return;
            }
            this.class_RIA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            if ((this.class_flags[this.index] & 4194304) != 0) {
                this.class_RIA_bands.incrementAnnoN();
                return;
            }
            this.class_RIA_bands.newEntryInAnnoN();
            long[] jArr2 = this.class_flags;
            int i3 = this.index;
            jArr2[i3] = jArr2[i3] | 4194304;
            return;
        }
        if (i == 1) {
            if (z) {
                this.field_RVA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
                List<Long> list8 = this.tempFieldFlags;
                Long lRemove = list8.remove(list8.size() - 1);
                if ((lRemove.intValue() & 2097152) != 0) {
                    this.field_RVA_bands.incrementAnnoN();
                } else {
                    this.field_RVA_bands.newEntryInAnnoN();
                }
                this.tempFieldFlags.add(Long.valueOf(lRemove.intValue() | 2097152));
                return;
            }
            this.field_RIA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            List<Long> list9 = this.tempFieldFlags;
            Long lRemove2 = list9.remove(list9.size() - 1);
            if ((lRemove2.intValue() & 4194304) != 0) {
                this.field_RIA_bands.incrementAnnoN();
            } else {
                this.field_RIA_bands.newEntryInAnnoN();
            }
            this.tempFieldFlags.add(Long.valueOf(lRemove2.intValue() | 4194304));
            return;
        }
        if (i != 2) {
            return;
        }
        if (z) {
            this.method_RVA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            List<Long> list10 = this.tempMethodFlags;
            Long lRemove3 = list10.remove(list10.size() - 1);
            if ((lRemove3.intValue() & 2097152) != 0) {
                this.method_RVA_bands.incrementAnnoN();
            } else {
                this.method_RVA_bands.newEntryInAnnoN();
            }
            this.tempMethodFlags.add(Long.valueOf(lRemove3.intValue() | 2097152));
            return;
        }
        this.method_RIA_bands.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
        List<Long> list11 = this.tempMethodFlags;
        Long lRemove4 = list11.remove(list11.size() - 1);
        if ((lRemove4.intValue() & 4194304) != 0) {
            this.method_RIA_bands.incrementAnnoN();
        } else {
            this.method_RIA_bands.newEntryInAnnoN();
        }
        this.tempMethodFlags.add(Long.valueOf(lRemove4.intValue() | 4194304));
    }

    public void addAnnotationDefault(List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        this.method_AD_bands.addAnnotation(null, list, list2, list3, list4, list5, list6, list7);
        List<Long> list8 = this.tempMethodFlags;
        this.tempMethodFlags.add(Long.valueOf(list8.remove(list8.size() - 1).longValue() | 33554432));
    }

    public void addClass(int i, int i2, String str, String str2, String str3, final String[] strArr) {
        this.class_this[this.index] = this.cpBands.getCPClass(str);
        this.class_super[this.index] = this.cpBands.getCPClass(str3);
        int[] iArr = this.class_interface_count;
        int i3 = this.index;
        iArr[i3] = strArr.length;
        CPClass[][] cPClassArr = this.class_interface;
        CPClass[] cPClassArr2 = new CPClass[strArr.length];
        cPClassArr[i3] = cPClassArr2;
        Arrays.setAll(cPClassArr2, new IntFunction() { // from class: org.apache.commons.compress.harmony.pack200.ClassBands$$ExternalSyntheticLambda0
            @Override // java.util.function.IntFunction
            public final Object apply(int i4) {
                return this.f$0.m2084xbe859155(strArr, i4);
            }
        });
        int[] iArr2 = this.major_versions;
        int i4 = this.index;
        iArr2[i4] = i;
        this.class_flags[i4] = i2;
        if (!this.anySyntheticClasses && (i2 & 4096) != 0 && this.segment.getCurrentClassReader().hasSyntheticAttributes()) {
            this.cpBands.addCPUtf8("Synthetic");
            this.anySyntheticClasses = true;
        }
        if (str2 != null) {
            long[] jArr = this.class_flags;
            int i5 = this.index;
            jArr[i5] = jArr[i5] | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            this.classSignature.add(this.cpBands.getCPSignature(str2));
        }
    }

    /* JADX INFO: renamed from: lambda$addClass$0$org-apache-commons-compress-harmony-pack200-ClassBands, reason: not valid java name */
    /* synthetic */ CPClass m2084xbe859155(String[] strArr, int i) {
        return this.cpBands.getCPClass(strArr[i]);
    }

    public void addClassAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.classAttributeBands) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                long[] jArr = this.class_flags;
                int i = this.index;
                jArr[i] = jArr[i] | ((long) (1 << flagIndex));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addCode() {
        this.codeHandlerCount.add(0);
        if (this.stripDebug) {
            return;
        }
        this.codeFlags.add(4L);
        this.codeLocalVariableTableN.add(0);
    }

    public void addCodeAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.codeAttributeBands) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.codeFlags;
                this.codeFlags.add(Long.valueOf(list.remove(list.size() - 1).longValue() | ((long) (1 << flagIndex))));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addEnclosingMethod(String str, String str2, String str3) {
        long[] jArr = this.class_flags;
        int i = this.index;
        jArr[i] = jArr[i] | PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        this.classEnclosingMethodClass.add(this.cpBands.getCPClass(str));
        this.classEnclosingMethodDesc.add(str2 == null ? null : this.cpBands.getCPNameAndType(str2, str3));
    }

    public void addField(int i, String str, String str2, String str3, Object obj) {
        int i2 = i & 65535;
        this.tempFieldDesc.add(this.cpBands.getCPNameAndType(str, str2));
        if (str3 != null) {
            this.fieldSignature.add(this.cpBands.getCPSignature(str3));
            i2 |= 524288;
        }
        if (obj != null) {
            this.fieldConstantValueKQ.add(this.cpBands.getConstant(obj));
            i2 |= 131072;
        }
        if (!this.anySyntheticFields && (i2 & 4096) != 0 && this.segment.getCurrentClassReader().hasSyntheticAttributes()) {
            this.cpBands.addCPUtf8("Synthetic");
            this.anySyntheticFields = true;
        }
        this.tempFieldFlags.add(Long.valueOf(i2));
    }

    public void addFieldAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.fieldAttributeBands) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.tempFieldFlags;
                this.tempFieldFlags.add(Long.valueOf(list.remove(list.size() - 1).longValue() | ((long) (1 << flagIndex))));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addHandler(Label label, Label label2, Label label3, String str) {
        IntList intList = this.codeHandlerCount;
        this.codeHandlerCount.add(intList.remove(intList.size() - 1) + 1);
        this.codeHandlerStartP.add(label);
        this.codeHandlerEndPO.add(label2);
        this.codeHandlerCatchPO.add(label3);
        this.codeHandlerClass.add(str == null ? null : this.cpBands.getCPClass(str));
    }

    public void addLineNumber(int i, Label label) {
        List<Long> list = this.codeFlags;
        Long l = list.get(list.size() - 1);
        if ((l.intValue() & 2) == 0) {
            List<Long> list2 = this.codeFlags;
            list2.remove(list2.size() - 1);
            this.codeFlags.add(Long.valueOf(l.intValue() | 2));
            this.codeLineNumberTableN.add(1);
        } else {
            IntList intList = this.codeLineNumberTableN;
            intList.increment(intList.size() - 1);
        }
        this.codeLineNumberTableLine.add(i);
        this.codeLineNumberTableBciP.add(label);
    }

    public void addLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        if (str3 != null) {
            List<Long> list = this.codeFlags;
            Long l = list.get(list.size() - 1);
            if ((l.intValue() & 8) == 0) {
                List<Long> list2 = this.codeFlags;
                list2.remove(list2.size() - 1);
                this.codeFlags.add(Long.valueOf(l.intValue() | 8));
                this.codeLocalVariableTypeTableN.add(1);
            } else {
                IntList intList = this.codeLocalVariableTypeTableN;
                intList.increment(intList.size() - 1);
            }
            this.codeLocalVariableTypeTableBciP.add(label);
            this.codeLocalVariableTypeTableSpanO.add(label2);
            this.codeLocalVariableTypeTableNameRU.add(this.cpBands.getCPUtf8(str));
            this.codeLocalVariableTypeTableTypeRS.add(this.cpBands.getCPSignature(str3));
            this.codeLocalVariableTypeTableSlot.add(i);
        }
        IntList intList2 = this.codeLocalVariableTableN;
        intList2.increment(intList2.size() - 1);
        this.codeLocalVariableTableBciP.add(label);
        this.codeLocalVariableTableSpanO.add(label2);
        this.codeLocalVariableTableNameRU.add(this.cpBands.getCPUtf8(str));
        this.codeLocalVariableTableTypeRS.add(this.cpBands.getCPSignature(str2));
        this.codeLocalVariableTableSlot.add(i);
    }

    public void addMaxStack(int i, int i2) {
        List<Long> list = this.tempMethodFlags;
        Long lValueOf = Long.valueOf(list.remove(list.size() - 1).intValue() | 131072);
        this.tempMethodFlags.add(lValueOf);
        this.codeMaxStack.add(i);
        if ((lValueOf.longValue() & 8) == 0) {
            i2--;
        }
        this.codeMaxLocals.add(i2 - this.numMethodArgs);
    }

    public void addMethod(int i, String str, String str2, String str3, String[] strArr) {
        this.tempMethodDesc.add(this.cpBands.getCPNameAndType(str, str2));
        if (str3 != null) {
            this.methodSignature.add(this.cpBands.getCPSignature(str3));
            i |= 524288;
        }
        if (strArr != null) {
            this.methodExceptionNumber.add(strArr.length);
            for (String str4 : strArr) {
                this.methodExceptionClasses.add(this.cpBands.getCPClass(str4));
            }
            i |= 262144;
        }
        if ((131072 & i) != 0) {
            i = (i & (-131073)) | 1048576;
        }
        this.tempMethodFlags.add(Long.valueOf(i));
        this.numMethodArgs = countArgs(str2);
        if (this.anySyntheticMethods || (i & 4096) == 0 || !this.segment.getCurrentClassReader().hasSyntheticAttributes()) {
            return;
        }
        this.cpBands.addCPUtf8("Synthetic");
        this.anySyntheticMethods = true;
    }

    public void addMethodAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.methodAttributeBands) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.tempMethodFlags;
                this.tempMethodFlags.add(Long.valueOf(list.remove(list.size() - 1).longValue() | ((long) (1 << flagIndex))));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addParameterAnnotation(int i, String str, boolean z, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        if (z) {
            if (this.tempMethodRVPA == null) {
                TempParamAnnotation tempParamAnnotation = new TempParamAnnotation(this.numMethodArgs);
                this.tempMethodRVPA = tempParamAnnotation;
                tempParamAnnotation.addParameterAnnotation(i, str, list, list2, list3, list4, list5, list6, list7);
            }
            List<Long> list8 = this.tempMethodFlags;
            this.tempMethodFlags.add(Long.valueOf(list8.remove(list8.size() - 1).longValue() | 8388608));
            return;
        }
        if (this.tempMethodRIPA == null) {
            TempParamAnnotation tempParamAnnotation2 = new TempParamAnnotation(this.numMethodArgs);
            this.tempMethodRIPA = tempParamAnnotation2;
            tempParamAnnotation2.addParameterAnnotation(i, str, list, list2, list3, list4, list5, list6, list7);
        }
        List<Long> list9 = this.tempMethodFlags;
        this.tempMethodFlags.add(Long.valueOf(list9.remove(list9.size() - 1).longValue() | 16777216));
    }

    public void addSourceFile(String str) {
        String string = this.class_this[this.index].toString();
        if (string.indexOf(36) != -1) {
            string = string.substring(0, string.indexOf(36));
        }
        if (str.equals(string.substring(string.lastIndexOf(47) + 1) + ".java")) {
            this.classSourceFile.add(null);
        } else {
            this.classSourceFile.add(this.cpBands.getCPUtf8(str));
        }
        long[] jArr = this.class_flags;
        int i = this.index;
        jArr[i] = jArr[i] | PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
    }

    private void createNewAttributeBands() throws IOException {
        Iterator<AttributeDefinitionBands.AttributeDefinition> it = this.attrBands.getClassAttributeLayouts().iterator();
        while (it.hasNext()) {
            this.classAttributeBands.add(new NewAttributeBands(this.effort, this.cpBands, this.segment.getSegmentHeader(), it.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it2 = this.attrBands.getMethodAttributeLayouts().iterator();
        while (it2.hasNext()) {
            this.methodAttributeBands.add(new NewAttributeBands(this.effort, this.cpBands, this.segment.getSegmentHeader(), it2.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it3 = this.attrBands.getFieldAttributeLayouts().iterator();
        while (it3.hasNext()) {
            this.fieldAttributeBands.add(new NewAttributeBands(this.effort, this.cpBands, this.segment.getSegmentHeader(), it3.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it4 = this.attrBands.getCodeAttributeLayouts().iterator();
        while (it4.hasNext()) {
            this.codeAttributeBands.add(new NewAttributeBands(this.effort, this.cpBands, this.segment.getSegmentHeader(), it4.next()));
        }
    }

    public void currentClassReferencesInnerClass(CPClass cPClass) {
        CPClass cPClass2;
        int i = this.index;
        CPClass[] cPClassArr = this.class_this;
        if (i >= cPClassArr.length || (cPClass2 = cPClassArr[i]) == null || cPClass2.equals(cPClass) || isInnerClassOf(cPClass2.toString(), cPClass)) {
            return;
        }
        this.classReferencesInnerClass.computeIfAbsent(cPClass2, new Function() { // from class: org.apache.commons.compress.harmony.pack200.ClassBands$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ClassBands.lambda$currentClassReferencesInnerClass$1((CPClass) obj);
            }
        }).add(cPClass);
    }

    static /* synthetic */ Set lambda$currentClassReferencesInnerClass$1(CPClass cPClass) {
        return new HashSet();
    }

    public void doBciRenumbering(IntList intList, Map<Label, Integer> map) {
        renumberBci(this.codeLineNumberTableBciP, intList, map);
        renumberBci(this.codeLocalVariableTableBciP, intList, map);
        renumberOffsetBci(this.codeLocalVariableTableBciP, this.codeLocalVariableTableSpanO, intList, map);
        renumberBci(this.codeLocalVariableTypeTableBciP, intList, map);
        renumberOffsetBci(this.codeLocalVariableTypeTableBciP, this.codeLocalVariableTypeTableSpanO, intList, map);
        renumberBci(this.codeHandlerStartP, intList, map);
        renumberOffsetBci(this.codeHandlerStartP, this.codeHandlerEndPO, intList, map);
        renumberDoubleOffsetBci(this.codeHandlerStartP, this.codeHandlerEndPO, this.codeHandlerCatchPO, intList, map);
        Iterator<NewAttributeBands> it = this.classAttributeBands.iterator();
        while (it.hasNext()) {
            it.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it2 = this.methodAttributeBands.iterator();
        while (it2.hasNext()) {
            it2.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it3 = this.fieldAttributeBands.iterator();
        while (it3.hasNext()) {
            it3.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it4 = this.codeAttributeBands.iterator();
        while (it4.hasNext()) {
            it4.next().renumberBci(intList, map);
        }
    }

    public void endOfClass() {
        int size = this.tempFieldDesc.size();
        int[] iArr = this.class_field_count;
        int i = this.index;
        iArr[i] = size;
        this.field_descr[i] = new CPNameAndType[size];
        this.field_flags[i] = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.field_descr[this.index][i2] = this.tempFieldDesc.get(i2);
            this.field_flags[this.index][i2] = this.tempFieldFlags.get(i2).longValue();
        }
        int size2 = this.tempMethodDesc.size();
        int[] iArr2 = this.class_method_count;
        int i3 = this.index;
        iArr2[i3] = size2;
        this.method_descr[i3] = new CPNameAndType[size2];
        this.method_flags[i3] = new long[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            this.method_descr[this.index][i4] = this.tempMethodDesc.get(i4);
            this.method_flags[this.index][i4] = this.tempMethodFlags.get(i4).longValue();
        }
        this.tempFieldDesc.clear();
        this.tempFieldFlags.clear();
        this.tempMethodDesc.clear();
        this.tempMethodFlags.clear();
        this.index++;
    }

    public void endOfMethod() {
        TempParamAnnotation tempParamAnnotation = this.tempMethodRVPA;
        if (tempParamAnnotation != null) {
            this.method_RVPA_bands.addParameterAnnotation(tempParamAnnotation.numParams, this.tempMethodRVPA.annoN, this.tempMethodRVPA.pairN, this.tempMethodRVPA.typeRS, this.tempMethodRVPA.nameRU, this.tempMethodRVPA.tags, this.tempMethodRVPA.values, this.tempMethodRVPA.caseArrayN, this.tempMethodRVPA.nestTypeRS, this.tempMethodRVPA.nestNameRU, this.tempMethodRVPA.nestPairN);
            this.tempMethodRVPA = null;
        }
        TempParamAnnotation tempParamAnnotation2 = this.tempMethodRIPA;
        if (tempParamAnnotation2 != null) {
            this.method_RIPA_bands.addParameterAnnotation(tempParamAnnotation2.numParams, this.tempMethodRIPA.annoN, this.tempMethodRIPA.pairN, this.tempMethodRIPA.typeRS, this.tempMethodRIPA.nameRU, this.tempMethodRIPA.tags, this.tempMethodRIPA.values, this.tempMethodRIPA.caseArrayN, this.tempMethodRIPA.nestTypeRS, this.tempMethodRIPA.nestNameRU, this.tempMethodRIPA.nestPairN);
            this.tempMethodRIPA = null;
        }
        if (this.codeFlags.size() > 0) {
            List<Long> list = this.codeFlags;
            long jLongValue = list.get(list.size() - 1).longValue();
            IntList intList = this.codeLocalVariableTableN;
            int i = intList.get(intList.size() - 1);
            if (jLongValue == 4 && i == 0) {
                IntList intList2 = this.codeLocalVariableTableN;
                intList2.remove(intList2.size() - 1);
                List<Long> list2 = this.codeFlags;
                list2.remove(list2.size() - 1);
                this.codeFlags.add(0L);
            }
        }
    }

    public void finaliseBands() {
        int i;
        int defaultMajorVersion = this.segmentHeader.getDefaultMajorVersion();
        int i2 = 0;
        while (true) {
            long[] jArr = this.class_flags;
            if (i2 >= jArr.length) {
                break;
            }
            int i3 = this.major_versions[i2];
            if (i3 != defaultMajorVersion) {
                jArr[i2] = jArr[i2] | 16777216;
                this.classFileVersionMajor.add(i3);
                this.classFileVersionMinor.add(0);
            }
            i2++;
        }
        this.codeHeaders = new int[this.codeHandlerCount.size()];
        int i4 = 0;
        for (int i5 = 0; i5 < this.codeHeaders.length; i5++) {
            int i6 = i5 - i4;
            int i7 = this.codeHandlerCount.get(i6);
            int i8 = this.codeMaxLocals.get(i6);
            int i9 = this.codeMaxStack.get(i6);
            if (i7 == 0) {
                int i10 = (i8 * 12) + i9 + 1;
                if (i10 < 145 && i9 < 12) {
                    this.codeHeaders[i5] = i10;
                }
            } else if (i7 == 1) {
                int i11 = (i8 * 8) + i9 + CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA;
                if (i11 < 209 && i9 < 8) {
                    this.codeHeaders[i5] = i11;
                }
            } else if (i7 == 2 && (i = (i8 * 7) + i9 + 209) < 256 && i9 < 7) {
                this.codeHeaders[i5] = i;
            }
            if (this.codeHeaders[i5] != 0) {
                this.codeHandlerCount.remove(i6);
                this.codeMaxLocals.remove(i6);
                this.codeMaxStack.remove(i6);
                i4++;
            } else if (!this.segment.getSegmentHeader().have_all_code_flags()) {
                this.codeFlags.add(0L);
            }
        }
        IntList intList = new IntList();
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        while (true) {
            CPClass[] cPClassArr = this.class_this;
            if (i12 >= cPClassArr.length) {
                break;
            }
            CPClass cPClass = cPClassArr[i12];
            Set<CPClass> set = this.classReferencesInnerClass.get(cPClass);
            if (set != null) {
                List<IcBands.IcTuple> innerClassesForOuter = this.segment.getIcBands().getInnerClassesForOuter(cPClass.toString());
                if (innerClassesForOuter != null) {
                    Iterator<IcBands.IcTuple> it = innerClassesForOuter.iterator();
                    while (it.hasNext()) {
                        set.remove(it.next().C);
                    }
                }
                Iterator<CPClass> it2 = set.iterator();
                int i13 = 0;
                while (it2.hasNext()) {
                    IcBands.IcTuple icTuple = this.segment.getIcBands().getIcTuple(it2.next());
                    if (icTuple != null && !icTuple.isAnonymous()) {
                        arrayList.add(icTuple);
                        i13++;
                    }
                }
                if (i13 != 0) {
                    intList.add(i13);
                    long[] jArr2 = this.class_flags;
                    jArr2[i12] = jArr2[i12] | 8388608;
                }
            }
            i12++;
        }
        this.class_InnerClasses_N = intList.toArray();
        this.class_InnerClasses_RC = new CPClass[arrayList.size()];
        this.class_InnerClasses_F = new int[arrayList.size()];
        this.classInnerClassesOuterRCN = new ArrayList();
        this.classInnerClassesNameRUN = new ArrayList();
        for (int i14 = 0; i14 < this.class_InnerClasses_RC.length; i14++) {
            IcBands.IcTuple icTuple2 = (IcBands.IcTuple) arrayList.get(i14);
            this.class_InnerClasses_RC[i14] = icTuple2.C;
            if (icTuple2.C2 == null && icTuple2.N == null) {
                this.class_InnerClasses_F[i14] = 0;
            } else {
                if (icTuple2.F == 0) {
                    this.class_InnerClasses_F[i14] = 65536;
                } else {
                    this.class_InnerClasses_F[i14] = icTuple2.F;
                }
                this.classInnerClassesOuterRCN.add(icTuple2.C2);
                this.classInnerClassesNameRUN.add(icTuple2.N);
            }
        }
        IntList intList2 = new IntList();
        IntList intList3 = new IntList();
        IntList intList4 = new IntList();
        IntList intList5 = new IntList();
        if (this.class_RVA_bands.hasContent()) {
            intList2.add(this.class_RVA_bands.numBackwardsCalls());
        }
        if (this.class_RIA_bands.hasContent()) {
            intList2.add(this.class_RIA_bands.numBackwardsCalls());
        }
        if (this.field_RVA_bands.hasContent()) {
            intList3.add(this.field_RVA_bands.numBackwardsCalls());
        }
        if (this.field_RIA_bands.hasContent()) {
            intList3.add(this.field_RIA_bands.numBackwardsCalls());
        }
        if (this.method_RVA_bands.hasContent()) {
            intList4.add(this.method_RVA_bands.numBackwardsCalls());
        }
        if (this.method_RIA_bands.hasContent()) {
            intList4.add(this.method_RIA_bands.numBackwardsCalls());
        }
        if (this.method_RVPA_bands.hasContent()) {
            intList4.add(this.method_RVPA_bands.numBackwardsCalls());
        }
        if (this.method_RIPA_bands.hasContent()) {
            intList4.add(this.method_RIPA_bands.numBackwardsCalls());
        }
        if (this.method_AD_bands.hasContent()) {
            intList4.add(this.method_AD_bands.numBackwardsCalls());
        }
        Comparator<? super NewAttributeBands> comparator = new Comparator() { // from class: org.apache.commons.compress.harmony.pack200.ClassBands$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ClassBands.lambda$finaliseBands$2((NewAttributeBands) obj, (NewAttributeBands) obj2);
            }
        };
        this.classAttributeBands.sort(comparator);
        this.methodAttributeBands.sort(comparator);
        this.fieldAttributeBands.sort(comparator);
        this.codeAttributeBands.sort(comparator);
        for (NewAttributeBands newAttributeBands : this.classAttributeBands) {
            if (newAttributeBands.isUsedAtLeastOnce()) {
                for (int i15 : newAttributeBands.numBackwardsCalls()) {
                    intList2.add(i15);
                }
            }
        }
        for (NewAttributeBands newAttributeBands2 : this.methodAttributeBands) {
            if (newAttributeBands2.isUsedAtLeastOnce()) {
                for (int i16 : newAttributeBands2.numBackwardsCalls()) {
                    intList4.add(i16);
                }
            }
        }
        for (NewAttributeBands newAttributeBands3 : this.fieldAttributeBands) {
            if (newAttributeBands3.isUsedAtLeastOnce()) {
                for (int i17 : newAttributeBands3.numBackwardsCalls()) {
                    intList3.add(i17);
                }
            }
        }
        for (NewAttributeBands newAttributeBands4 : this.codeAttributeBands) {
            if (newAttributeBands4.isUsedAtLeastOnce()) {
                for (int i18 : newAttributeBands4.numBackwardsCalls()) {
                    intList5.add(i18);
                }
            }
        }
        this.class_attr_calls = intList2.toArray();
        this.field_attr_calls = intList3.toArray();
        this.method_attr_calls = intList4.toArray();
        this.code_attr_calls = intList5.toArray();
    }

    static /* synthetic */ int lambda$finaliseBands$2(NewAttributeBands newAttributeBands, NewAttributeBands newAttributeBands2) {
        return newAttributeBands.getFlagIndex() - newAttributeBands2.getFlagIndex();
    }

    private int[] getInts(CPClass[] cPClassArr) {
        int length = cPClassArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            CPClass cPClass = cPClassArr[i];
            if (cPClass != null) {
                iArr[i] = cPClass.getIndex();
            }
        }
        return iArr;
    }

    public boolean isAnySyntheticClasses() {
        return this.anySyntheticClasses;
    }

    public boolean isAnySyntheticFields() {
        return this.anySyntheticFields;
    }

    public boolean isAnySyntheticMethods() {
        return this.anySyntheticMethods;
    }

    private boolean isInnerClass(String str) {
        return str.indexOf(36) != -1;
    }

    private boolean isInnerClassOf(String str, CPClass cPClass) {
        if (!isInnerClass(str)) {
            return false;
        }
        String strSubstring = str.substring(0, str.lastIndexOf(36));
        if (strSubstring.equals(cPClass.toString())) {
            return true;
        }
        return isInnerClassOf(strSubstring, cPClass);
    }

    public int numClassesProcessed() {
        return this.index;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException {
        PackingUtils.log("Writing class bands...");
        byte[] bArrEncodeBandInt = encodeBandInt("class_this", getInts(this.class_this), Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from class_this[" + this.class_this.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("class_super", getInts(this.class_super), Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from class_super[" + this.class_super.length + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("class_interface_count", this.class_interface_count, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from class_interface_count[" + this.class_interface_count.length + "]");
        int iSum = sum(this.class_interface_count);
        int[] iArr = new int[iSum];
        int i = 0;
        for (CPClass[] cPClassArr : this.class_interface) {
            if (cPClassArr != null) {
                for (CPClass cPClass : cPClassArr) {
                    iArr[i] = cPClass.getIndex();
                    i++;
                }
            }
        }
        byte[] bArrEncodeBandInt4 = encodeBandInt("class_interface", iArr, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from class_interface[" + iSum + "]");
        byte[] bArrEncodeBandInt5 = encodeBandInt("class_field_count", this.class_field_count, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt5);
        PackingUtils.log("Wrote " + bArrEncodeBandInt5.length + " bytes from class_field_count[" + this.class_field_count.length + "]");
        byte[] bArrEncodeBandInt6 = encodeBandInt("class_method_count", this.class_method_count, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt6);
        PackingUtils.log("Wrote " + bArrEncodeBandInt6.length + " bytes from class_method_count[" + this.class_method_count.length + "]");
        int iSum2 = sum(this.class_field_count);
        int[] iArr2 = new int[iSum2];
        int i2 = 0;
        for (int i3 = 0; i3 < this.index; i3++) {
            int i4 = 0;
            while (true) {
                CPNameAndType[] cPNameAndTypeArr = this.field_descr[i3];
                if (i4 < cPNameAndTypeArr.length) {
                    iArr2[i2] = cPNameAndTypeArr[i4].getIndex();
                    i2++;
                    i4++;
                }
            }
        }
        byte[] bArrEncodeBandInt7 = encodeBandInt("field_descr", iArr2, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt7);
        PackingUtils.log("Wrote " + bArrEncodeBandInt7.length + " bytes from field_descr[" + iSum2 + "]");
        writeFieldAttributeBands(outputStream);
        int iSum3 = sum(this.class_method_count);
        int[] iArr3 = new int[iSum3];
        int i5 = 0;
        for (int i6 = 0; i6 < this.index; i6++) {
            int i7 = 0;
            while (true) {
                CPNameAndType[] cPNameAndTypeArr2 = this.method_descr[i6];
                if (i7 < cPNameAndTypeArr2.length) {
                    iArr3[i5] = cPNameAndTypeArr2[i7].getIndex();
                    i5++;
                    i7++;
                }
            }
        }
        byte[] bArrEncodeBandInt8 = encodeBandInt("method_descr", iArr3, Codec.MDELTA5);
        outputStream.write(bArrEncodeBandInt8);
        PackingUtils.log("Wrote " + bArrEncodeBandInt8.length + " bytes from method_descr[" + iSum3 + "]");
        writeMethodAttributeBands(outputStream);
        writeClassAttributeBands(outputStream);
        writeCodeBands(outputStream);
    }

    public void removeCurrentClass() {
        long j = this.class_flags[this.index];
        long j2 = PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        if ((j & PlaybackStateCompat.ACTION_PREPARE_FROM_URI) != 0) {
            List<CPUTF8> list = this.classSourceFile;
            list.remove(list.size() - 1);
        }
        if ((this.class_flags[this.index] & PlaybackStateCompat.ACTION_SET_REPEAT_MODE) != 0) {
            List<ConstantPoolEntry> list2 = this.classEnclosingMethodClass;
            list2.remove(list2.size() - 1);
            List<ConstantPoolEntry> list3 = this.classEnclosingMethodDesc;
            list3.remove(list3.size() - 1);
        }
        long j3 = this.class_flags[this.index];
        long j4 = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
        if ((j3 & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) != 0) {
            List<CPSignature> list4 = this.classSignature;
            list4.remove(list4.size() - 1);
        }
        if ((this.class_flags[this.index] & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) != 0) {
            this.class_RVA_bands.removeLatest();
        }
        if ((this.class_flags[this.index] & 4194304) != 0) {
            this.class_RIA_bands.removeLatest();
        }
        Iterator<Long> it = this.tempFieldFlags.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if ((jLongValue & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) != 0) {
                List<CPSignature> list5 = this.fieldSignature;
                list5.remove(list5.size() - 1);
            }
            if ((jLongValue & PlaybackStateCompat.ACTION_PREPARE_FROM_URI) != 0) {
                List<CPConstant<?>> list6 = this.fieldConstantValueKQ;
                list6.remove(list6.size() - 1);
            }
            if ((jLongValue & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) != 0) {
                this.field_RVA_bands.removeLatest();
            }
            if ((jLongValue & 4194304) != 0) {
                this.field_RIA_bands.removeLatest();
            }
        }
        Iterator<Long> it2 = this.tempMethodFlags.iterator();
        while (it2.hasNext()) {
            long jLongValue2 = it2.next().longValue();
            if ((jLongValue2 & j4) != 0) {
                List<CPSignature> list7 = this.methodSignature;
                list7.remove(list7.size() - 1);
            }
            if ((jLongValue2 & PlaybackStateCompat.ACTION_SET_REPEAT_MODE) != 0) {
                IntList intList = this.methodExceptionNumber;
                int iRemove = intList.remove(intList.size() - 1);
                for (int i = 0; i < iRemove; i++) {
                    List<CPClass> list8 = this.methodExceptionClasses;
                    list8.remove(list8.size() - 1);
                }
            }
            if ((jLongValue2 & j2) != 0) {
                IntList intList2 = this.codeMaxLocals;
                intList2.remove(intList2.size() - 1);
                IntList intList3 = this.codeMaxStack;
                intList3.remove(intList3.size() - 1);
                IntList intList4 = this.codeHandlerCount;
                int iRemove2 = intList4.remove(intList4.size() - 1);
                for (int i2 = 0; i2 < iRemove2; i2++) {
                    int size = this.codeHandlerStartP.size() - 1;
                    this.codeHandlerStartP.remove(size);
                    this.codeHandlerEndPO.remove(size);
                    this.codeHandlerCatchPO.remove(size);
                    this.codeHandlerClass.remove(size);
                }
                if (!this.stripDebug) {
                    List<Long> list9 = this.codeFlags;
                    long jLongValue3 = list9.remove(list9.size() - 1).longValue();
                    IntList intList5 = this.codeLocalVariableTableN;
                    int iRemove3 = intList5.remove(intList5.size() - 1);
                    for (int i3 = 0; i3 < iRemove3; i3++) {
                        int size2 = this.codeLocalVariableTableBciP.size() - 1;
                        this.codeLocalVariableTableBciP.remove(size2);
                        this.codeLocalVariableTableSpanO.remove(size2);
                        this.codeLocalVariableTableNameRU.remove(size2);
                        this.codeLocalVariableTableTypeRS.remove(size2);
                        this.codeLocalVariableTableSlot.remove(size2);
                    }
                    if ((8 & jLongValue3) != 0) {
                        IntList intList6 = this.codeLocalVariableTypeTableN;
                        int iRemove4 = intList6.remove(intList6.size() - 1);
                        for (int i4 = 0; i4 < iRemove4; i4++) {
                            int size3 = this.codeLocalVariableTypeTableBciP.size() - 1;
                            this.codeLocalVariableTypeTableBciP.remove(size3);
                            this.codeLocalVariableTypeTableSpanO.remove(size3);
                            this.codeLocalVariableTypeTableNameRU.remove(size3);
                            this.codeLocalVariableTypeTableTypeRS.remove(size3);
                            this.codeLocalVariableTypeTableSlot.remove(size3);
                        }
                    }
                    if ((jLongValue3 & 2) != 0) {
                        IntList intList7 = this.codeLineNumberTableN;
                        int iRemove5 = intList7.remove(intList7.size() - 1);
                        for (int i5 = 0; i5 < iRemove5; i5++) {
                            int size4 = this.codeLineNumberTableBciP.size() - 1;
                            this.codeLineNumberTableBciP.remove(size4);
                            this.codeLineNumberTableLine.remove(size4);
                        }
                    }
                }
            }
            if ((jLongValue2 & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) != 0) {
                this.method_RVA_bands.removeLatest();
            }
            if ((jLongValue2 & 4194304) != 0) {
                this.method_RIA_bands.removeLatest();
            }
            if ((8388608 & jLongValue2) != 0) {
                this.method_RVPA_bands.removeLatest();
            }
            if ((16777216 & jLongValue2) != 0) {
                this.method_RIPA_bands.removeLatest();
            }
            if ((33554432 & jLongValue2) != 0) {
                this.method_AD_bands.removeLatest();
            }
            j2 = PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            j4 = PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
        }
        CPClass[] cPClassArr = this.class_this;
        int i6 = this.index;
        cPClassArr[i6] = null;
        this.class_super[i6] = null;
        this.class_interface_count[i6] = 0;
        this.class_interface[i6] = null;
        this.major_versions[i6] = 0;
        this.class_flags[i6] = 0;
        this.tempFieldDesc.clear();
        this.tempFieldFlags.clear();
        this.tempMethodDesc.clear();
        this.tempMethodFlags.clear();
        int i7 = this.index;
        if (i7 > 0) {
            this.index = i7 - 1;
        }
    }

    private void renumberBci(List<Integer> list, IntList intList, Map<Label, Integer> map) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Integer num = list.get(size);
            if (num instanceof Integer) {
                return;
            }
            if (num instanceof Label) {
                list.remove(size);
                list.add(size, Integer.valueOf(intList.get(map.get(num).intValue())));
            }
        }
    }

    private void renumberDoubleOffsetBci(List<Integer> list, List<Integer> list2, List<Object> list3, IntList intList, Map<Label, Integer> map) {
        for (int size = list3.size() - 1; size >= 0; size--) {
            Object obj = list3.get(size);
            if (obj instanceof Integer) {
                return;
            }
            if (obj instanceof Label) {
                list3.remove(size);
                list3.add(size, Integer.valueOf((intList.get(map.get(obj).intValue()) - list.get(size).intValue()) - list2.get(size).intValue()));
            }
        }
    }

    private void renumberOffsetBci(List<Integer> list, List<Integer> list2, IntList intList, Map<Label, Integer> map) {
        for (int size = list2.size() - 1; size >= 0; size--) {
            Integer num = list2.get(size);
            if (num instanceof Integer) {
                return;
            }
            if (num instanceof Label) {
                list2.remove(size);
                list2.add(size, Integer.valueOf(intList.get(map.get(num).intValue()) - list.get(size).intValue()));
            }
        }
    }

    private int sum(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }

    private void writeClassAttributeBands(OutputStream outputStream) throws IOException {
        byte[] bArrEncodeFlags = encodeFlags("class_flags", this.class_flags, Codec.UNSIGNED5, Codec.UNSIGNED5, this.segmentHeader.have_class_flags_hi());
        outputStream.write(bArrEncodeFlags);
        PackingUtils.log("Wrote " + bArrEncodeFlags.length + " bytes from class_flags[" + this.class_flags.length + "]");
        byte[] bArrEncodeBandInt = encodeBandInt("class_attr_calls", this.class_attr_calls, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from class_attr_calls[" + this.class_attr_calls.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("classSourceFile", cpEntryOrNullListToArray(this.classSourceFile), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from classSourceFile[" + this.classSourceFile.size() + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("class_enclosing_method_RC", cpEntryListToArray(this.classEnclosingMethodClass), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from class_enclosing_method_RC[" + this.classEnclosingMethodClass.size() + "]");
        byte[] bArrEncodeBandInt4 = encodeBandInt("class_EnclosingMethod_RDN", cpEntryOrNullListToArray(this.classEnclosingMethodDesc), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from class_EnclosingMethod_RDN[" + this.classEnclosingMethodDesc.size() + "]");
        byte[] bArrEncodeBandInt5 = encodeBandInt("class_Signature_RS", cpEntryListToArray(this.classSignature), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt5);
        PackingUtils.log("Wrote " + bArrEncodeBandInt5.length + " bytes from class_Signature_RS[" + this.classSignature.size() + "]");
        this.class_RVA_bands.pack(outputStream);
        this.class_RIA_bands.pack(outputStream);
        byte[] bArrEncodeBandInt6 = encodeBandInt("class_InnerClasses_N", this.class_InnerClasses_N, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt6);
        PackingUtils.log("Wrote " + bArrEncodeBandInt6.length + " bytes from class_InnerClasses_N[" + this.class_InnerClasses_N.length + "]");
        byte[] bArrEncodeBandInt7 = encodeBandInt("class_InnerClasses_RC", getInts(this.class_InnerClasses_RC), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt7);
        PackingUtils.log("Wrote " + bArrEncodeBandInt7.length + " bytes from class_InnerClasses_RC[" + this.class_InnerClasses_RC.length + "]");
        byte[] bArrEncodeBandInt8 = encodeBandInt("class_InnerClasses_F", this.class_InnerClasses_F, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt8);
        PackingUtils.log("Wrote " + bArrEncodeBandInt8.length + " bytes from class_InnerClasses_F[" + this.class_InnerClasses_F.length + "]");
        byte[] bArrEncodeBandInt9 = encodeBandInt("class_InnerClasses_outer_RCN", cpEntryOrNullListToArray(this.classInnerClassesOuterRCN), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt9);
        PackingUtils.log("Wrote " + bArrEncodeBandInt9.length + " bytes from class_InnerClasses_outer_RCN[" + this.classInnerClassesOuterRCN.size() + "]");
        byte[] bArrEncodeBandInt10 = encodeBandInt("class_InnerClasses_name_RUN", cpEntryOrNullListToArray(this.classInnerClassesNameRUN), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt10);
        PackingUtils.log("Wrote " + bArrEncodeBandInt10.length + " bytes from class_InnerClasses_name_RUN[" + this.classInnerClassesNameRUN.size() + "]");
        byte[] bArrEncodeBandInt11 = encodeBandInt("classFileVersionMinor", this.classFileVersionMinor.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt11);
        PackingUtils.log("Wrote " + bArrEncodeBandInt11.length + " bytes from classFileVersionMinor[" + this.classFileVersionMinor.size() + "]");
        byte[] bArrEncodeBandInt12 = encodeBandInt("classFileVersionMajor", this.classFileVersionMajor.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt12);
        PackingUtils.log("Wrote " + bArrEncodeBandInt12.length + " bytes from classFileVersionMajor[" + this.classFileVersionMajor.size() + "]");
        Iterator<NewAttributeBands> it = this.classAttributeBands.iterator();
        while (it.hasNext()) {
            it.next().pack(outputStream);
        }
    }

    private void writeCodeAttributeBands(OutputStream outputStream) throws IOException {
        byte[] bArrEncodeFlags = encodeFlags("codeFlags", longListToArray(this.codeFlags), Codec.UNSIGNED5, Codec.UNSIGNED5, this.segmentHeader.have_code_flags_hi());
        outputStream.write(bArrEncodeFlags);
        PackingUtils.log("Wrote " + bArrEncodeFlags.length + " bytes from codeFlags[" + this.codeFlags.size() + "]");
        byte[] bArrEncodeBandInt = encodeBandInt("code_attr_calls", this.code_attr_calls, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from code_attr_calls[" + this.code_attr_calls.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("code_LineNumberTable_N", this.codeLineNumberTableN.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from code_LineNumberTable_N[" + this.codeLineNumberTableN.size() + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("code_LineNumberTable_bci_P", integerListToArray(this.codeLineNumberTableBciP), Codec.BCI5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from code_LineNumberTable_bci_P[" + this.codeLineNumberTableBciP.size() + "]");
        byte[] bArrEncodeBandInt4 = encodeBandInt("code_LineNumberTable_line", this.codeLineNumberTableLine.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from code_LineNumberTable_line[" + this.codeLineNumberTableLine.size() + "]");
        byte[] bArrEncodeBandInt5 = encodeBandInt("code_LocalVariableTable_N", this.codeLocalVariableTableN.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt5);
        PackingUtils.log("Wrote " + bArrEncodeBandInt5.length + " bytes from code_LocalVariableTable_N[" + this.codeLocalVariableTableN.size() + "]");
        byte[] bArrEncodeBandInt6 = encodeBandInt("code_LocalVariableTable_bci_P", integerListToArray(this.codeLocalVariableTableBciP), Codec.BCI5);
        outputStream.write(bArrEncodeBandInt6);
        PackingUtils.log("Wrote " + bArrEncodeBandInt6.length + " bytes from code_LocalVariableTable_bci_P[" + this.codeLocalVariableTableBciP.size() + "]");
        byte[] bArrEncodeBandInt7 = encodeBandInt("code_LocalVariableTable_span_O", integerListToArray(this.codeLocalVariableTableSpanO), Codec.BRANCH5);
        outputStream.write(bArrEncodeBandInt7);
        PackingUtils.log("Wrote " + bArrEncodeBandInt7.length + " bytes from code_LocalVariableTable_span_O[" + this.codeLocalVariableTableSpanO.size() + "]");
        byte[] bArrEncodeBandInt8 = encodeBandInt("code_LocalVariableTable_name_RU", cpEntryListToArray(this.codeLocalVariableTableNameRU), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt8);
        PackingUtils.log("Wrote " + bArrEncodeBandInt8.length + " bytes from code_LocalVariableTable_name_RU[" + this.codeLocalVariableTableNameRU.size() + "]");
        byte[] bArrEncodeBandInt9 = encodeBandInt("code_LocalVariableTable_type_RS", cpEntryListToArray(this.codeLocalVariableTableTypeRS), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt9);
        PackingUtils.log("Wrote " + bArrEncodeBandInt9.length + " bytes from code_LocalVariableTable_type_RS[" + this.codeLocalVariableTableTypeRS.size() + "]");
        byte[] bArrEncodeBandInt10 = encodeBandInt("code_LocalVariableTable_slot", this.codeLocalVariableTableSlot.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt10);
        PackingUtils.log("Wrote " + bArrEncodeBandInt10.length + " bytes from code_LocalVariableTable_slot[" + this.codeLocalVariableTableSlot.size() + "]");
        byte[] bArrEncodeBandInt11 = encodeBandInt("code_LocalVariableTypeTable_N", this.codeLocalVariableTypeTableN.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt11);
        PackingUtils.log("Wrote " + bArrEncodeBandInt11.length + " bytes from code_LocalVariableTypeTable_N[" + this.codeLocalVariableTypeTableN.size() + "]");
        byte[] bArrEncodeBandInt12 = encodeBandInt("code_LocalVariableTypeTable_bci_P", integerListToArray(this.codeLocalVariableTypeTableBciP), Codec.BCI5);
        outputStream.write(bArrEncodeBandInt12);
        PackingUtils.log("Wrote " + bArrEncodeBandInt12.length + " bytes from code_LocalVariableTypeTable_bci_P[" + this.codeLocalVariableTypeTableBciP.size() + "]");
        byte[] bArrEncodeBandInt13 = encodeBandInt("code_LocalVariableTypeTable_span_O", integerListToArray(this.codeLocalVariableTypeTableSpanO), Codec.BRANCH5);
        outputStream.write(bArrEncodeBandInt13);
        PackingUtils.log("Wrote " + bArrEncodeBandInt13.length + " bytes from code_LocalVariableTypeTable_span_O[" + this.codeLocalVariableTypeTableSpanO.size() + "]");
        byte[] bArrEncodeBandInt14 = encodeBandInt("code_LocalVariableTypeTable_name_RU", cpEntryListToArray(this.codeLocalVariableTypeTableNameRU), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt14);
        PackingUtils.log("Wrote " + bArrEncodeBandInt14.length + " bytes from code_LocalVariableTypeTable_name_RU[" + this.codeLocalVariableTypeTableNameRU.size() + "]");
        byte[] bArrEncodeBandInt15 = encodeBandInt("code_LocalVariableTypeTable_type_RS", cpEntryListToArray(this.codeLocalVariableTypeTableTypeRS), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt15);
        PackingUtils.log("Wrote " + bArrEncodeBandInt15.length + " bytes from code_LocalVariableTypeTable_type_RS[" + this.codeLocalVariableTypeTableTypeRS.size() + "]");
        byte[] bArrEncodeBandInt16 = encodeBandInt("code_LocalVariableTypeTable_slot", this.codeLocalVariableTypeTableSlot.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt16);
        PackingUtils.log("Wrote " + bArrEncodeBandInt16.length + " bytes from code_LocalVariableTypeTable_slot[" + this.codeLocalVariableTypeTableSlot.size() + "]");
        Iterator<NewAttributeBands> it = this.codeAttributeBands.iterator();
        while (it.hasNext()) {
            it.next().pack(outputStream);
        }
    }

    private void writeCodeBands(OutputStream outputStream) throws IOException {
        byte[] bArrEncodeBandInt = encodeBandInt("codeHeaders", this.codeHeaders, Codec.BYTE1);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from codeHeaders[" + this.codeHeaders.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("codeMaxStack", this.codeMaxStack.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from codeMaxStack[" + this.codeMaxStack.size() + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("codeMaxLocals", this.codeMaxLocals.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from codeMaxLocals[" + this.codeMaxLocals.size() + "]");
        byte[] bArrEncodeBandInt4 = encodeBandInt("codeHandlerCount", this.codeHandlerCount.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from codeHandlerCount[" + this.codeHandlerCount.size() + "]");
        byte[] bArrEncodeBandInt5 = encodeBandInt("codeHandlerStartP", integerListToArray(this.codeHandlerStartP), Codec.BCI5);
        outputStream.write(bArrEncodeBandInt5);
        PackingUtils.log("Wrote " + bArrEncodeBandInt5.length + " bytes from codeHandlerStartP[" + this.codeHandlerStartP.size() + "]");
        byte[] bArrEncodeBandInt6 = encodeBandInt("codeHandlerEndPO", integerListToArray(this.codeHandlerEndPO), Codec.BRANCH5);
        outputStream.write(bArrEncodeBandInt6);
        PackingUtils.log("Wrote " + bArrEncodeBandInt6.length + " bytes from codeHandlerEndPO[" + this.codeHandlerEndPO.size() + "]");
        byte[] bArrEncodeBandInt7 = encodeBandInt("codeHandlerCatchPO", integerListToArray(this.codeHandlerCatchPO), Codec.BRANCH5);
        outputStream.write(bArrEncodeBandInt7);
        PackingUtils.log("Wrote " + bArrEncodeBandInt7.length + " bytes from codeHandlerCatchPO[" + this.codeHandlerCatchPO.size() + "]");
        byte[] bArrEncodeBandInt8 = encodeBandInt("codeHandlerClass", cpEntryOrNullListToArray(this.codeHandlerClass), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt8);
        PackingUtils.log("Wrote " + bArrEncodeBandInt8.length + " bytes from codeHandlerClass[" + this.codeHandlerClass.size() + "]");
        writeCodeAttributeBands(outputStream);
    }

    private void writeFieldAttributeBands(OutputStream outputStream) throws IOException {
        byte[] bArrEncodeFlags = encodeFlags("field_flags", this.field_flags, Codec.UNSIGNED5, Codec.UNSIGNED5, this.segmentHeader.have_field_flags_hi());
        outputStream.write(bArrEncodeFlags);
        PackingUtils.log("Wrote " + bArrEncodeFlags.length + " bytes from field_flags[" + this.field_flags.length + "]");
        byte[] bArrEncodeBandInt = encodeBandInt("field_attr_calls", this.field_attr_calls, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from field_attr_calls[" + this.field_attr_calls.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("fieldConstantValueKQ", cpEntryListToArray(this.fieldConstantValueKQ), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from fieldConstantValueKQ[" + this.fieldConstantValueKQ.size() + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("fieldSignature", cpEntryListToArray(this.fieldSignature), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from fieldSignature[" + this.fieldSignature.size() + "]");
        this.field_RVA_bands.pack(outputStream);
        this.field_RIA_bands.pack(outputStream);
        Iterator<NewAttributeBands> it = this.fieldAttributeBands.iterator();
        while (it.hasNext()) {
            it.next().pack(outputStream);
        }
    }

    private void writeMethodAttributeBands(OutputStream outputStream) throws IOException {
        byte[] bArrEncodeFlags = encodeFlags("method_flags", this.method_flags, Codec.UNSIGNED5, Codec.UNSIGNED5, this.segmentHeader.have_method_flags_hi());
        outputStream.write(bArrEncodeFlags);
        PackingUtils.log("Wrote " + bArrEncodeFlags.length + " bytes from method_flags[" + this.method_flags.length + "]");
        byte[] bArrEncodeBandInt = encodeBandInt("method_attr_calls", this.method_attr_calls, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from method_attr_calls[" + this.method_attr_calls.length + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("methodExceptionNumber", this.methodExceptionNumber.toArray(), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from methodExceptionNumber[" + this.methodExceptionNumber.size() + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("methodExceptionClasses", cpEntryListToArray(this.methodExceptionClasses), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from methodExceptionClasses[" + this.methodExceptionClasses.size() + "]");
        byte[] bArrEncodeBandInt4 = encodeBandInt("methodSignature", cpEntryListToArray(this.methodSignature), Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from methodSignature[" + this.methodSignature.size() + "]");
        this.method_RVA_bands.pack(outputStream);
        this.method_RIA_bands.pack(outputStream);
        this.method_RVPA_bands.pack(outputStream);
        this.method_RIPA_bands.pack(outputStream);
        this.method_AD_bands.pack(outputStream);
        Iterator<NewAttributeBands> it = this.methodAttributeBands.iterator();
        while (it.hasNext()) {
            it.next().pack(outputStream);
        }
    }
}
