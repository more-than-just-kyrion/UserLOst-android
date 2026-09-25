package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CPMethod extends CPMember {
    private int cachedHashCode;
    private boolean hashCodeComputed;

    public CPMethod(CPUTF8 cputf8, CPUTF8 cputf9, long j, List<Attribute> list) {
        super(cputf8, cputf9, j, list);
    }

    private void generateHashCode() {
        this.hashCodeComputed = true;
        this.cachedHashCode = ((this.name.hashCode() + 31) * 31) + this.descriptor.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPMember, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.hashCodeComputed) {
            generateHashCode();
        }
        return this.cachedHashCode;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPMember, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Method: " + this.name + "(" + this.descriptor + ")";
    }
}
