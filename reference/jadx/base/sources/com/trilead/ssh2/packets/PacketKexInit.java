package com.trilead.ssh2.packets;

import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.transport.KexParameters;
import java.io.IOException;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexInit {
    KexParameters kp;
    byte[] payload;

    public PacketKexInit(CryptoWishList cryptoWishList) {
        KexParameters kexParameters = new KexParameters();
        this.kp = kexParameters;
        kexParameters.cookie = new byte[16];
        new SecureRandom().nextBytes(this.kp.cookie);
        this.kp.kex_algorithms = cryptoWishList.kexAlgorithms;
        this.kp.server_host_key_algorithms = cryptoWishList.serverHostKeyAlgorithms;
        this.kp.encryption_algorithms_client_to_server = cryptoWishList.c2s_enc_algos;
        this.kp.encryption_algorithms_server_to_client = cryptoWishList.s2c_enc_algos;
        this.kp.mac_algorithms_client_to_server = cryptoWishList.c2s_mac_algos;
        this.kp.mac_algorithms_server_to_client = cryptoWishList.s2c_mac_algos;
        this.kp.compression_algorithms_client_to_server = cryptoWishList.c2s_comp_algos;
        this.kp.compression_algorithms_server_to_client = cryptoWishList.s2c_comp_algos;
        this.kp.languages_client_to_server = new String[0];
        this.kp.languages_server_to_client = new String[0];
        this.kp.first_kex_packet_follows = false;
        this.kp.reserved_field1 = 0;
    }

    public PacketKexInit(byte[] bArr, int i, int i2) throws IOException {
        this.kp = new KexParameters();
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 20) {
            throw new IOException("This is not a KexInitPacket! (" + i3 + ")");
        }
        this.kp.cookie = typesReader.readBytes(16);
        this.kp.kex_algorithms = typesReader.readNameList();
        this.kp.server_host_key_algorithms = typesReader.readNameList();
        this.kp.encryption_algorithms_client_to_server = typesReader.readNameList();
        this.kp.encryption_algorithms_server_to_client = typesReader.readNameList();
        this.kp.mac_algorithms_client_to_server = typesReader.readNameList();
        this.kp.mac_algorithms_server_to_client = typesReader.readNameList();
        this.kp.compression_algorithms_client_to_server = typesReader.readNameList();
        this.kp.compression_algorithms_server_to_client = typesReader.readNameList();
        this.kp.languages_client_to_server = typesReader.readNameList();
        this.kp.languages_server_to_client = typesReader.readNameList();
        this.kp.first_kex_packet_follows = typesReader.readBoolean();
        this.kp.reserved_field1 = typesReader.readUINT32();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in KexInitPacket!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(20);
            typesWriter.writeBytes(this.kp.cookie, 0, 16);
            typesWriter.writeNameList(this.kp.kex_algorithms);
            typesWriter.writeNameList(this.kp.server_host_key_algorithms);
            typesWriter.writeNameList(this.kp.encryption_algorithms_client_to_server);
            typesWriter.writeNameList(this.kp.encryption_algorithms_server_to_client);
            typesWriter.writeNameList(this.kp.mac_algorithms_client_to_server);
            typesWriter.writeNameList(this.kp.mac_algorithms_server_to_client);
            typesWriter.writeNameList(this.kp.compression_algorithms_client_to_server);
            typesWriter.writeNameList(this.kp.compression_algorithms_server_to_client);
            typesWriter.writeNameList(this.kp.languages_client_to_server);
            typesWriter.writeNameList(this.kp.languages_server_to_client);
            typesWriter.writeBoolean(this.kp.first_kex_packet_follows);
            typesWriter.writeUINT32(this.kp.reserved_field1);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }

    public KexParameters getKexParameters() {
        return this.kp;
    }

    public String[] getCompression_algorithms_client_to_server() {
        return this.kp.compression_algorithms_client_to_server;
    }

    public String[] getCompression_algorithms_server_to_client() {
        return this.kp.compression_algorithms_server_to_client;
    }

    public byte[] getCookie() {
        return this.kp.cookie;
    }

    public String[] getEncryption_algorithms_client_to_server() {
        return this.kp.encryption_algorithms_client_to_server;
    }

    public String[] getEncryption_algorithms_server_to_client() {
        return this.kp.encryption_algorithms_server_to_client;
    }

    public boolean isFirst_kex_packet_follows() {
        return this.kp.first_kex_packet_follows;
    }

    public String[] getKex_algorithms() {
        return this.kp.kex_algorithms;
    }

    public String[] getLanguages_client_to_server() {
        return this.kp.languages_client_to_server;
    }

    public String[] getLanguages_server_to_client() {
        return this.kp.languages_server_to_client;
    }

    public String[] getMac_algorithms_client_to_server() {
        return this.kp.mac_algorithms_client_to_server;
    }

    public String[] getMac_algorithms_server_to_client() {
        return this.kp.mac_algorithms_server_to_client;
    }

    public int getReserved_field1() {
        return this.kp.reserved_field1;
    }

    public String[] getServer_host_key_algorithms() {
        return this.kp.server_host_key_algorithms;
    }
}
