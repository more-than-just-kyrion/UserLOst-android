package com.trilead.ssh2.compression;

/* JADX INFO: loaded from: classes2.dex */
public class ZlibOpenSSH extends Zlib {
    @Override // com.trilead.ssh2.compression.Zlib, com.trilead.ssh2.compression.ICompressor
    public boolean canCompressPreauth() {
        return false;
    }
}
