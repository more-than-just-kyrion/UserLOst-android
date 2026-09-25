package org.apache.commons.compress.harmony.pack200;

/* JADX INFO: loaded from: classes3.dex */
public class CPDouble extends CPConstant<CPDouble> {
    private final double theDouble;

    public CPDouble(double d) {
        this.theDouble = d;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPDouble cPDouble) {
        return Double.compare(this.theDouble, cPDouble.theDouble);
    }

    public double getDouble() {
        return this.theDouble;
    }
}
