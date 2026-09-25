package com.trilead.ssh2.crypto;

import com.trilead.ssh2.compression.CompressionFactory;
import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.digest.MACs;
import com.trilead.ssh2.transport.KexManager;

/* JADX INFO: loaded from: classes2.dex */
public class CryptoWishList implements Cloneable {
    public String[] c2s_comp_algos;
    public String[] c2s_enc_algos;
    public String[] c2s_mac_algos;
    public String[] kexAlgorithms;
    public String[] s2c_comp_algos;
    public String[] s2c_enc_algos;
    public String[] s2c_mac_algos;
    public String[] serverHostKeyAlgorithms;

    public CryptoWishList() {
        this.kexAlgorithms = KexManager.getDefaultKexAlgorithmList();
        this.serverHostKeyAlgorithms = KexManager.getDefaultServerHostkeyAlgorithmList();
        this.c2s_enc_algos = BlockCipherFactory.getDefaultCipherList();
        this.s2c_enc_algos = BlockCipherFactory.getDefaultCipherList();
        this.c2s_mac_algos = MACs.getMacList();
        this.s2c_mac_algos = MACs.getMacList();
        this.c2s_comp_algos = CompressionFactory.getDefaultCompressorList();
        this.s2c_comp_algos = CompressionFactory.getDefaultCompressorList();
    }

    public CryptoWishList(CryptoWishList cryptoWishList) {
        this.kexAlgorithms = (String[]) cryptoWishList.kexAlgorithms.clone();
        this.serverHostKeyAlgorithms = (String[]) cryptoWishList.serverHostKeyAlgorithms.clone();
        this.c2s_enc_algos = (String[]) cryptoWishList.c2s_enc_algos.clone();
        this.s2c_enc_algos = (String[]) cryptoWishList.s2c_enc_algos.clone();
        this.c2s_mac_algos = (String[]) cryptoWishList.c2s_mac_algos.clone();
        this.s2c_mac_algos = (String[]) cryptoWishList.s2c_mac_algos.clone();
        this.c2s_comp_algos = (String[]) cryptoWishList.c2s_comp_algos.clone();
        this.s2c_comp_algos = (String[]) cryptoWishList.s2c_comp_algos.clone();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CryptoWishList m297clone() {
        return new CryptoWishList(this);
    }
}
