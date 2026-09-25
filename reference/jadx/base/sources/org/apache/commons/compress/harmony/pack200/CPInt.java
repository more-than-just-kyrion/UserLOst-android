package org.apache.commons.compress.harmony.pack200;

/* JADX INFO: loaded from: classes3.dex */
public class CPInt extends CPConstant<CPInt> {
    private final int theInt;

    public CPInt(int i) {
        this.theInt = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPInt cPInt) {
        return Integer.compare(this.theInt, cPInt.theInt);
    }

    public int getInt() {
        return this.theInt;
    }
}
