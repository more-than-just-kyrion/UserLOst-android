package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CPConstant extends ConstantPoolEntry {
    private final Object value;

    public CPConstant(byte b, Object obj, int i) {
        super(b, i);
        this.value = Objects.requireNonNull(obj, "value");
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Objects.equals(this.value, ((CPConstant) obj).value);
    }

    protected Object getValue() {
        return this.value;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return Objects.hash(this.value);
    }
}
