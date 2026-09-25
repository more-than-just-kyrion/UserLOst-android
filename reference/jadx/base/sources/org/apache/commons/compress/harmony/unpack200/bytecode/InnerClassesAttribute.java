package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InnerClassesAttribute extends Attribute {
    private static CPUTF8 attributeName;
    private final List<InnerClassesEntry> innerClasses;
    private final List<ConstantPoolEntry> nestedClassFileEntries;

    private static final class InnerClassesEntry {
        int innerClassAccessFlags;
        CPClass innerClassInfo;
        CPUTF8 innerClassName;
        CPClass outerClassInfo;
        int innerClassInfoIndex = -1;
        int outerClassInfoIndex = -1;
        int innerNameIndex = -1;

        InnerClassesEntry(CPClass cPClass, CPClass cPClass2, CPUTF8 cputf8, int i) {
            this.innerClassInfo = cPClass;
            this.outerClassInfo = cPClass2;
            this.innerClassName = cputf8;
            this.innerClassAccessFlags = i;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            CPClass cPClass = this.innerClassInfo;
            if (cPClass != null) {
                cPClass.resolve(classConstantPool);
                this.innerClassInfoIndex = classConstantPool.indexOf(this.innerClassInfo);
            } else {
                this.innerClassInfoIndex = 0;
            }
            CPUTF8 cputf8 = this.innerClassName;
            if (cputf8 != null) {
                cputf8.resolve(classConstantPool);
                this.innerNameIndex = classConstantPool.indexOf(this.innerClassName);
            } else {
                this.innerNameIndex = 0;
            }
            CPClass cPClass2 = this.outerClassInfo;
            if (cPClass2 != null) {
                cPClass2.resolve(classConstantPool);
                this.outerClassInfoIndex = classConstantPool.indexOf(this.outerClassInfo);
            } else {
                this.outerClassInfoIndex = 0;
            }
        }

        public void write(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.innerClassInfoIndex);
            dataOutputStream.writeShort(this.outerClassInfoIndex);
            dataOutputStream.writeShort(this.innerNameIndex);
            dataOutputStream.writeShort(this.innerClassAccessFlags);
        }
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        attributeName = cputf8;
    }

    public InnerClassesAttribute(String str) {
        super(attributeName);
        this.innerClasses = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.nestedClassFileEntries = arrayList;
        arrayList.add(getAttributeName());
    }

    public void addInnerClassesEntry(CPClass cPClass, CPClass cPClass2, CPUTF8 cputf8, int i) {
        if (cPClass != null) {
            this.nestedClassFileEntries.add(cPClass);
        }
        if (cPClass2 != null) {
            this.nestedClassFileEntries.add(cPClass2);
        }
        if (cputf8 != null) {
            this.nestedClassFileEntries.add(cputf8);
        }
        addInnerClassesEntry(new InnerClassesEntry(cPClass, cPClass2, cputf8, i));
    }

    private void addInnerClassesEntry(InnerClassesEntry innerClassesEntry) {
        this.innerClasses.add(innerClassesEntry);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected void doWrite(DataOutputStream dataOutputStream) throws IOException {
        super.doWrite(dataOutputStream);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        InnerClassesAttribute innerClassesAttribute = (InnerClassesAttribute) obj;
        if (getAttributeName() == null) {
            if (innerClassesAttribute.getAttributeName() != null) {
                return false;
            }
        } else if (!getAttributeName().equals(innerClassesAttribute.getAttributeName())) {
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        return (this.innerClasses.size() * 8) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        return (ClassFileEntry[]) this.nestedClassFileEntries.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return (super.hashCode() * 31) + (getAttributeName() == null ? 0 : getAttributeName().hashCode());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        Iterator<InnerClassesEntry> it = this.innerClasses.iterator();
        while (it.hasNext()) {
            it.next().resolve(classConstantPool);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "InnerClasses: " + getAttributeName();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.innerClasses.size());
        Iterator<InnerClassesEntry> it = this.innerClasses.iterator();
        while (it.hasNext()) {
            it.next().write(dataOutputStream);
        }
    }
}
