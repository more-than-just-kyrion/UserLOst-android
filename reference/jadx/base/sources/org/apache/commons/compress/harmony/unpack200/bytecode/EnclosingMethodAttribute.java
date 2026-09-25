package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class EnclosingMethodAttribute extends Attribute {
    private static CPUTF8 attributeName;
    private int classIndex;
    private final CPClass cpClass;
    private final CPNameAndType method;
    private int methodIndex;

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        return 4;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        attributeName = cputf8;
    }

    public EnclosingMethodAttribute(CPClass cPClass, CPNameAndType cPNameAndType) {
        super(attributeName);
        this.cpClass = cPClass;
        this.method = cPNameAndType;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        CPNameAndType cPNameAndType = this.method;
        if (cPNameAndType != null) {
            return new ClassFileEntry[]{attributeName, this.cpClass, cPNameAndType};
        }
        return new ClassFileEntry[]{attributeName, this.cpClass};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.cpClass.resolve(classConstantPool);
        this.classIndex = classConstantPool.indexOf(this.cpClass);
        CPNameAndType cPNameAndType = this.method;
        if (cPNameAndType != null) {
            cPNameAndType.resolve(classConstantPool);
            this.methodIndex = classConstantPool.indexOf(this.method);
        } else {
            this.methodIndex = 0;
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.classIndex);
        dataOutputStream.writeShort(this.methodIndex);
    }
}
