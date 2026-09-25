package org.apache.commons.compress.harmony.unpack200.bytecode;

import androidx.core.os.EnvironmentCompat;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CPRef extends ConstantPoolEntry {
    protected String cachedToString;
    CPClass className;
    transient int classNameIndex;
    protected CPNameAndType nameAndType;
    transient int nameAndTypeIndex;

    public CPRef(byte b, CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super(b, i);
        this.className = (CPClass) Objects.requireNonNull(cPClass, "className");
        this.nameAndType = (CPNameAndType) Objects.requireNonNull(cPNameAndType, "descriptor");
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || hashCode() != obj.hashCode()) {
            return false;
        }
        CPRef cPRef = (CPRef) obj;
        return this.className.equals(cPRef.className) && this.nameAndType.equals(cPRef.nameAndType);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.className, this.nameAndType};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.nameAndTypeIndex = classConstantPool.indexOf(this.nameAndType);
        this.classNameIndex = classConstantPool.indexOf(this.className);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        String str;
        if (this.cachedToString == null) {
            if (getTag() == 9) {
                str = "FieldRef";
            } else if (getTag() == 10) {
                str = "MethoddRef";
            } else if (getTag() == 11) {
                str = "InterfaceMethodRef";
            } else {
                str = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            this.cachedToString = str + ": " + this.className + "#" + this.nameAndType;
        }
        return this.cachedToString;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.classNameIndex);
        dataOutputStream.writeShort(this.nameAndTypeIndex);
    }
}
