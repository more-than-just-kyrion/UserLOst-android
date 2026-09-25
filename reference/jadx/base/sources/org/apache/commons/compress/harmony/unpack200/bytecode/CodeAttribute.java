package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.compress.harmony.unpack200.Segment;

/* JADX INFO: loaded from: classes3.dex */
public class CodeAttribute extends BCIRenumberedAttribute {
    private static CPUTF8 attributeName;
    public List<Attribute> attributes;
    public List<Integer> byteCodeOffsets;
    public List<ByteCode> byteCodes;
    public int codeLength;
    public List<ExceptionTableEntry> exceptionTable;
    public int maxLocals;
    public int maxStack;

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    protected int[] getStartPCs() {
        return null;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        attributeName = cputf8;
    }

    public CodeAttribute(int i, int i2, byte[] bArr, Segment segment, OperandManager operandManager, List<ExceptionTableEntry> list) {
        super(attributeName);
        this.attributes = new ArrayList();
        this.byteCodeOffsets = new ArrayList();
        this.byteCodes = new ArrayList();
        this.maxLocals = i2;
        this.maxStack = i;
        int i3 = 0;
        this.codeLength = 0;
        this.exceptionTable = list;
        this.byteCodeOffsets.add(0);
        int i4 = 0;
        while (i3 < bArr.length) {
            ByteCode byteCode = ByteCode.getByteCode(bArr[i3] & 255);
            byteCode.setByteCodeIndex(i4);
            int i5 = i4 + 1;
            byteCode.extractOperands(operandManager, segment, this.codeLength);
            this.byteCodes.add(byteCode);
            this.codeLength += byteCode.getLength();
            List<Integer> list2 = this.byteCodeOffsets;
            int iIntValue = list2.get(list2.size() - 1).intValue();
            if (byteCode.hasMultipleByteCodes()) {
                this.byteCodeOffsets.add(Integer.valueOf(iIntValue + 1));
                i4 += 2;
            } else {
                i4 = i5;
            }
            if (i3 < bArr.length - 1) {
                this.byteCodeOffsets.add(Integer.valueOf(iIntValue + byteCode.getLength()));
            }
            if (byteCode.getOpcode() == 196) {
                i3++;
            }
            i3++;
        }
        Iterator<ByteCode> it = this.byteCodes.iterator();
        while (it.hasNext()) {
            it.next().applyByteCodeTargetFixup(this);
        }
    }

    public void addAttribute(Attribute attribute) {
        this.attributes.add(attribute);
        if (attribute instanceof LocalVariableTableAttribute) {
            ((LocalVariableTableAttribute) attribute).setCodeLength(this.codeLength);
        }
        if (attribute instanceof LocalVariableTypeTableAttribute) {
            ((LocalVariableTypeTableAttribute) attribute).setCodeLength(this.codeLength);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected int getLength() {
        Iterator<Attribute> it = this.attributes.iterator();
        int lengthIncludingHeader = 0;
        while (it.hasNext()) {
            lengthIncludingHeader += it.next().getLengthIncludingHeader();
        }
        return this.codeLength + 10 + (this.exceptionTable.size() * 8) + 2 + lengthIncludingHeader;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    protected ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList(this.attributes.size() + this.byteCodes.size() + 10);
        arrayList.add(getAttributeName());
        arrayList.addAll(this.byteCodes);
        arrayList.addAll(this.attributes);
        Iterator<ExceptionTableEntry> it = this.exceptionTable.iterator();
        while (it.hasNext()) {
            CPClass catchType = it.next().getCatchType();
            if (catchType != null) {
                arrayList.add(catchType);
            }
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(final List<Integer> list) {
        this.exceptionTable.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ExceptionTableEntry) obj).renumber(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(final ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.attributes.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Attribute) obj).resolve(classConstantPool);
            }
        });
        this.byteCodes.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ByteCode) obj).resolve(classConstantPool);
            }
        });
        this.exceptionTable.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ExceptionTableEntry) obj).resolve(classConstantPool);
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Code: " + getLength() + " bytes";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.maxStack);
        dataOutputStream.writeShort(this.maxLocals);
        dataOutputStream.writeInt(this.codeLength);
        Iterator<ByteCode> it = this.byteCodes.iterator();
        while (it.hasNext()) {
            it.next().write(dataOutputStream);
        }
        dataOutputStream.writeShort(this.exceptionTable.size());
        Iterator<ExceptionTableEntry> it2 = this.exceptionTable.iterator();
        while (it2.hasNext()) {
            it2.next().write(dataOutputStream);
        }
        dataOutputStream.writeShort(this.attributes.size());
        Iterator<Attribute> it3 = this.attributes.iterator();
        while (it3.hasNext()) {
            it3.next().write(dataOutputStream);
        }
    }
}
