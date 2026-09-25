package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes3.dex */
public class MetadataBandGroup extends BandSet {
    public static final int CONTEXT_CLASS = 0;
    public static final int CONTEXT_FIELD = 1;
    public static final int CONTEXT_METHOD = 2;
    public List<String> T;
    public IntList anno_N;
    public List<CPConstant<?>> caseD_KD;
    public List<CPConstant<?>> caseF_KF;
    public List<CPConstant<?>> caseI_KI;
    public List<CPConstant<?>> caseJ_KJ;
    public IntList casearray_N;
    public List<CPSignature> casec_RS;
    public List<CPUTF8> caseec_RU;
    public List<CPSignature> caseet_RS;
    public List<CPUTF8> cases_RU;
    private final int context;
    private final CpBands cpBands;
    public List<CPUTF8> name_RU;
    public List<CPUTF8> nestname_RU;
    public IntList nestpair_N;
    public List<CPSignature> nesttype_RS;
    private int numBackwardsCalls;
    public IntList pair_N;
    public IntList param_NB;
    private final String type;
    public List<CPSignature> type_RS;

    public MetadataBandGroup(String str, int i, CpBands cpBands, SegmentHeader segmentHeader, int i2) {
        super(i2, segmentHeader);
        this.param_NB = new IntList();
        this.anno_N = new IntList();
        this.type_RS = new ArrayList();
        this.pair_N = new IntList();
        this.name_RU = new ArrayList();
        this.T = new ArrayList();
        this.caseI_KI = new ArrayList();
        this.caseD_KD = new ArrayList();
        this.caseF_KF = new ArrayList();
        this.caseJ_KJ = new ArrayList();
        this.casec_RS = new ArrayList();
        this.caseet_RS = new ArrayList();
        this.caseec_RU = new ArrayList();
        this.cases_RU = new ArrayList();
        this.casearray_N = new IntList();
        this.nesttype_RS = new ArrayList();
        this.nestpair_N = new IntList();
        this.nestname_RU = new ArrayList();
        this.type = str;
        this.cpBands = cpBands;
        this.context = i;
    }

    public void addAnnotation(String str, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        this.type_RS.add(this.cpBands.getCPSignature(str));
        this.pair_N.add(list.size());
        list.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2086x38f307eb((String) obj);
            }
        });
        Iterator<Object> it = list3.iterator();
        for (String str2 : list2) {
            this.T.add(str2);
            str2.hashCode();
            switch (str2) {
                case "B":
                case "C":
                case "I":
                case "S":
                case "Z":
                    this.caseI_KI.add(this.cpBands.getConstant(it.next()));
                    break;
                case "D":
                    this.caseD_KD.add(this.cpBands.getConstant(it.next()));
                    break;
                case "F":
                    this.caseF_KF.add(this.cpBands.getConstant(it.next()));
                    break;
                case "J":
                    this.caseJ_KJ.add(this.cpBands.getConstant(it.next()));
                    break;
                case "c":
                    this.casec_RS.add(this.cpBands.getCPSignature(nextString(it)));
                    break;
                case "e":
                    this.caseet_RS.add(this.cpBands.getCPSignature(nextString(it)));
                    this.caseec_RU.add(this.cpBands.getCPUtf8(nextString(it)));
                    break;
                case "s":
                    this.cases_RU.add(this.cpBands.getCPUtf8(nextString(it)));
                    break;
            }
        }
        Iterator<Integer> it2 = list4.iterator();
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            this.casearray_N.add(iIntValue);
            this.numBackwardsCalls += iIntValue;
        }
        list5.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2087x2c828c2c((String) obj);
            }
        });
        list6.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2088x2012106d((String) obj);
            }
        });
        for (Integer num : list7) {
            this.nestpair_N.add(num.intValue());
            this.numBackwardsCalls += num.intValue();
        }
    }

    /* JADX INFO: renamed from: lambda$addAnnotation$0$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2086x38f307eb(String str) {
        this.name_RU.add(this.cpBands.getCPUtf8(str));
    }

    /* JADX INFO: renamed from: lambda$addAnnotation$1$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2087x2c828c2c(String str) {
        this.nesttype_RS.add(this.cpBands.getCPSignature(str));
    }

    /* JADX INFO: renamed from: lambda$addAnnotation$2$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2088x2012106d(String str) {
        this.nestname_RU.add(this.cpBands.getCPUtf8(str));
    }

    public void addParameterAnnotation(int i, int[] iArr, IntList intList, List<String> list, List<String> list2, List<String> list3, List<Object> list4, List<Integer> list5, List<String> list6, List<String> list7, List<Integer> list8) {
        this.param_NB.add(i);
        for (int i2 : iArr) {
            this.anno_N.add(i2);
        }
        this.pair_N.addAll(intList);
        list.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2089x334022ef((String) obj);
            }
        });
        list2.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2090x26cfa730((String) obj);
            }
        });
        Iterator<Object> it = list4.iterator();
        for (String str : list3) {
            this.T.add(str);
            str.hashCode();
            switch (str) {
                case "B":
                case "C":
                case "I":
                case "S":
                case "Z":
                    this.caseI_KI.add(this.cpBands.getConstant(it.next()));
                    break;
                case "D":
                    this.caseD_KD.add(this.cpBands.getConstant(it.next()));
                    break;
                case "F":
                    this.caseF_KF.add(this.cpBands.getConstant(it.next()));
                    break;
                case "J":
                    this.caseJ_KJ.add(this.cpBands.getConstant(it.next()));
                    break;
                case "c":
                    this.casec_RS.add(this.cpBands.getCPSignature(nextString(it)));
                    break;
                case "e":
                    this.caseet_RS.add(this.cpBands.getCPSignature(nextString(it)));
                    this.caseec_RU.add(this.cpBands.getCPUtf8(nextString(it)));
                    break;
                case "s":
                    this.cases_RU.add(this.cpBands.getCPUtf8(nextString(it)));
                    break;
            }
        }
        Iterator<Integer> it2 = list5.iterator();
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            this.casearray_N.add(iIntValue);
            this.numBackwardsCalls += iIntValue;
        }
        list6.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2091x1a5f2b71((String) obj);
            }
        });
        list7.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2092xdeeafb2((String) obj);
            }
        });
        for (Integer num : list8) {
            this.nestpair_N.add(num.intValue());
            this.numBackwardsCalls += num.intValue();
        }
    }

    /* JADX INFO: renamed from: lambda$addParameterAnnotation$3$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2089x334022ef(String str) {
        this.type_RS.add(this.cpBands.getCPSignature(str));
    }

    /* JADX INFO: renamed from: lambda$addParameterAnnotation$4$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2090x26cfa730(String str) {
        this.name_RU.add(this.cpBands.getCPUtf8(str));
    }

    /* JADX INFO: renamed from: lambda$addParameterAnnotation$5$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2091x1a5f2b71(String str) {
        this.nesttype_RS.add(this.cpBands.getCPSignature(str));
    }

    /* JADX INFO: renamed from: lambda$addParameterAnnotation$6$org-apache-commons-compress-harmony-pack200-MetadataBandGroup, reason: not valid java name */
    /* synthetic */ void m2092xdeeafb2(String str) {
        this.nestname_RU.add(this.cpBands.getCPUtf8(str));
    }

    public boolean hasContent() {
        return this.type_RS.size() > 0;
    }

    public void incrementAnnoN() {
        IntList intList = this.anno_N;
        intList.increment(intList.size() - 1);
    }

    public void newEntryInAnnoN() {
        this.anno_N.add(1);
    }

    private String nextString(Iterator<Object> it) {
        return (String) it.next();
    }

    public int numBackwardsCalls() {
        return this.numBackwardsCalls;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException {
        String str;
        PackingUtils.log("Writing metadata band group...");
        if (hasContent()) {
            int i = this.context;
            if (i == 0) {
                str = "Class";
            } else if (i == 1) {
                str = "Field";
            } else {
                str = "Method";
            }
            if (!this.type.equals("AD")) {
                if (this.type.indexOf(80) != -1) {
                    byte[] bArrEncodeBandInt = encodeBandInt(str + "_" + this.type + " param_NB", this.param_NB.toArray(), Codec.BYTE1);
                    outputStream.write(bArrEncodeBandInt);
                    PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from " + str + "_" + this.type + " anno_N[" + this.param_NB.size() + "]");
                }
                byte[] bArrEncodeBandInt2 = encodeBandInt(str + "_" + this.type + " anno_N", this.anno_N.toArray(), Codec.UNSIGNED5);
                outputStream.write(bArrEncodeBandInt2);
                PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from " + str + "_" + this.type + " anno_N[" + this.anno_N.size() + "]");
                byte[] bArrEncodeBandInt3 = encodeBandInt(str + "_" + this.type + " type_RS", cpEntryListToArray(this.type_RS), Codec.UNSIGNED5);
                outputStream.write(bArrEncodeBandInt3);
                PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from " + str + "_" + this.type + " type_RS[" + this.type_RS.size() + "]");
                byte[] bArrEncodeBandInt4 = encodeBandInt(str + "_" + this.type + " pair_N", this.pair_N.toArray(), Codec.UNSIGNED5);
                outputStream.write(bArrEncodeBandInt4);
                PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from " + str + "_" + this.type + " pair_N[" + this.pair_N.size() + "]");
                byte[] bArrEncodeBandInt5 = encodeBandInt(str + "_" + this.type + " name_RU", cpEntryListToArray(this.name_RU), Codec.UNSIGNED5);
                outputStream.write(bArrEncodeBandInt5);
                PackingUtils.log("Wrote " + bArrEncodeBandInt5.length + " bytes from " + str + "_" + this.type + " name_RU[" + this.name_RU.size() + "]");
            }
            byte[] bArrEncodeBandInt6 = encodeBandInt(str + "_" + this.type + " T", tagListToArray(this.T), Codec.BYTE1);
            outputStream.write(bArrEncodeBandInt6);
            PackingUtils.log("Wrote " + bArrEncodeBandInt6.length + " bytes from " + str + "_" + this.type + " T[" + this.T.size() + "]");
            byte[] bArrEncodeBandInt7 = encodeBandInt(str + "_" + this.type + " caseI_KI", cpEntryListToArray(this.caseI_KI), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt7);
            PackingUtils.log("Wrote " + bArrEncodeBandInt7.length + " bytes from " + str + "_" + this.type + " caseI_KI[" + this.caseI_KI.size() + "]");
            byte[] bArrEncodeBandInt8 = encodeBandInt(str + "_" + this.type + " caseD_KD", cpEntryListToArray(this.caseD_KD), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt8);
            PackingUtils.log("Wrote " + bArrEncodeBandInt8.length + " bytes from " + str + "_" + this.type + " caseD_KD[" + this.caseD_KD.size() + "]");
            byte[] bArrEncodeBandInt9 = encodeBandInt(str + "_" + this.type + " caseF_KF", cpEntryListToArray(this.caseF_KF), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt9);
            PackingUtils.log("Wrote " + bArrEncodeBandInt9.length + " bytes from " + str + "_" + this.type + " caseF_KF[" + this.caseF_KF.size() + "]");
            byte[] bArrEncodeBandInt10 = encodeBandInt(str + "_" + this.type + " caseJ_KJ", cpEntryListToArray(this.caseJ_KJ), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt10);
            PackingUtils.log("Wrote " + bArrEncodeBandInt10.length + " bytes from " + str + "_" + this.type + " caseJ_KJ[" + this.caseJ_KJ.size() + "]");
            byte[] bArrEncodeBandInt11 = encodeBandInt(str + "_" + this.type + " casec_RS", cpEntryListToArray(this.casec_RS), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt11);
            PackingUtils.log("Wrote " + bArrEncodeBandInt11.length + " bytes from " + str + "_" + this.type + " casec_RS[" + this.casec_RS.size() + "]");
            byte[] bArrEncodeBandInt12 = encodeBandInt(str + "_" + this.type + " caseet_RS", cpEntryListToArray(this.caseet_RS), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt12);
            PackingUtils.log("Wrote " + bArrEncodeBandInt12.length + " bytes from " + str + "_" + this.type + " caseet_RS[" + this.caseet_RS.size() + "]");
            byte[] bArrEncodeBandInt13 = encodeBandInt(str + "_" + this.type + " caseec_RU", cpEntryListToArray(this.caseec_RU), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt13);
            PackingUtils.log("Wrote " + bArrEncodeBandInt13.length + " bytes from " + str + "_" + this.type + " caseec_RU[" + this.caseec_RU.size() + "]");
            byte[] bArrEncodeBandInt14 = encodeBandInt(str + "_" + this.type + " cases_RU", cpEntryListToArray(this.cases_RU), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt14);
            PackingUtils.log("Wrote " + bArrEncodeBandInt14.length + " bytes from " + str + "_" + this.type + " cases_RU[" + this.cases_RU.size() + "]");
            byte[] bArrEncodeBandInt15 = encodeBandInt(str + "_" + this.type + " casearray_N", this.casearray_N.toArray(), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt15);
            PackingUtils.log("Wrote " + bArrEncodeBandInt15.length + " bytes from " + str + "_" + this.type + " casearray_N[" + this.casearray_N.size() + "]");
            byte[] bArrEncodeBandInt16 = encodeBandInt(str + "_" + this.type + " nesttype_RS", cpEntryListToArray(this.nesttype_RS), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt16);
            PackingUtils.log("Wrote " + bArrEncodeBandInt16.length + " bytes from " + str + "_" + this.type + " nesttype_RS[" + this.nesttype_RS.size() + "]");
            byte[] bArrEncodeBandInt17 = encodeBandInt(str + "_" + this.type + " nestpair_N", this.nestpair_N.toArray(), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt17);
            PackingUtils.log("Wrote " + bArrEncodeBandInt17.length + " bytes from " + str + "_" + this.type + " nestpair_N[" + this.nestpair_N.size() + "]");
            byte[] bArrEncodeBandInt18 = encodeBandInt(str + "_" + this.type + " nestname_RU", cpEntryListToArray(this.nestname_RU), Codec.UNSIGNED5);
            outputStream.write(bArrEncodeBandInt18);
            PackingUtils.log("Wrote " + bArrEncodeBandInt18.length + " bytes from " + str + "_" + this.type + " nestname_RU[" + this.nestname_RU.size() + "]");
        }
    }

    public void removeLatest() {
        IntList intList = this.anno_N;
        int iRemove = intList.remove(intList.size() - 1);
        for (int i = 0; i < iRemove; i++) {
            List<CPSignature> list = this.type_RS;
            list.remove(list.size() - 1);
            IntList intList2 = this.pair_N;
            int iRemove2 = intList2.remove(intList2.size() - 1);
            for (int i2 = 0; i2 < iRemove2; i2++) {
                removeOnePair();
            }
        }
    }

    private void removeOnePair() {
        List<String> list = this.T;
        String strRemove = list.remove(list.size() - 1);
        strRemove.hashCode();
        int i = 0;
        switch (strRemove) {
            case "@":
                List<CPSignature> list2 = this.nesttype_RS;
                list2.remove(list2.size() - 1);
                IntList intList = this.nestpair_N;
                int iRemove = intList.remove(intList.size() - 1);
                this.numBackwardsCalls -= iRemove;
                while (i < iRemove) {
                    removeOnePair();
                    i++;
                }
                break;
            case "B":
            case "C":
            case "I":
            case "S":
            case "Z":
                List<CPConstant<?>> list3 = this.caseI_KI;
                list3.remove(list3.size() - 1);
                break;
            case "D":
                List<CPConstant<?>> list4 = this.caseD_KD;
                list4.remove(list4.size() - 1);
                break;
            case "F":
                List<CPConstant<?>> list5 = this.caseF_KF;
                list5.remove(list5.size() - 1);
                break;
            case "J":
                List<CPConstant<?>> list6 = this.caseJ_KJ;
                list6.remove(list6.size() - 1);
                break;
            case "[":
                IntList intList2 = this.casearray_N;
                int iRemove2 = intList2.remove(intList2.size() - 1);
                this.numBackwardsCalls -= iRemove2;
                while (i < iRemove2) {
                    removeOnePair();
                    i++;
                }
                break;
            case "e":
                List<CPSignature> list7 = this.caseet_RS;
                list7.remove(list7.size() - 1);
                this.caseec_RU.remove(this.caseet_RS.size() - 1);
                break;
            case "s":
                List<CPUTF8> list8 = this.cases_RU;
                list8.remove(list8.size() - 1);
                break;
        }
    }

    private int[] tagListToArray(List<String> list) {
        return list.stream().mapToInt(new ToIntFunction() { // from class: org.apache.commons.compress.harmony.pack200.MetadataBandGroup$$ExternalSyntheticLambda0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((String) obj).charAt(0);
            }
        }).toArray();
    }
}
