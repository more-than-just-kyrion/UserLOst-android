package org.apache.commons.compress.harmony.pack200;

import org.objectweb.asm.ClassReader;

/* JADX INFO: loaded from: classes3.dex */
public class Pack200ClassReader extends ClassReader {
    private boolean anySyntheticAttributes;
    private String fileName;
    private boolean lastConstantHadWideIndex;
    private int lastUnsignedShort;

    public Pack200ClassReader(byte[] bArr) {
        super(bArr);
    }

    public String getFileName() {
        return this.fileName;
    }

    public boolean hasSyntheticAttributes() {
        return this.anySyntheticAttributes;
    }

    public boolean lastConstantHadWideIndex() {
        return this.lastConstantHadWideIndex;
    }

    public Object readConst(int i, char[] cArr) {
        this.lastConstantHadWideIndex = i == this.lastUnsignedShort;
        return super.readConst(i, cArr);
    }

    public int readUnsignedShort(int i) {
        int unsignedShort = super.readUnsignedShort(i);
        if (i > 0 && this.b[i - 1] == 19) {
            this.lastUnsignedShort = unsignedShort;
        } else {
            this.lastUnsignedShort = -32768;
        }
        return unsignedShort;
    }

    public String readUTF8(int i, char[] cArr) {
        String utf8 = super.readUTF8(i, cArr);
        if (!this.anySyntheticAttributes && "Synthetic".equals(utf8)) {
            this.anySyntheticAttributes = true;
        }
        return utf8;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }
}
