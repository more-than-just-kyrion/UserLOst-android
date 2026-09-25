package org.apache.commons.compress.harmony.pack200;

/* JADX INFO: loaded from: classes3.dex */
public class CPMethodOrField extends ConstantPoolEntry implements Comparable {
    private final CPClass className;
    private int indexInClass = -1;
    private int indexInClassForConstructor = -1;
    private final CPNameAndType nameAndType;

    public CPMethodOrField(CPClass cPClass, CPNameAndType cPNameAndType) {
        this.className = cPClass;
        this.nameAndType = cPNameAndType;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof CPMethodOrField)) {
            return 0;
        }
        CPMethodOrField cPMethodOrField = (CPMethodOrField) obj;
        int iCompareTo = this.className.compareTo(cPMethodOrField.className);
        return iCompareTo == 0 ? this.nameAndType.compareTo(cPMethodOrField.nameAndType) : iCompareTo;
    }

    public int getClassIndex() {
        return this.className.getIndex();
    }

    public CPClass getClassName() {
        return this.className;
    }

    public CPNameAndType getDesc() {
        return this.nameAndType;
    }

    public int getDescIndex() {
        return this.nameAndType.getIndex();
    }

    public int getIndexInClass() {
        return this.indexInClass;
    }

    public int getIndexInClassForConstructor() {
        return this.indexInClassForConstructor;
    }

    public void setIndexInClass(int i) {
        this.indexInClass = i;
    }

    public void setIndexInClassForConstructor(int i) {
        this.indexInClassForConstructor = i;
    }

    public String toString() {
        return this.className + ": " + this.nameAndType;
    }
}
