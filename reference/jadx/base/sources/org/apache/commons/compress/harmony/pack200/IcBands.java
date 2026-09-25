package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public class IcBands extends BandSet {
    private int bit16Count;
    private final CpBands cpBands;
    private final Set<IcTuple> innerClasses;
    private final Map<String, List<IcTuple>> outerToInner;

    static class IcTuple implements Comparable<IcTuple> {
        protected CPClass C;
        protected CPClass C2;
        protected int F;
        protected CPUTF8 N;

        IcTuple(CPClass cPClass, int i, CPClass cPClass2, CPUTF8 cputf8) {
            this.C = cPClass;
            this.F = i;
            this.C2 = cPClass2;
            this.N = cputf8;
        }

        @Override // java.lang.Comparable
        public int compareTo(IcTuple icTuple) {
            return this.C.compareTo(icTuple.C);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof IcTuple)) {
                return false;
            }
            IcTuple icTuple = (IcTuple) obj;
            return this.C.equals(icTuple.C) && this.F == icTuple.F && Objects.equals(this.C2, icTuple.C2) && Objects.equals(this.N, icTuple.N);
        }

        public boolean isAnonymous() {
            String string = this.C.toString();
            return Character.isDigit(string.substring(string.lastIndexOf(36) + 1).charAt(0));
        }

        public String toString() {
            return this.C.toString();
        }
    }

    public IcBands(SegmentHeader segmentHeader, CpBands cpBands, int i) {
        super(i, segmentHeader);
        this.innerClasses = new TreeSet();
        this.outerToInner = new HashMap();
        this.cpBands = cpBands;
    }

    public void addInnerClass(String str, String str2, String str3, int i) {
        if (str2 != null || str3 != null) {
            if (namesArePredictable(str, str2, str3)) {
                IcTuple icTuple = new IcTuple(this.cpBands.getCPClass(str), i, null, null);
                addToMap(str2, icTuple);
                this.innerClasses.add(icTuple);
                return;
            } else {
                IcTuple icTuple2 = new IcTuple(this.cpBands.getCPClass(str), i | 65536, this.cpBands.getCPClass(str2), this.cpBands.getCPUtf8(str3));
                if (this.innerClasses.add(icTuple2)) {
                    this.bit16Count++;
                    addToMap(str2, icTuple2);
                    return;
                }
                return;
            }
        }
        IcTuple icTuple3 = new IcTuple(this.cpBands.getCPClass(str), i, null, null);
        addToMap(getOuter(str), icTuple3);
        this.innerClasses.add(icTuple3);
    }

    private void addToMap(String str, IcTuple icTuple) {
        List<IcTuple> arrayList = this.outerToInner.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.outerToInner.put(str, arrayList);
        } else {
            Iterator<IcTuple> it = arrayList.iterator();
            while (it.hasNext()) {
                if (icTuple.equals(it.next())) {
                    return;
                }
            }
        }
        arrayList.add(icTuple);
    }

    public void finaliseBands() {
        this.segmentHeader.setIc_count(this.innerClasses.size());
    }

    public IcTuple getIcTuple(CPClass cPClass) {
        for (IcTuple icTuple : this.innerClasses) {
            if (icTuple.C.equals(cPClass)) {
                return icTuple;
            }
        }
        return null;
    }

    public List<IcTuple> getInnerClassesForOuter(String str) {
        return this.outerToInner.get(str);
    }

    private String getOuter(String str) {
        return str.substring(0, str.lastIndexOf(36));
    }

    private boolean namesArePredictable(String str, String str2, String str3) {
        return str.equals(new StringBuilder().append(str2).append('$').append(str3).toString()) && str3.indexOf(36) == -1;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException {
        PackingUtils.log("Writing internal class bands...");
        int size = this.innerClasses.size();
        int[] iArr = new int[size];
        int size2 = this.innerClasses.size();
        int[] iArr2 = new int[size2];
        int i = this.bit16Count;
        int[] iArr3 = new int[i];
        int[] iArr4 = new int[i];
        ArrayList arrayList = new ArrayList(this.innerClasses);
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            IcTuple icTuple = (IcTuple) arrayList.get(i3);
            iArr[i3] = icTuple.C.getIndex();
            iArr2[i3] = icTuple.F;
            if ((icTuple.F & 65536) != 0) {
                iArr3[i2] = icTuple.C2 == null ? 0 : icTuple.C2.getIndex() + 1;
                iArr4[i2] = icTuple.N == null ? 0 : icTuple.N.getIndex() + 1;
                i2++;
            }
        }
        byte[] bArrEncodeBandInt = encodeBandInt("ic_this_class", iArr, Codec.UDELTA5);
        outputStream.write(bArrEncodeBandInt);
        PackingUtils.log("Wrote " + bArrEncodeBandInt.length + " bytes from ic_this_class[" + size + "]");
        byte[] bArrEncodeBandInt2 = encodeBandInt("ic_flags", iArr2, Codec.UNSIGNED5);
        outputStream.write(bArrEncodeBandInt2);
        PackingUtils.log("Wrote " + bArrEncodeBandInt2.length + " bytes from ic_flags[" + size2 + "]");
        byte[] bArrEncodeBandInt3 = encodeBandInt("ic_outer_class", iArr3, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt3);
        PackingUtils.log("Wrote " + bArrEncodeBandInt3.length + " bytes from ic_outer_class[" + i + "]");
        byte[] bArrEncodeBandInt4 = encodeBandInt("ic_name", iArr4, Codec.DELTA5);
        outputStream.write(bArrEncodeBandInt4);
        PackingUtils.log("Wrote " + bArrEncodeBandInt4.length + " bytes from ic_name[" + i + "]");
    }
}
