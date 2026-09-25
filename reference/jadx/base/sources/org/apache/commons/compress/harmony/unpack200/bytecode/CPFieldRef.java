package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CPFieldRef extends ConstantPoolEntry {
    private int cachedHashCode;
    CPClass className;
    transient int classNameIndex;
    private boolean hashCodeComputed;
    private final CPNameAndType nameAndType;
    transient int nameAndTypeIndex;

    public CPFieldRef(CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super((byte) 9, i);
        this.className = cPClass;
        this.nameAndType = cPNameAndType;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPFieldRef cPFieldRef = (CPFieldRef) obj;
        return Objects.equals(this.className, cPFieldRef.className) && Objects.equals(this.nameAndType, cPFieldRef.nameAndType);
    }

    private void generateHashCode() {
        this.hashCodeComputed = true;
        CPClass cPClass = this.className;
        int iHashCode = ((cPClass == null ? 0 : cPClass.hashCode()) + 31) * 31;
        CPNameAndType cPNameAndType = this.nameAndType;
        this.cachedHashCode = iHashCode + (cPNameAndType != null ? cPNameAndType.hashCode() : 0);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.className, this.nameAndType};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.hashCodeComputed) {
            generateHashCode();
        }
        return this.cachedHashCode;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.nameAndTypeIndex = classConstantPool.indexOf(this.nameAndType);
        this.classNameIndex = classConstantPool.indexOf(this.className);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "FieldRef: " + this.className + "#" + this.nameAndType;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.classNameIndex);
        dataOutputStream.writeShort(this.nameAndTypeIndex);
    }
}
