package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ExceptionTableEntry {
    private final CPClass catchType;
    private int catchTypeIndex;
    private final int endPC;
    private int endPcRenumbered;
    private final int handlerPC;
    private int handlerPcRenumbered;
    private final int startPC;
    private int startPcRenumbered;

    public ExceptionTableEntry(int i, int i2, int i3, CPClass cPClass) {
        this.startPC = i;
        this.endPC = i2;
        this.handlerPC = i3;
        this.catchType = cPClass;
    }

    public CPClass getCatchType() {
        return this.catchType;
    }

    public void renumber(List<Integer> list) {
        this.startPcRenumbered = list.get(this.startPC).intValue();
        int i = this.startPC + this.endPC;
        this.endPcRenumbered = list.get(i).intValue();
        this.handlerPcRenumbered = list.get(i + this.handlerPC).intValue();
    }

    public void resolve(ClassConstantPool classConstantPool) {
        CPClass cPClass = this.catchType;
        if (cPClass == null) {
            this.catchTypeIndex = 0;
        } else {
            cPClass.resolve(classConstantPool);
            this.catchTypeIndex = classConstantPool.indexOf(this.catchType);
        }
    }

    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.startPcRenumbered);
        dataOutputStream.writeShort(this.endPcRenumbered);
        dataOutputStream.writeShort(this.handlerPcRenumbered);
        dataOutputStream.writeShort(this.catchTypeIndex);
    }
}
