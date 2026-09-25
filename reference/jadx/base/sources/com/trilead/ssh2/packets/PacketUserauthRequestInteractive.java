package com.trilead.ssh2.packets;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthRequestInteractive {
    byte[] payload;
    String serviceName;
    String[] submethods;
    String userName;

    public PacketUserauthRequestInteractive(String str, String str2, String[] strArr) {
        this.serviceName = str;
        this.userName = str2;
        this.submethods = strArr;
    }

    public byte[] getPayload() throws UnsupportedEncodingException {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(50);
            typesWriter.writeString(this.userName, "UTF-8");
            typesWriter.writeString(this.serviceName);
            typesWriter.writeString("keyboard-interactive");
            typesWriter.writeString("");
            typesWriter.writeNameList(this.submethods);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
