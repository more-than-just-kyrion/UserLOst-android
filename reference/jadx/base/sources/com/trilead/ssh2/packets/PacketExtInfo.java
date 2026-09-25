package com.trilead.ssh2.packets;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PacketExtInfo {
    private final Map<String, String> extNameToValue;
    private byte[] payload;

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(7);
            typesWriter.writeUINT32(this.extNameToValue.size());
            for (Map.Entry<String, String> entry : this.extNameToValue.entrySet()) {
                typesWriter.writeString(entry.getKey());
                typesWriter.writeString(entry.getValue());
            }
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }

    public Map<String, String> getExtNameToValue() {
        return this.extNameToValue;
    }

    public PacketExtInfo(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 7) {
            throw new IOException("This is not a SSH_MSG_EXT_INFO! (" + i3 + ")");
        }
        int uint32 = typesReader.readUINT32();
        if (uint32 >= 1024) {
            throw new IOException("Too many entries in ext info packet");
        }
        HashMap map = new HashMap(uint32);
        for (int i4 = 0; i4 < uint32; i4++) {
            map.put(typesReader.readString(), typesReader.readString());
        }
        this.extNameToValue = Collections.unmodifiableMap(map);
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_EXT_INFO packet!");
        }
    }

    public PacketExtInfo(Map<String, String> map) {
        this.extNameToValue = Collections.unmodifiableMap(new HashMap(map));
    }
}
