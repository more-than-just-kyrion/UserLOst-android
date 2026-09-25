package org.apache.commons.compress.harmony.pack200;

/* JADX INFO: loaded from: classes3.dex */
public class CPLong extends CPConstant<CPLong> {
    private final long theLong;

    public CPLong(long j) {
        this.theLong = j;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPLong cPLong) {
        return Long.compare(this.theLong, cPLong.theLong);
    }

    public long getLong() {
        return this.theLong;
    }

    public String toString() {
        return "" + this.theLong;
    }
}
