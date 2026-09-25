package com.trilead.ssh2.crypto.cipher;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BlockCipherFactory {
    private static final ArrayList<CipherEntry> ciphers;

    private static class CipherEntry {
        final int blocksize;
        final String cipherClass;
        final int keysize;
        final String type;

        CipherEntry(String str, int i, int i2, String str2) {
            this.type = str;
            this.blocksize = i;
            this.keysize = i2;
            this.cipherClass = str2;
        }
    }

    static {
        ArrayList<CipherEntry> arrayList = new ArrayList<>();
        ciphers = arrayList;
        arrayList.add(new CipherEntry("aes256-ctr", 16, 32, "com.trilead.ssh2.crypto.cipher.AES$CTR"));
        arrayList.add(new CipherEntry("aes128-ctr", 16, 16, "com.trilead.ssh2.crypto.cipher.AES$CTR"));
        arrayList.add(new CipherEntry("blowfish-ctr", 8, 16, "com.trilead.ssh2.crypto.cipher.BlowFish$CTR"));
        arrayList.add(new CipherEntry("aes256-cbc", 16, 32, "com.trilead.ssh2.crypto.cipher.AES$CBC"));
        arrayList.add(new CipherEntry("aes128-cbc", 16, 16, "com.trilead.ssh2.crypto.cipher.AES$CBC"));
        arrayList.add(new CipherEntry("blowfish-cbc", 8, 16, "com.trilead.ssh2.crypto.cipher.BlowFish$CBC"));
        arrayList.add(new CipherEntry("3des-ctr", 8, 24, "com.trilead.ssh2.crypto.cipher.DESede$CTR"));
        arrayList.add(new CipherEntry("3des-cbc", 8, 24, "com.trilead.ssh2.crypto.cipher.DESede$CBC"));
    }

    public static String[] getDefaultCipherList() {
        String[] strArr = new String[ciphers.size()];
        int i = 0;
        while (true) {
            ArrayList<CipherEntry> arrayList = ciphers;
            if (i >= arrayList.size()) {
                return strArr;
            }
            strArr[i] = arrayList.get(i).type;
            i++;
        }
    }

    public static void checkCipherList(String[] strArr) {
        for (String str : strArr) {
            getEntry(str);
        }
    }

    public static BlockCipher createCipher(String str, boolean z, byte[] bArr, byte[] bArr2) {
        try {
            BlockCipher blockCipher = (BlockCipher) Class.forName(getEntry(str).cipherClass).getConstructor(new Class[0]).newInstance(new Object[0]);
            blockCipher.init(z, bArr, bArr2);
            return blockCipher;
        } catch (Exception e) {
            throw new IllegalArgumentException("Cannot instantiate " + str, e);
        }
    }

    private static CipherEntry getEntry(String str) {
        for (CipherEntry cipherEntry : ciphers) {
            if (cipherEntry.type.equals(str)) {
                return cipherEntry;
            }
        }
        throw new IllegalArgumentException("Unknown algorithm " + str);
    }

    public static int getBlockSize(String str) {
        return getEntry(str).blocksize;
    }

    public static int getKeySize(String str) {
        return getEntry(str).keysize;
    }
}
