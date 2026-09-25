package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CPUTF8 extends ConstantPoolEntry {
    private int cachedHashCode;
    private boolean hashCodeComputed;
    private final String utf8;

    public CPUTF8(String str) {
        this(str, -1);
    }

    public CPUTF8(String str, int i) {
        super((byte) 1, i);
        this.utf8 = (String) Objects.requireNonNull(str, "utf8");
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.utf8.equals(((CPUTF8) obj).utf8);
        }
        return false;
    }

    private void generateHashCode() {
        this.hashCodeComputed = true;
        this.cachedHashCode = this.utf8.hashCode() + 31;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.hashCodeComputed) {
            generateHashCode();
        }
        return this.cachedHashCode;
    }

    public void setGlobalIndex(int i) {
        this.globalIndex = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return StandardCharsets.UTF_8.name() + ":" + this.utf8;
    }

    public String underlyingString() {
        return this.utf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    protected void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeUTF(this.utf8);
    }
}
