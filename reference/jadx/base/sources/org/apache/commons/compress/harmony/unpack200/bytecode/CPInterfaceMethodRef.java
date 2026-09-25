package org.apache.commons.compress.harmony.unpack200.bytecode;

/* JADX INFO: loaded from: classes3.dex */
public class CPInterfaceMethodRef extends CPRef {
    private int cachedHashCode;
    private boolean hashCodeComputed;

    public CPInterfaceMethodRef(CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super((byte) 11, cPClass, cPNameAndType, i);
    }

    private void generateHashCode() {
        this.hashCodeComputed = true;
        this.cachedHashCode = ((this.className.hashCode() + 31) * 31) + this.nameAndType.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.hashCodeComputed) {
            generateHashCode();
        }
        return this.cachedHashCode;
    }

    public int invokeInterfaceCount() {
        return this.nameAndType.invokeInterfaceCount();
    }
}
