package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Attribute extends ClassFileEntry {
    protected final CPUTF8 attributeName;
    private int attributeNameIndex;

    protected abstract int getLength();

    public boolean hasBCIRenumbering() {
        return false;
    }

    public boolean isSourceFileAttribute() {
        return false;
    }

    protected abstract void writeBody(DataOutputStream dataOutputStream) throws IOException;

    public Attribute(CPUTF8 cputf8) {
        this.attributeName = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void doWrite(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.attributeNameIndex);
        dataOutputStream.writeInt(getLength());
        writeBody(dataOutputStream);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Objects.equals(this.attributeName, ((Attribute) obj).attributeName);
    }

    protected CPUTF8 getAttributeName() {
        return this.attributeName;
    }

    protected int getLengthIncludingHeader() {
        return getLength() + 6;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{getAttributeName()};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return Objects.hash(this.attributeName);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.attributeNameIndex = classConstantPool.indexOf(this.attributeName);
    }
}
