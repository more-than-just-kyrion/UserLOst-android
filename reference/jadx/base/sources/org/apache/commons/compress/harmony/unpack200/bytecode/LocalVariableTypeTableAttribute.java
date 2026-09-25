package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;

/* JADX INFO: loaded from: classes3.dex */
public class LocalVariableTypeTableAttribute extends BCIRenumberedAttribute {
    private static CPUTF8 attributeName;
    private int codeLength;
    private final int[] indexes;
    private final int[] lengths;
    private final int localVariableTypeTableLength;
    private int[] nameIndexes;
    private final CPUTF8[] names;
    private int[] signatureIndexes;
    private final CPUTF8[] signatures;
    private final int[] startPcs;

    public static void setAttributeName(CPUTF8 cputf8) {
        attributeName = cputf8;
    }

    public LocalVariableTypeTableAttribute(int i, int[] iArr, int[] iArr2, CPUTF8[] cputf8Arr, CPUTF8[] cputf8Arr2, int[] iArr3) {
        super(attributeName);
        this.localVariableTypeTableLength = i;
        this.startPcs = iArr;
        this.lengths = iArr2;
        this.names = cputf8Arr;
        this.signatures = cputf8Arr2;
        this.indexes = iArr3;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        return (this.localVariableTypeTableLength * 10) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getAttributeName());
        for (int i = 0; i < this.localVariableTypeTableLength; i++) {
            arrayList.add(this.names[i]);
            arrayList.add(this.signatures[i]);
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    protected int[] getStartPCs() {
        return this.startPcs;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(List<Integer> list) throws Pack200Exception {
        int[] iArr = this.startPcs;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        super.renumber(list);
        int i = this.codeLength;
        int i2 = 0;
        while (true) {
            int[] iArr2 = this.lengths;
            if (i2 >= iArr2.length) {
                return;
            }
            int i3 = this.startPcs[i2];
            int i4 = iArrCopyOf[i2] + iArr2[i2];
            if (i4 < 0) {
                throw new Pack200Exception("Error renumbering bytecode indexes");
            }
            this.lengths[i2] = i4 == list.size() ? i - i3 : list.get(i4).intValue() - i3;
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        int i = this.localVariableTypeTableLength;
        this.nameIndexes = new int[i];
        this.signatureIndexes = new int[i];
        for (int i2 = 0; i2 < this.localVariableTypeTableLength; i2++) {
            this.names[i2].resolve(classConstantPool);
            this.signatures[i2].resolve(classConstantPool);
            this.nameIndexes[i2] = classConstantPool.indexOf(this.names[i2]);
            this.signatureIndexes[i2] = classConstantPool.indexOf(this.signatures[i2]);
        }
    }

    public void setCodeLength(int i) {
        this.codeLength = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "LocalVariableTypeTable: " + this.localVariableTypeTableLength + " varaibles";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.localVariableTypeTableLength);
        for (int i = 0; i < this.localVariableTypeTableLength; i++) {
            dataOutputStream.writeShort(this.startPcs[i]);
            dataOutputStream.writeShort(this.lengths[i]);
            dataOutputStream.writeShort(this.nameIndexes[i]);
            dataOutputStream.writeShort(this.signatureIndexes[i]);
            dataOutputStream.writeShort(this.indexes[i]);
        }
    }
}
