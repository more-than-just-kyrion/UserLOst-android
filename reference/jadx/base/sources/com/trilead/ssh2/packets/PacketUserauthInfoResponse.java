package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthInfoResponse {
    byte[] payload;
    String[] responses;

    public PacketUserauthInfoResponse(String[] strArr) {
        this.responses = strArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(61);
            typesWriter.writeUINT32(this.responses.length);
            int i = 0;
            while (true) {
                String[] strArr = this.responses;
                if (i >= strArr.length) {
                    break;
                }
                typesWriter.writeString(strArr[i]);
                i++;
            }
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
