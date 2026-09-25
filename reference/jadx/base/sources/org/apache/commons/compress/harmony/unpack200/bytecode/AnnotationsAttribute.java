package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AnnotationsAttribute extends Attribute {

    public static class Annotation {
        private final CPUTF8[] elementNames;
        private final ElementValue[] elementValues;
        private int[] nameIndexes;
        private final int numPairs;
        private final CPUTF8 type;
        private int typeIndex;

        public Annotation(int i, CPUTF8 cputf8, CPUTF8[] cputf8Arr, ElementValue[] elementValueArr) {
            this.numPairs = i;
            this.type = cputf8;
            this.elementNames = cputf8Arr;
            this.elementValues = elementValueArr;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                CPUTF8[] cputf8Arr = this.elementNames;
                if (i < cputf8Arr.length) {
                    arrayList.add(cputf8Arr[i]);
                    arrayList.addAll(this.elementValues[i].getClassFileEntries());
                    i++;
                } else {
                    arrayList.add(this.type);
                    return arrayList;
                }
            }
        }

        public int getLength() {
            int length = 4;
            for (int i = 0; i < this.numPairs; i++) {
                length = length + 2 + this.elementValues[i].getLength();
            }
            return length;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            this.type.resolve(classConstantPool);
            this.typeIndex = classConstantPool.indexOf(this.type);
            this.nameIndexes = new int[this.numPairs];
            int i = 0;
            while (true) {
                CPUTF8[] cputf8Arr = this.elementNames;
                if (i >= cputf8Arr.length) {
                    return;
                }
                cputf8Arr[i].resolve(classConstantPool);
                this.nameIndexes[i] = classConstantPool.indexOf(this.elementNames[i]);
                this.elementValues[i].resolve(classConstantPool);
                i++;
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(this.typeIndex);
            dataOutputStream.writeShort(this.numPairs);
            for (int i = 0; i < this.numPairs; i++) {
                dataOutputStream.writeShort(this.nameIndexes[i]);
                this.elementValues[i].writeBody(dataOutputStream);
            }
        }
    }

    public static class ElementValue {
        private int constantValueIndex = -1;
        private final int tag;
        private final Object value;

        public ElementValue(int i, Object obj) {
            this.tag = i;
            this.value = obj;
        }

        public List<Object> getClassFileEntries() {
            ArrayList arrayList = new ArrayList(1);
            Object obj = this.value;
            if (obj instanceof CPNameAndType) {
                arrayList.add(((CPNameAndType) obj).name);
                arrayList.add(((CPNameAndType) this.value).descriptor);
            } else if (obj instanceof ClassFileEntry) {
                arrayList.add(obj);
            } else if (obj instanceof ElementValue[]) {
                for (ElementValue elementValue : (ElementValue[]) obj) {
                    arrayList.addAll(elementValue.getClassFileEntries());
                }
            } else if (obj instanceof Annotation) {
                arrayList.addAll(((Annotation) obj).getClassFileEntries());
            }
            return arrayList;
        }

        public int getLength() {
            int i = this.tag;
            if (i == 64) {
                return ((Annotation) this.value).getLength() + 1;
            }
            int length = 3;
            if (i != 70 && i != 83 && i != 99) {
                if (i == 101) {
                    return 5;
                }
                if (i != 115 && i != 73 && i != 74 && i != 90) {
                    if (i == 91) {
                        for (ElementValue elementValue : (ElementValue[]) this.value) {
                            length += elementValue.getLength();
                        }
                        return length;
                    }
                    switch (i) {
                        case 66:
                        case 67:
                        case 68:
                            break;
                        default:
                            return 0;
                    }
                }
            }
            return 3;
        }

        public void resolve(ClassConstantPool classConstantPool) {
            Object obj = this.value;
            if (obj instanceof CPConstant) {
                ((CPConstant) obj).resolve(classConstantPool);
                this.constantValueIndex = classConstantPool.indexOf((CPConstant) this.value);
                return;
            }
            if (obj instanceof CPClass) {
                ((CPClass) obj).resolve(classConstantPool);
                this.constantValueIndex = classConstantPool.indexOf((CPClass) this.value);
                return;
            }
            if (obj instanceof CPUTF8) {
                ((CPUTF8) obj).resolve(classConstantPool);
                this.constantValueIndex = classConstantPool.indexOf((CPUTF8) this.value);
                return;
            }
            if (obj instanceof CPNameAndType) {
                ((CPNameAndType) obj).resolve(classConstantPool);
                return;
            }
            if (obj instanceof Annotation) {
                ((Annotation) obj).resolve(classConstantPool);
                return;
            }
            if (obj instanceof ElementValue[]) {
                for (ElementValue elementValue : (ElementValue[]) obj) {
                    elementValue.resolve(classConstantPool);
                }
            }
        }

        public void writeBody(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeByte(this.tag);
            int i = this.constantValueIndex;
            if (i != -1) {
                dataOutputStream.writeShort(i);
                return;
            }
            Object obj = this.value;
            if (obj instanceof CPNameAndType) {
                ((CPNameAndType) obj).writeBody(dataOutputStream);
                return;
            }
            if (obj instanceof Annotation) {
                ((Annotation) obj).writeBody(dataOutputStream);
                return;
            }
            if (obj instanceof ElementValue[]) {
                ElementValue[] elementValueArr = (ElementValue[]) obj;
                dataOutputStream.writeShort(elementValueArr.length);
                for (ElementValue elementValue : elementValueArr) {
                    elementValue.writeBody(dataOutputStream);
                }
                return;
            }
            throw new Error("");
        }
    }

    public AnnotationsAttribute(CPUTF8 cputf8) {
        super(cputf8);
    }
}
