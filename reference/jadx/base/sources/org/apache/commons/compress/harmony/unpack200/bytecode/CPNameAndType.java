package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;
import org.apache.commons.compress.harmony.unpack200.SegmentUtils;

/* JADX INFO: loaded from: classes3.dex */
public class CPNameAndType extends ConstantPoolEntry {
    private int cachedHashCode;
    CPUTF8 descriptor;
    transient int descriptorIndex;
    private boolean hashCodeComputed;
    CPUTF8 name;
    transient int nameIndex;

    public CPNameAndType(CPUTF8 cputf8, CPUTF8 cputf9, int i) {
        super((byte) 12, i);
        this.name = (CPUTF8) Objects.requireNonNull(cputf8, "name");
        this.descriptor = (CPUTF8) Objects.requireNonNull(cputf9, "descriptor");
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPNameAndType cPNameAndType = (CPNameAndType) obj;
        return this.descriptor.equals(cPNameAndType.descriptor) && this.name.equals(cPNameAndType.name);
    }

    private void generateHashCode() {
        this.hashCodeComputed = true;
        this.cachedHashCode = ((this.descriptor.hashCode() + 31) * 31) + this.name.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.name, this.descriptor};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.hashCodeComputed) {
            generateHashCode();
        }
        return this.cachedHashCode;
    }

    public int invokeInterfaceCount() {
        return SegmentUtils.countInvokeInterfaceArgs(this.descriptor.underlyingString()) + 1;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.descriptorIndex = classConstantPool.indexOf(this.descriptor);
        this.nameIndex = classConstantPool.indexOf(this.name);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "NameAndType: " + this.name + "(" + this.descriptor + ")";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.nameIndex);
        dataOutputStream.writeShort(this.descriptorIndex);
    }
}
