package org.apache.commons.compress.harmony.pack200;

/* JADX INFO: loaded from: classes3.dex */
public class CPString extends CPConstant<CPString> {
    private final String string;
    private final CPUTF8 utf8;

    public CPString(CPUTF8 cputf8) {
        this.utf8 = cputf8;
        this.string = cputf8.getUnderlyingString();
    }

    @Override // java.lang.Comparable
    public int compareTo(CPString cPString) {
        return this.string.compareTo(cPString.string);
    }

    public int getIndexInCpUtf8() {
        return this.utf8.getIndex();
    }

    public String toString() {
        return this.string;
    }
}
