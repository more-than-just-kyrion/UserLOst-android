package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RuntimeVisibleorInvisibleParameterAnnotationsAttribute extends AnnotationsAttribute {
    private final int numParameters;
    private final ParameterAnnotation[] parameterAnnotations;

    public static class ParameterAnnotation {
        private final AnnotationsAttribute.Annotation[] annotations;
        private final int numAnnotations;

        public ParameterAnnotation(AnnotationsAttribute.Annotation[] annotationArr) {
            this.numAnnotations = annotationArr.length;
            this.annotations = annotationArr;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList();
            for (AnnotationsAttribute.Annotation annotation : this.annotations) {
                arrayList.addAll(annotation.getClassFileEntries());
            }
            return arrayList;
        }

        public int getLength() {
            int length = 2;
            for (AnnotationsAttribute.Annotation annotation : this.annotations) {
                length += annotation.getLength();
            }
            return length;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            for (AnnotationsAttribute.Annotation annotation : this.annotations) {
                annotation.resolve(classConstantPool);
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.numAnnotations);
            for (AnnotationsAttribute.Annotation annotation : this.annotations) {
                annotation.writeBody(dataOutputStream);
            }
        }
    }

    public RuntimeVisibleorInvisibleParameterAnnotationsAttribute(CPUTF8 cputf8, ParameterAnnotation[] parameterAnnotationArr) {
        super(cputf8);
        this.numParameters = parameterAnnotationArr.length;
        this.parameterAnnotations = parameterAnnotationArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        int length = 1;
        for (int i = 0; i < this.numParameters; i++) {
            length += this.parameterAnnotations[i].getLength();
        }
        return length;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.attributeName);
        for (ParameterAnnotation parameterAnnotation : this.parameterAnnotations) {
            arrayList.addAll(parameterAnnotation.getClassFileEntries());
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        for (ParameterAnnotation parameterAnnotation : this.parameterAnnotations) {
            parameterAnnotation.resolve(classConstantPool);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return this.attributeName.underlyingString() + ": " + this.numParameters + " parameter annotations";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.numParameters);
        for (int i = 0; i < this.numParameters; i++) {
            this.parameterAnnotations[i].writeBody(dataOutputStream);
        }
    }
}
