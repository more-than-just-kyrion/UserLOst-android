package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class RuntimeVisibleorInvisibleAnnotationsAttribute extends AnnotationsAttribute {
    private final AnnotationsAttribute.Annotation[] annotations;
    private final int numAnnotations;

    public RuntimeVisibleorInvisibleAnnotationsAttribute(CPUTF8 cputf8, AnnotationsAttribute.Annotation[] annotationArr) {
        super(cputf8);
        this.numAnnotations = annotationArr.length;
        this.annotations = annotationArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        int length = 2;
        for (int i = 0; i < this.numAnnotations; i++) {
            length += this.annotations[i].getLength();
        }
        return length;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.attributeName);
        for (AnnotationsAttribute.Annotation annotation : this.annotations) {
            arrayList.addAll(annotation.getClassFileEntries());
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        for (AnnotationsAttribute.Annotation annotation : this.annotations) {
            annotation.resolve(classConstantPool);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return this.attributeName.underlyingString() + ": " + this.numAnnotations + " annotations";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        int size = dataOutputStream.size();
        dataOutputStream.writeShort(this.numAnnotations);
        for (int i = 0; i < this.numAnnotations; i++) {
            this.annotations[i].writeBody(dataOutputStream);
        }
        if (dataOutputStream.size() - size != getLength()) {
            throw new Error();
        }
    }
}
